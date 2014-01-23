#!/usr/bin/env python
"""Univariate regression with nonlinear model and general M-estimator
"""
__author__ = "Wesley Phoa"
__copyright__ = "Copyright 2000"
# from http://www.margaretmorgan.com/wesley/python/regress.py, accessed 2011/5/25

from mathutil import *
from operator import *
from string import *

def Lorentzian(z):
	"""\
	-log density function for Cauchy distributed errors
	"""

	return log(1 + z*z/2)

def M_estimate(data, fn, logdensity=Lorentzian):
	"""\
M_estimate(data, fn, logdensity): M-estimator of univariate model
	data is a list of tuples (x, y)
	fn is a function f of one variable
	logdensity = negative logarithm of assumed pdf of model errors
	returns sum logdensity(y - f(x))
	"""

	return reduce(add, map(lambda (x, y), f=fn, logdensity=logdensity:
		logdensity(y - f(x)), data))

def R_squared(data, fn, logdensity=Lorentzian):
	"""\
R_squared(data, fn): generalized R_squared of univariate model
	data is a list of tuples (x, y)
	fn is a function f of one variable
	logdensity = negative logarithm of assumed pdf of model errors
	returns 1 - (sum logdensity(y - f(x))) / (sum logdensity(y - y_avg))
	"""

	n = len(data)
	y_avg = reduce(add, map(lambda (x, y): y, data)) / n
	M_est = M_estimate(data, fn, logdensity)
	return 1 - M_est / \
		reduce(add, map(lambda (x, y), y_avg=y_avg, logdensity=logdensity:
			logdensity(y - y_avg), data))


def interpret(model):
	"""\
	convert a model specification like 'a0 + a1*x + a2*x*x'
	to a nested lambda expression, e.g. 
		lambda a0, a1, a2:
			lambda x, a0=a0, a1=a1, a2=a2:
				a0 + a1*x + a2*x*x
	and also corresponding lambda expression for objective function
	"""

	varlist = []
	expr = "'%s'"% (model, )

	# fails for more than 10 variables
	n = 0
	while find(model, 'a' + str(n)) > -1:
		varlist.append('a' + str(n))
		expr = string.replace(expr, 'a' + str(n),
			"' + str(%s)+ '" % ('a' + str(n), ))
		n = n + 1

	fn = eval("lambda %s: lambda x, %s: %s" % (join(varlist, ', '),
		join(map(lambda s: '%s=%s' % (s, s), varlist), ', '), model))
	objfn = eval("lambda %s, data=gdata: M_estimate(data, lambda x, %s: %s)"
		% (join(varlist, ', '),
			join(map(lambda s: '%s=%s' % (s, s), varlist), ', '), model))
	strfn = eval("lambda %s: %s" % (join(varlist, ', '), expr))

	return fn, objfn, strfn, n

def regress(model, data, init=None, objective=M_estimate):
	"""\
fit, function, formula, R2 = regress(model, init): univariate regression
	model is a string expression specifying the model
		e.g. 'a0 + a1*x + a2*x*x'
	data is a list of tuples (x, y)
	init is a starting guess for the coefficients, e.g. (0., 1., 2.5)
	fit is the regression results (a0, a1,...)
	function is the model given as a lambda-expression
	formula is the model given as a string expression
		e.g. '5.32 + 8.24*x + 8.81*x*x'
	R2 is generalized R-squared
	"""

	global gdata
	gdata = data # hack so lambda-expression can see data
	fn, objfn, strfn, n = interpret(model)

	if not init:
		init = n * [0.] # starting guess
	fit = powell_min(objfn, init)

	return fit, apply(fn, fit), apply(strfn, fit), \
		R_squared(data, apply(fn, fit))

if __name__=='__main__':

	data = [(1,2), (2,3.5), (3,6)]
	fn = lambda x: 2*x
	print M_estimate(data, fn), R_squared(data, fn)

	model = 'a0 + a1*x + a2*x*x'
	fit, function, formula, R2 = regress(model, data)
	print formula, R2

	model = 'a0 + a1*x'
	fit, function, formula, R2 = regress(model, data)
	print formula, R2
	
	model = 'a0 + a1*exp(x)'
	fit, function, formula, R2 = regress(model, data)
	print formula, R2
