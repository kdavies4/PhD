#!/usr/bin/env python
"""Create a p-rho diagram of water, where rho is concentration (N/L3).
"""
__author__ = "Kevin L. Davies"
__version__ = "2011/9/30"
__email__ = "kld@alumni.carnegiemellon.edu"

import numpy as np
import matplotlib.pyplot as plt
import sys, os.path
sys.path.append("/home/kld/Documents/Dymola/FCSys/lib/Python")

from easygui import diropenbox
from res import save_figs, load_csv

# Units
# See FCSys.Units.
s = 1 # second
m = 1E-3 # meter
S = 1E3 # siemen
Wb = 1E-3 # weber
C = Wb*S # coulomb
V = Wb/s # volt
J = V*C # joule
mol = 96485.3399*C # mole; value from "Faraday constant" (NIST2009)
K = 8.314472*J/mol # kelvin; value from "gas constant" (NIST2009)
# Here, temperature is a potential.
Sv = (m/s)**2 # sievert
kSv = 1e3*Sv # kilosievert
kg = J/Sv # kilogram
g = 1E-3*kg # gram
Pa = J/m**3 # pascale
kPa = 1000*Pa # kilopascal
MPa = 1000*kPa # megapascal
bar = 100*kPa # bar
atm = 101325*Pa # atm; value from "standard atmosphere" (NIST2009)
mm = 1E-3*m # millimeter

# Other global constants
mass = 0.01801528*kg/mol # Specific mass (McBride2002)
n_c = mol/(56.0e-6*m**3) # Critical concentration (KayeLabyOnline2005)
theta2_c = 647.096*K/mass # Critical thermal potential (KayeLabyOnline2005)
P_c = 22.064*MPa/mass # Critical pressure (KayeLabyOnline2005)

# Settings
output_dir = diropenbox("Choose the output folder",
                        default='/home/kld/Documents/LaTeX/Dissertation/Figures')
if not output_dir:
    exit() # The user clicked "Cancel".
p_max = 15*MPa # Maximum relative pressure to evaluate
n_min = 0.1*C/m**3 # Minimum concentration to evaluate (zero causes division by zero)
# Note: 0.2693 mol/m3 is the concentration of saturated gas at 0.01 deg C.
num_pts = 200 # Number of evaluation points per isotherm

# Note: Below, concentration (n) has dimensionality number/volume,  pressure (P) has
# dimensionality number/(distance*time^2), thermal potential (theta^2 or theta2)
# has dimensionality distance^2/time^2, relative pressure (p) has dimensionality
# mass/(distance*time^2)temperature (T) has dimensionality
# mass*distance^2/(time^2*number).  Thermal velocity (theta) is taken as the
# velocity along along one dimension (T = m*theta^2).  Here, this approach may
# seem cumbersome, but it helps with the model.
def n_l(theta2):
    """Return concentration of liquid as a function of thermal potential.
    """
    # Takenaka1990 (at 101325 Pa, valid for 0 to 85 deg C)
    return (999.9734 - (theta2 - 277.13152*K/mass)**2
                       *(theta2 + 123.03534*K/mass)*(theta2 - 240.86147*K/mass)
                       /(609.6448*(K/mass)**2*(theta2 - 190.02667*K/mass)
                         *(theta2 - 242.90545*K/mass)))*kg/m**3/mass

def P_g(n, theta2):
    """Return pressure of gas as a function of concentration and thermal potential.
    """
    # Ideal gas
    #return n*theta2
    # From KayeLabyOnline2005
    return (1 + 1e-6*m**3/mol*(33 - 15.2*np.exp(1300.7*K/mass/theta2))*n)*n*theta2

    # In KayeLabyOnline2005, P = (1 + B*n)*theta2
    # = ((1 + (a - b*exp(c/mass/theta2))*n)*n*theta2.

def n_g(P, theta2):
    """Return concentration of gas as a function of pressure and temperature.

    This is the inverse of P_g(n, theta2) with respect to P and n.
    """
    #return P/theta2 # Ideal gas
    a = 1e-6*m**3/mol*(33 - 15.2*np.exp(1300.7*K/mass/theta2))
    # Based on the inverse of KayeLabyOnline2005
    return (np.sqrt(0.25 + a*P/theta2) - 0.5)/a
    # From KayeLabyOnline2005,
    # 0 = 1e-6*m**3/mol*(33 - 15.2*exp(1300.7*K/m/theta2))*n**2 + n - P/theta2,
    # which can be solved by the quadratic equation.  By graphical inspection,
    # the positive root gives the correct results.

def P_sat(theta2):
    """Return saturation pressure as a function of thermal potential.
    """
    # From Modelica.Media.Air.MoistAir (valid for 273.16K <= T <= 373.16K)
    #return 611.657*np.exp(17.2799 - 4102.99*K/(T - 35.719*K))

    # From Springer1991, Eq. 15
    #return 101325*np.exp(np.log(10)*(-20.04328416 + 0.112053341*T/K
    #                                 - 0.00021028*(T/K)**2 + 1.4454e-7*(T/K)**3))

    # From KayeLabyOnline2005:
    tau = 1 - theta2/theta2_c
    sqrttau = np.sqrt(tau)
    tau2 = tau**2
    return P_c*np.exp((((1.80122502*tau*tau2*sqrttau - 15.9618719)*tau
                        + 22.6807411*sqrttau - 11.7866497)*tau2
                        + 1.84408259*sqrttau - 7.85951783)*tau*theta2_c/theta2)

    # Note: From graphical inspection, KayeLabyOnline2005 is more accurate than
    # both Modelica and Springer1991 over over the range
    # 273.16K <= T <= 323.16K.  Modelica is more accurate than Springer1991 over
    # the range of 273.16K <= T <= 323.16K, but less accurate over the range of
    # 373.16K <= T <= 423.16K.

# Load tabulated data.
data = load_csv("dModel-H2O.csv", header_row=22, types=[float for i in range(8)])
theta2s = data['Therm. spec. en. / kSv']*kSv # Thermal potential

# Model.
Ps = np.zeros((theta2s.shape[0], num_pts)) # For pressure
ns = np.zeros((theta2s.shape[0], num_pts)) # For concentration
for i, theta2 in enumerate(theta2s):
    Psat = P_sat(theta2)
    # Start at low concentration.
    ns[i][0] = n_min
    # Introduce an array of pressures up to saturation pressure.
    # Greater resolution is needed at higher concentrations.
    Ps[i][0:num_pts-2] = np.logspace(np.log10(P_g(ns[i][0], theta2)),
                                     np.log10(Psat), num_pts - 2)
    # Determine the concentrations at those pressures.
    ns[i][0:num_pts-2] = n_g(Ps[i][0:num_pts-2], theta2)
    # Go to the saturated liquid point and then the maximum pressure point,
    # assuming the liquid is incompressible.
    Ps[i][num_pts-2] = Psat
    Ps[i][num_pts-1] = p_max/mass
    ns[i][num_pts-2::] = np.tile(n_l(theta2), (1, 2))

#psat=1*bar*np.exp((g0l(theta2)-g0(theta2))/theta2);
#psat/1*bar = np.exp((g0l(theta2)-g0(theta2))/theta2);

"""
dg = -s*dT + v*dp
Traditional approach:
Consider the system of gas and liquid.  The gas and liquid are at the same
temperature and pressure, therefore the difference in Gibbs energy between the
two must be zero.  At 1 bar and the actual temperature, we know the Gibbs
energies of the gas and the liquid.  The change in Gibbs energy from the 1bar to
the actual pressure is g - g0 = Integral(v*dp, p0, p), where v is, in general, a
function of temperature and pressure.  Now we have:
g_g = g_l
g_0g + g_g - g_0g = g_0l + g_l - g_0l
g_0g - Integral(v_g*dp, p0, p) = g_0l - Integral(v_l*dp, p0, p)
g_0g(T) - Integral(v_g(p, T)*dp, p0, p) = g_0l(T) - Integral(v_l(p, T)*dp, p0, p)
or, equivalently:
g_0g(theta2) - Integral(dP/n_g(P, theta2), P0, P)
    = g_0l(theta2) - Integral(dP/n_l(P, theta2), P0, P)
We solve for p, knowing everything else.  That p is the saturation pressure.


need:
1) equation for n_sat_g(theta2)
   This is the type II virial EOS evaluated at theta2 and p_sat(theta2).
2) equation for n_sat_l(theta2)
   This is the Takenaka1990 liquid concentration, adjusted with bulk modulus to
   the saturation pressure.
3) equation for p_g(n, theta2)
   This is the virial EOS.
4) equation for p_sat(theta2)
   Use McBride2002:
     g_0g(theta2) - Integral(dP/n_g(P, theta2), P0, P_sat)
        = g_0l(theta2) - Integral(dP/n_l(P, theta2), P0, P_sat)
   or KayeLabyOnline2005.
   KayeLabyOnline2005 (exponential of 7th order polynomial) is probably simpler,
   but McBride2002 (7th order polynomial plus EOS polynomials for gas and
   liquid; one term is natural log) is more consistent with the rest of the
   model.  **See which is more accurate once add dp/n of liquid and use virial
   EOS for the dp/n of gas to the McBride et al. approach.
5) equation for p_l(n, theta2)
   Use Takenaka1990 to find concentration of liquid at the given temperature and
   1 atm.  Then integrate the bulk modulus from that concentration to the actual
   concentration to determine the actual pressure relative to 1 atm.
procedure:
1) Determine P_g(n, theta2), P_sat(theta2), and P_l(n, theta2).
2) P =
   if P_g < P_sat or theta2 > theta2_c then P_g else (if P_sat < P_l then else)
   See http://en.wikipedia.org/wiki/Supercritical_fluid.
1) determine if gas, gas/liq, or gas based on equations 1 and 2
   if n <= n_sat_g or n < n_sat_l then gas present
   if n > n_sat_g then liquid present
   alternatively,
   if n <= n_sat_g then (pure) gas
   if n > n_sat_g and n < n_sat_l then gas/liq
   if n > n_sat_g and n >= n_sat_l then (pure) liq
   alternatively,
   phase = if n <= n_sat_g then gas else (if n < n_sat_l then gas/liq else liq)
2) if gas: use p_g(n, theta2)
   if gas/liq: use p_sat(theta2)
   if liq: use p_l(n, theta2)
   closed form:
   p = noEvent(if n <= n_sat_g(theta2) then p_g(n, theta2) else (if n <n_sat_l(theta2) then p_sat(theta2) else p_l(n, theta2)));

a) If T < T_tp, solid could be present (assert against this),
   where T_tp=273.31K and P_tp=632.4MPa are the liquid/V/VI triple point
   temperature and pressure.  See http://www.lsbu.ac.uk/water/phase.html.

b) If T > T_c or P > P_c, then supercritical (assert against this),
   where T_c and P_c are the gas/liquid critical point temperature and pressure.

**But in the model, concentration (n) is the state, not P.  This concentration is the total
concentration (of liquid and gas).  The pressure difference (between the gas and the
liquid) at their different concentrations must be supported by an exchange between
liquid and gas, with the particles entering the liquid at a higher velocity than
they enter the gas.  At equilibrium, the transport equation becomes:
0 = Phi/L + Deltan*Gamma*A/L/n
n = sqrt(-Deltan*Gamma*A/Phi)
n = sqrt((n_l - n_g)*Gamma*A/Phi)
The mixing equation is:
0 = (n_g - n)*exp(-Phi/(Gamma*A)) + (n_l - n)*exp(Phi/(Gamma*A)),
where p\Phi is directed towards the liquid.  This can be written as:
n = n_l/(1 + exp(Phi/(Gamma*A)) + n_g/(1 + exp(-Phi/(Gamma*A)),
Therefore,
sqrt((n_l - n_g)*Gamma*A/Phi) = n_l/(1 + exp(Phi/(Gamma*A))) + n_g/(1 + exp(-Phi/(Gamma*A))),
The diffusion coefficient Gamma is related to the speed of sound:
Gamma = c*N/A,
and Phi is the momentum at the speed of sound:
Phi = c*N
=> Phi/(Gamma*A) = 1
sqrt(n_l - n_g) = n_l/(1 + exp(1)) + n_g/(1 + exp(-1)),
"""

# Figure 1 (p-n)
fig = plt.figure()
plt.setp(fig, 'label', os.path.join(output_dir, 'dModel-H2O-PressConc'))
ax = fig.add_subplot(111)
ax.plot(data['Conc. sat. gas / (C/mm3)'],
        data['Sat. press. / (GA/(m.s))']*1E3*mass*C/kg,
        'rx:', label='Sat. gas (Moran & Shapiro)')
ax.plot(data['Conc. sat. liq. / (C/mm3)'],
        data['Sat. press. / (GA/(m.s))']*1E3*mass*C/kg,
        'bx:', label='Sat. liq. (Moran & Shapiro)')
ax.plot(ns[0]*mm**3/C, Ps[0]*mass/MPa, 'k', label='Isotherms of model')
# Label the temperature.
#plt.text(n_c*mm**3/C, P_sat(theta2)*mass/MPa,
#         r"$%.0f^\circ\;\!\!C$"%(mass*theta2/K-273.15))
# Skip the last 3 isotherms for now. The saturation pressure function causes NaN
# for those. **Fix that.
label_indices = [44, 54] + range(56, theta2s.shape[0])
for i, theta2 in enumerate(theta2s[1:-3]):
    ax.plot(ns[i+1]*mm**3/C, Ps[i+1]*mass/MPa, 'k')
    if i in label_indices:
        # Label the temperature.
        plt.text(n_c*mm**3/C, P_sat(theta2)*mass/MPa,
                 r"$%.0f^\circ\;\!\!C$"%(mass*theta2/K-273.15),
                 horizontalalignment='center')
ax.set_title("Pressure-Concentration Diagram of Water")
ax.set_xlabel(r"Concentration$\,/\,\acute{C}\,mm^{-3}$")
ax.set_ylabel(r"Pressure$\,/\,MPa$")
ax.legend(loc='upper right')
axis = ax.axis()
ax.axis([axis[0], axis[1], axis[2], p_max/MPa])
# **Run isotherms for the rest of the temperatures from Moran2008 (including the
# critical isotherm).
# **Shade the gas, gas/liquid, liquid, and supercritical phases.  The
# supercritical phase is above critical temperature *or* above the critical
# pressure.

# Figure 2 (low p-n)
fig = plt.figure()
plt.setp(fig, 'label', os.path.join(output_dir, 'dModel-H2O-LowPressConc'))
ax = fig.add_subplot(111)
ax.plot(data['Conc. sat. gas / (C/mm3)'],
        data['Sat. press. / (GA/(m.s))']*1E6*mass*C/kg,
        'rx:', label='Sat. gas (Moran & Shapiro)')
ax.plot(data['Conc. sat. liq. / (C/mm3)'],
        data['Sat. press. / (GA/(m.s))']*1E6*mass*C/kg,
        'bx:', label='Sat. liq. (Moran & Shapiro)')
ax.plot(ns[0]*mm**3/C, Ps[0]*mass/kPa, 'k', label='Isotherms of model')
# Label the temperature.
#plt.text(n_c*mm**3/C, P_sat(theta2)*mass/kPa,
#         r"$%.0f^\circ\;\!\!C$"%(mass*theta2/K-273.15))
# Skip the last 3 isotherms for now. The saturation pressure function causes NaN
# for those. **Fix that.
label_indices = [32] + range(34, theta2s.shape[0])
for i, theta2 in enumerate(theta2s[1:-3]):
    ax.plot(ns[i+1]*mm**3/C, Ps[i+1]*mass/kPa, 'k')
    if i in label_indices:
        plt.text(3, P_sat(theta2)*mass/kPa,
                 r"$%.0f^\circ\;\!\!C$"%(mass*theta2/K-273.15),
                 horizontalalignment='center')
ax.set_title("Pressure-Concentration Diagram of Water")
ax.set_xlabel(r"Concentration$\,/\,\acute{C}\,mm^{-3}$")
ax.set_ylabel(r"Pressure$\,/\,kPa$")
ax.legend(loc='upper left')
axis = ax.axis()
ax.axis([axis[0], axis[1], axis[2], 110])

# Figure 3 (p-v)
# Specific volume of saturated liquid
vs = np.reciprocal(ns)
# Specific volume of saturated liquid
v_sat_l = np.reciprocal(data['Conc. sat. liq. / (C/mm3)']*C/mm**3)
# Specific volume of saturated gas
v_sat_g = np.reciprocal(data['Conc. sat. gas / (C/mm3)']*C/mm**3)
fig = plt.figure()
plt.setp(fig, 'label', os.path.join(output_dir, 'dModel-H2O-PressVol'))
ax = fig.add_subplot(111)
ax.plot(v_sat_g*C/mm**3, data['Sat. press. / (GA/(m.s))']*1E3*mass*C/kg, 'rx:',
        label='Sat. gas (Moran & Shapiro)')
ax.plot(v_sat_l*C/mm**3, data['Sat. press. / (GA/(m.s))']*1E3*mass*C/kg, 'bx:',
        label='Sat. liq. (Moran & Shapiro)')
ax.plot(vs[0]*C/mm**3, Ps[0]*mass/MPa, 'k', label='Isotherms of model')
# Skip the last 3 isotherms for now. The saturation pressure function causes NaN
# for those. **Fix that.
for i, theta2 in enumerate(theta2s[1:-3]):
    ax.plot(vs[i+1]*C/mm**3, (Ps[i+1]*mass/MPa), 'k')
ax.set_title("Pressure-Volume Diagram of Water")
ax.set_xlabel(r"Specific volume$\,/\,mm^3\,\acute{C}^{-1}$")
ax.set_ylabel(r"Pressure$\,/\,MPa$")
axis = ax.axis()
# The linear p-v plot doesn't show detail well, so zoom in.
ax.axis([axis[0], 500, axis[2], 2])
ax.legend(loc='upper right')

# Figure 4 (log p-log v)
fig = plt.figure()
plt.setp(fig, 'label', os.path.join(output_dir, 'dModel-H2O-PressVolLogLog'))
ax = fig.add_subplot(111)
ax.loglog(v_sat_g*C/mm**3, data['Sat. press. / (GA/(m.s))']*1E9*mass*C/kg,
          'rx:', label='Sat. gas (Moran & Shapiro)')
ax.loglog(v_sat_l*C/mm**3, data['Sat. press. / (GA/(m.s))']*1E9*mass*C/kg,
          'bx:', label='Sat. liq. (Moran & Shapiro)')
ax.loglog(vs[0]*C/mm**3, Ps[0]*mass/Pa, 'k', label='Isotherms of model')
# Label the temperature.
#plt.text(C/(n_c*mm**3), P_sat(theta2)*mass/kPa,
#         r"$%.0f^\circ\;\!\!C$"%(mass*theta2/K-273.15))
# Skip the last 3 isotherms for now. The saturation pressure function causes NaN
# for those. **Fix that.
label_indices = range(32, theta2s.shape[0], 3)
for i, theta2 in enumerate(theta2s[1:-3]):
    ax.loglog(vs[i+1]*C/mm**3, Ps[i+1]*mass/Pa, 'k')
    if i in label_indices:
        # Label the temperature.
        plt.text(C/(n_c*mm**3), P_sat(theta2)*mass/Pa,
                 r"$%.0f^\circ\;\!\!C$"%(mass*theta2/K-273.15),
                 horizontalalignment='center')
ax.set_title("Pressure-Volume Diagram of Water")
ax.set_xlabel(r"Specific volume$\,/\,mm^3\,\acute{C}^{-1}$")
ax.set_ylabel(r"Pressure$\,/\,Pa$")
ax.legend(loc='upper right')
axis = ax.axis()
ax.axis([axis[0], 4E4, 500, p_max/Pa])

# Finish.
save_figs()
plt.show()
