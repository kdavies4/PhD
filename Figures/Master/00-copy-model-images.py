#!/usr/bin/env python
"""Copy model images exported by Dymola.

This replaces the existing images in the destination directory!

Steps:
1. Open the FCSys library in Dymola.
2. Create the images.  There are two methods.  The first is easiest, but the
   second produces higher quality images (vector rather than raster).
    A. 1. Click File->Export->HTML...
       2. On the "General" tab, check "Custom setup" and "Huge image (200%)"
       3. On the "Details" tab, check "Diagram images"
       4. Click "Export".
    B. 1. Select the diagram view of the model from which the image should be
          produced.
       2. Click File->Print...
       3. Choose "Print to file (PDF)".
       4. As the output file, choose the PDF_dir and enter the same name
          that Dymola uses for the help files (option A above).
3. Optionally, run this script with clean=True.  That will delete the existing
   images in the out_dir (later, if the files are renamed, it is
   difficult to determine which files to delete).
4. Update the copy_list.
5. Run this script with clean=False.  It will replace the figure image files in
   the out_dir with the corresponding ones from PNG_dir.
5. Optionally, run the "00-crop-raster.sh" file to trim the whitespace
   from the edges of the PNG images.
"""
__author__ = "Kevin L. Davies"
__version__ = "2010/10/23"
__email__ = "kld@alumni.carnegiemellon.edu"

import shutil
import os.path as path

## Settings
# If true, delete the existing images in the destination directory (without
# trying to copy new ones).
clean = False

# Source directory for PNG images
PNG_dir = "ModelHelp"

# Source directory for PDF images
PDF_dir = "ModelPDFs"

# Destination directory
out_dir = "../"

# List of base filenames to copy
# The first column is the source (relative to PNG_dir or PDF_dir) and the second
# column is the destination (relative to out_dir).
copy_list = [
# Introduction chapter
("FCSys.Figures.DeclarativeVsImperative.SwitchCausality.Declarative_ivD", "1-Declarative-ivD"),
("FCSys.Figures.DeclarativeVsImperative.SwitchCausality.Declarative_viD", "1-Declarative-viD"),
("FCSys.Figures.DeclarativeVsImperative.SwitchCausality.Examples.DeclarativeD", "1-DeclarativeD"),
("FCSys.Figures.DeclarativeVsImperative.SwitchCausality.Imperative_ivD", "1-Imperative-ivD"),
("FCSys.Figures.DeclarativeVsImperative.SwitchCausality.Imperative_viD", "1-Imperative-viD"),
# Implementation chapter
("FCSys.Connectors.ChemicalI", "4-Connectors-ChemicalI"),
("FCSys.Connectors.ReactionI", "4-Connectors-ReactionI"),
("FCSys.Connectors.BoundaryI", "4-Connectors-BoundaryI"),
("FCSys.Connectors.BoundaryBusI", "4-Connectors-BoundaryBusI"),
("FCSys.Connectors.InertI", "4-Connectors-InertI"),
("FCSys.Connectors.AmagatI", "4-Connectors-AmagatI"),
("FCSys.Connectors.DaltonI", "4-Connectors-DaltonI"),
("FCSys.Connectors.InertI", "4-Connectors-InertI"),
("FCSys.Connectors.IntraI", "4-Connectors-IntraI"),
("FCSys.Connectors.InterI", "4-Connectors-InterI"),
("FCSys.Connectors.TranslationalI", "4-Connectors-TranslationalI"),
#("FCSys.Connectors.ThermalDiffusiveI", "4-Connectors-ThermalDiffusiveI"),
("FCSys.Connectors.TranslationalI", "4-Connectors-ThermalDiffusiveI"),
("FCSys.Chemistry.HORD", "4-HORD"),
("FCSys.Chemistry.ORRD", "4-ORRD"),
("FCSys.Figures.RegionIconD", "4-RegionI"),
("FCSys.Figures.AnCLIconD", "4-AnCLI"),
("FCSys.Figures.AnFPIconD", "4-AnFPI"),
("FCSys.Figures.AnGDLIconD", "4-AnGDLI"),
("FCSys.Figures.CaCLIconD", "4-CaCLI"),
("FCSys.Figures.CaFPIconD", "4-CaFPI"),
("FCSys.Figures.CaGDLIconD", "4-CaGDLI"),
("FCSys.Figures.CellIconD", "4-CellI"),
("FCSys.Figures.AssemblyIconD", "4-AssemblyI"),
("FCSys.Figures.ConnectorsD", "4-Connectors"),
("FCSys.Figures.MatrixD", "4-MatrixD"),
("FCSys.Figures.PEMIconD", "4-PEMI"),
("FCSys.Figures.PhaseIconD", "4-PhaseI"),
("FCSys.Figures.SpeciesIconD", "4-SpeciesI"),
("FCSys.Figures.SubregionIconD", "4-SubregionI"),
("FCSys.Regions.RegionD", "4-RegionD"),
("FCSys.Assemblies.Cells.CellD", "4-CellD"),
("FCSys.Assemblies.Cells.SimpleCellD", "4-SimpleCellD"),
("FCSys.Phases.GasD", "4-Phases-GasD"),
("FCSys.Phases.GraphiteD", "4-Phases-GraphiteD"),
("FCSys.Phases.IonomerD", "4-Phases-IonomerD"),
("FCSys.Phases.LiquidD", "4-Phases-LiquidD"),
("FCSys.Subregions.SubregionD", "4-SubregionD"),
("FCSys.Assemblies.Cells.Examples.TestStandD", "4-TestStandD"),
("FCSys.Assemblies.Cells.Examples.TestStandCycleD", "4-TestStandCycleD"),
("FCSys.Figures.TestStandD", "4-TestStandD"),
("FCSys.Subregions.Examples.AirColumnD", "5-AirColumnD"),
("FCSys.Subregions.Examples.EchoD", "5-EchoD"),
("FCSys.Subregions.Examples.ElectricalConductionD", "5-ElectricalConductionD"),
("FCSys.Subregions.Examples.PhaseChange.EvaporationD", "5-EvaporationD"),
("FCSys.Subregions.Examples.PhaseChange.HydrationD", "5-HydrationD"),
("FCSys.Subregions.Examples.InternalFlowD", "5-InternalFlowD"),
("FCSys.Subregions.Examples.ThermalConductionConvectionD", "5-ThermalConductionConvectionD"),
("FCSys.Subregions.Examples.ThermalConductionD", "5-ThermalConductionD"),
]

## Procedure
for (source, dest) in copy_list:
    if clean:
        # Remove the destination files.
        try:
            os.remove(path.join(out_dir, dest + '.png'))
            os.remove(path.join(out_dir, dest + '.pdf'))
        except IOError:
            pass
    else:
        # Copy PNGs.
        try:
            shutil.copy2(path.join(PNG_dir, source + '.png'),
                         path.join(out_dir, dest + '.png'))
        except IOError:
            print("%s.png is missing." % path.join(PNG_dir, source))

        # Copy PDFs.
        try:
            shutil.copy2(path.join(PDF_dir, source + '.pdf'),
                         path.join(out_dir, dest + '.pdf'))
        except IOError:
            pass
