Use LaTeX for documents.
    -It is difficult to manage images and get pages to look as good in Microsoft Word or OpenOffice Writer.

Use Microsoft PowerPoint for presentations.
    -OpenOffice Impress doesn't seem to appear as nice.  PowerPoint is the standard, so I can be sure that I can open it on other presentation computers.  LaTeX seems like it would be cumbersome for presentations.

Use Scribus for posters.
    -Other options are Inkscape (I think it would be cumbersome for text, even with the Tex Text extension), PowerPoint (not open source and doesn't import vector graphics well except through WMF) and LibreOffice Impress (not as powerful and convenient as PowerPoint)

If possible, export images from their native program into PDF, WMF, and EPS.  These are vector graphics formats, so they will appear crisper in documents and presentations.  PDFLaTeX accepts PDF images directly.  If an image can't be saved as PDF, save it as EPS and use the epstopdf and graphicx LaTeX packages to automatically convert it to PDF for use by PDFLaTeX.  PowerPoint accepts WMF (and isn't very good with EPS).  Impress accepts EPS.

PROGRAM             PNG?    WMF?    EPS?    PDF?
Dymola              Y       N       N       N
MATLAB              Y       N       Y       Y
Inkscape            Y       Y       Y       Y
MS PowerPoint       Y       Y?      N       N
MS Visio            Y       Y?      N       N?
OpenOffice Impress  Y       Y       Y       Y
OpenOffice Draw     Y       Y       Y       Y
Paint.net           Y       N?      N       N?

Dymola (native format MO):
Automatically produce PNG images (for use in LaTeX documents and PowerPoint) for all of the models in the library using Dymola's File->Export->"HTML..." command with the Diagram image size set to "Huge image (200%)".  Then run the copyModelImages.py script to copy the pertinent images to the folder above this one.  To produce higher quality (vector) images, click File->Print... and choose "Print to file (PDF)".  Note that as of 11/2/10, the clipboard method (File->Export->"To clipboard" command from the Windows version of Dymola and pasting the image into Inkscape or PowerPoint) does not produce very good results.

MATLAB Figure (native format FIG):
Print the figure as EPS (for use in LaTeX documents) and save it as FIG.  If time is available and quality is important, open the FIG in MATLAB within Windows (or run the script that created it in Windows) and save the figure as EMF.  Otherwise (the quality difference may not be noticeable on a projector), print the figure as PNG from MATLAB.  PowerPoint imports EPS files poorly, so don't insert the EPS file into a PowerPoint presentation.  The PDF output from MATLAB prints a border with "Student Version of MATLAB", so it's best to print MATLAB figures to EPS and allow the epstopdf LaTeXpackage convert the images to EPS. Note that using figure's Edit->Copy figure command and pasting it in PowerPoint preserves the image as vector graphics, but some of the special TeX formatting I've used in the figures does not always appear correctly in PowerPoint.

Inkscape (native format Inkscape SVG):
Save as PDF (for use in LaTeX documents) and EPS (for use in OpenOffice Impress, e.g., for posters).  Use ImageMagick (via the aa_convert_PDF_to_PNG.sh script) to convert the PDF images to PNG for PowerPoint.  It would be ideal to directly export the image as WMF for PowerPoint.  However, as of 12/10/10, Inkscape is only able to save images that don't have text as WMF within Ubuntu and fails on all images within Windows.  Inkscape can save images as EPS within both Ubuntu and Windows, but PowerPoint uses a poor built-in conversion utility to insert EPS images.  Use Inkscape as much as possible (rather than MS PowerPoint, MS Visio, OpenOffice Impress, OpenOffice Draw, or Paint.net) to create images since it has the best support for vector graphics.  **Once an Inkscape update is available (past 0.48), I should install it and try to save the master SVG files as WMF so that they can be used in PowerPoint.

Mathematica (native format NB):
Save as PDF (for use in LaTeX documents) and PNG (for PowerPoint).  The ImageSize needs to be large enough for the quality of the PNG image to be good.

Avogadro:
Export as EPS (for use in LaTeX, PowerPoint, and Impress).  The PDF export seems to hang up the computer.

FreeMind:
Export as PNG (for use in LaTeX, PowerPoint, and Impress).  FreeMind doesn't seem to support any vector graphics formats.
