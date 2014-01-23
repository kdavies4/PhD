(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[    380098,       7379]
NotebookOptionsPosition[    377806,       7299]
NotebookOutlinePosition[    378142,       7314]
CellTagsIndexPosition[    378099,       7311]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Calculate", " ", 
     RowBox[{"Wien", "'"}], "s", " ", "diplacement", " ", "law", " ", 
     "constants", " ", 
     RowBox[{"(", 
      RowBox[{"c3nu", " ", "and", " ", "c3lambda"}], ")"}], " ", "and", " ", 
     "Stefan"}], "-", 
    RowBox[{"Boltzmann", " ", "constant", " ", 
     RowBox[{
      RowBox[{"(", "sigma", ")"}], "."}]}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "This", " ", "is", " ", "saved", " ", "as", " ", "a", " ", "Mathematica", 
     " ", "script", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{".", "m"}], ";", " ", "ASCII"}], ")"}], " ", "rather", " ", 
     "than", " ", "a", " ", "Mathematica", " ", "notebook", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{".", "nb"}], ";", " ", "binary"}], ")"}], " ", "so", " ", 
     "that", " ", "it", " ", "can", " ", "be", " ", "tracked", " ", "by", " ",
      "version", " ", 
     RowBox[{"control", ".", "  ", "The"}], " ", "plots", " ", "are", " ", 
     "not", " ", "saved", " ", "in", " ", "this", " ", "file"}], ",", " ", 
    RowBox[{"but", " ", "are", " ", 
     RowBox[{"exported", "."}]}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"See", " ", "notes", " ", "from", " ", 
     RowBox[{
      RowBox[{"11", "/", "5"}], "/", "11"}]}], ",", " ", 
    RowBox[{
     RowBox[{"http", ":"}], "//", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"en", ".", "wikipedia", ".", "org"}], "/", "wiki"}], "/", 
       RowBox[{"Wien", "'"}]}], "s_displacement", " ", "_law"}]}], ",", " ", 
    RowBox[{
     RowBox[{"and", " ", 
      RowBox[{"http", ":"}]}], "//", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"en", ".", "wikipedia", ".", "org"}], "/", "wiki"}], "/", 
       "Stefan"}], "%", " ", "E2", " ", "%80", " ", "%93", " ", 
      RowBox[{"Boltzmann_law", "."}]}]}]}], " ", "*)"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Default", " ", "plot", " ", "options"}], " ", "*)"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"SetOptions", "[", 
   RowBox[{"Plot", ",", "\n", " ", 
    RowBox[{"Axes", " ", "->", " ", "False"}], ",", "\n", " ", 
    RowBox[{"Frame", " ", "->", " ", "True"}], ",", "\n", " ", 
    RowBox[{"FrameStyle", " ", "->", " ", 
     RowBox[{"Directive", "[", 
      RowBox[{"Thickness", "[", "0.003", "]"}], "]"}]}], ",", "\n", " ", 
    RowBox[{"PlotStyle", " ", "->", " ", 
     RowBox[{"{", "\n", "   ", 
      RowBox[{
       RowBox[{"Directive", "[", 
        RowBox[{"Blue", ",", " ", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", "   ", 
       
       RowBox[{"Directive", "[", 
        RowBox[{"Green", ",", " ", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", "   ", 
       
       RowBox[{"Directive", "[", 
        RowBox[{"Red", ",", " ", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", "   ", 
       
       RowBox[{"Directive", "[", 
        RowBox[{"Cyan", ",", " ", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", "   ", 
       
       RowBox[{"Directive", "[", 
        RowBox[{"Magenta", ",", " ", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", "   ", 
       
       RowBox[{"Directive", "[", 
        RowBox[{"Yellow", ",", " ", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", "   ", 
       
       RowBox[{"Directive", "[", 
        RowBox[{"Black", ",", " ", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", "   ", 
       
       RowBox[{"Directive", "[", 
        RowBox[{"Blue", ",", " ", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}]}], "}"}]}], ",", 
    "\n", " ", 
    RowBox[{"ImageSize", " ", "->", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", " ", "+", " ", 
           RowBox[{"Sqrt", "[", "5", "]"}]}], ")"}], "/", "2"}], ",", " ", 
        "1"}], "}"}], "*", "800"}]}], ",", " ", 
    RowBox[{"(*", " ", 
     RowBox[{"Golden", " ", "ratio"}], " ", "*)"}], " ", "\n", " ", 
    RowBox[{"BaseStyle", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"FontFamily", " ", "->", " ", "\"\<Helvetica\>\""}], ",", " ", 
       "\n", "   ", 
       RowBox[{"FontSize", " ", "->", " ", "\n", "    ", "34"}]}], "}"}]}]}], 
   "]"}], ";", " ", 
  RowBox[{"(*", " ", 
   RowBox[{"Default", " ", "plot", " ", "options"}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"6", "/", "17"}], "/", "11"}], ":", " ", 
     RowBox[{
     "The", " ", "last", " ", "PlotStyle", " ", "is", " ", "the", " ", "same",
       " ", "as", " ", "the", " ", 
      RowBox[{"first", ".", "  ", "Otherwise"}]}]}], ",", " ", 
    RowBox[{
    "where", " ", "there", " ", "is", " ", "only", " ", "one", " ", "line", 
     " ", "in", " ", "a", " ", "plot"}], ",", 
    RowBox[{
    "the", " ", "PlotStyle", " ", "in", " ", "the", " ", "legend", " ", 
     RowBox[{"doesn", "'"}], "t", " ", "seem", " ", "to", " ", "match", " ", 
     "the", " ", "PlotStyle", " ", "in", " ", "the", " ", 
     RowBox[{"plot", "."}]}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"6", "/", "17"}], "/", "11"}], ":", " ", "Unfortunately"}], ",",
     " ", 
    RowBox[{
    "the", " ", "dashing", " ", "of", " ", "the", " ", "lines", " ", "in", 
     " ", "the", " ", "legend", " ", 
     RowBox[{"doesn", "'"}], "t", " ", "match", " ", "the", " ", "dashing", 
     " ", "of", " ", "the", " ", "lines", " ", "in", " ", "the", " ", 
     "plot"}], ",", " ", 
    RowBox[{
     RowBox[{"so", " ", "this", " ", 
      RowBox[{"can", "'"}], "t", " ", "be", " ", 
      RowBox[{"used", ":", "\n", "PlotStyle"}]}], "->", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Directive", "[", 
        RowBox[{"Blue", ",", 
         RowBox[{"Dashing", "[", 
          RowBox[{"{", 
           RowBox[{"1", ",", "0"}], "}"}], "]"}], ",", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", 
       RowBox[{"Directive", "[", 
        RowBox[{"Green", ",", 
         RowBox[{"Dashing", "[", 
          RowBox[{"{", 
           RowBox[{"0.015", ",", "0.015"}], "}"}], "]"}], ",", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", 
       RowBox[{"Directive", "[", 
        RowBox[{"Red", ",", 
         RowBox[{"Dashing", "[", 
          RowBox[{"{", 
           RowBox[{"0.005", ",", "0.005"}], "}"}], "]"}], ",", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", 
       RowBox[{"Directive", "[", 
        RowBox[{"Cyan", ",", 
         RowBox[{"Dashing", "[", 
          RowBox[{"{", 
           RowBox[{"0.015", ",", "0.010", ",", "0.005", ",", "0.010"}], "}"}],
           "]"}], ",", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", 
       RowBox[{"Directive", "[", 
        RowBox[{"Magenta", ",", 
         RowBox[{"Dashing", "[", 
          RowBox[{"{", 
           RowBox[{"1", ",", "0"}], "}"}], "]"}], ",", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", 
       RowBox[{"Directive", "[", 
        RowBox[{"Yellow", ",", 
         RowBox[{"Dashing", "[", 
          RowBox[{"{", 
           RowBox[{"0.005", ",", "0.005"}], "}"}], "]"}], ",", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", 
       RowBox[{"Directive", "[", 
        RowBox[{"Black", ",", 
         RowBox[{"Dashing", "[", 
          RowBox[{"{", 
           RowBox[{"0.015", ",", "0.010", ",", "0.005", ",", "0.010"}], "}"}],
           "]"}], ",", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}], ",", "\n", 
       RowBox[{"Directive", "[", 
        RowBox[{"Blue", ",", 
         RowBox[{"Dashing", "[", 
          RowBox[{"{", 
           RowBox[{"1", ",", "0"}], "}"}], "]"}], ",", 
         RowBox[{"Thickness", "[", "0.003", "]"}]}], "]"}]}], "}"}]}]}], "\n",
    "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"10", "/", "2"}], "/", "11"}], ":", " ", 
    RowBox[{
    "Updated", " ", "the", " ", "formatting", " ", "to", " ", "match", " ", 
     "that", " ", "of", " ", 
     RowBox[{"matplotlib", "."}]}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"10", "/", "2"}], "/", "11"}], ":", " ", 
    RowBox[{
    "ImageSize", " ", "needs", " ", "to", " ", "be", " ", "large", " ", 
     "enough", " ", "so", " ", "that", " ", "the", " ", "PNGs", " ", "are", 
     " ", "exported", " ", "with", " ", "sufficient", " ", 
     RowBox[{"quality", "."}]}]}], " ", "*)"}]}]], "Code",
 CellChangeTimes->{3.537379148776046*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Custom", " ", "method", " ", "for", " ", "adding", " ", "labels", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"modified", " ", "from", " ", 
       RowBox[{"http", ":"}]}], "//", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"www", ".", "mathkb", ".", "com"}], "/", "Uwe"}], "/", 
           RowBox[{"Forum", ".", "aspx"}]}], "/", "mathematica"}], "/", 
         "16793"}], "/", "Legends"}], "-", "for", "-", "Plot", "-", "s", "-", 
       "solution"}]}], ")"}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "This", " ", "is", " ", "necessary", " ", "since", " ", "it", " ", "is", 
     " ", "otherwise", " ", "difficult", " ", "to", " ", "set", " ", "the", 
     " ", "width", " ", "of", " ", "lines", " ", "in", " ", "the", " ", 
     "legend", " ", "to", " ", "match", " ", "those", " ", "of", " ", "the", 
     " ", 
     RowBox[{"plot", ".", "\n", "Unfortunately"}]}], ",", " ", "however", ",",
     " ", 
    RowBox[{
    "it", " ", "does", " ", "not", " ", "allow", " ", "the", " ", "legend", 
     " ", "to", " ", "be", " ", "placed", " ", "within", " ", "the", " ", 
     "plot", " ", 
     RowBox[{"frame", "."}]}]}], " ", "*)"}]}]], "Input"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"LineStylesFromTooltips", "[", "plot_Graphics", "]"}], ":=", 
   RowBox[{"Cases", "[", 
    RowBox[{"plot", ",", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"s__", ",", 
          RowBox[{"l_Point", "|", "l_Line"}]}], "}"}], ",", "tt_"}], "]"}], ":>",
       "\n", 
      RowBox[{"Grid", "[", 
       RowBox[{"{", 
        RowBox[{"{", "\n", 
         RowBox[{
          RowBox[{"Switch", "[", "\n", 
           RowBox[{
            RowBox[{"Head", "@", "l"}], ",", "Point", ",", "\n", 
            RowBox[{"Graphics", "[", "\n", 
             RowBox[{
              RowBox[{"Flatten", "[", 
               RowBox[{"{", 
                RowBox[{"s", ",", 
                 RowBox[{"Point", "@", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", "0"}], "}"}]}]}], "}"}], "]"}], ",", 
              "\n", 
              RowBox[{"ImageSize", "->", 
               RowBox[{"{", 
                RowBox[{"4", ",", "8"}], "}"}]}], ",", "\n", 
              RowBox[{"AspectRatio", "->", 
               RowBox[{"8", "/", "4"}]}], ",", "\n", 
              RowBox[{"ImagePadding", "->", "0"}]}], "]"}], ",", "\n", "Line",
             ",", "\n", 
            RowBox[{"Graphics", "[", "\n", 
             RowBox[{
              RowBox[{"Flatten", "[", 
               RowBox[{"{", 
                RowBox[{"s", ",", "\n", 
                 RowBox[{"Thickness", "[", "0.13", "]"}], ",", 
                 RowBox[{"(*", " ", 
                  RowBox[{
                   RowBox[{"Based", " ", "on", " ", "inspection"}], ",", " ", 
                   
                   RowBox[{
                   "this", " ", "matches", " ", "a", " ", "thickness", " ", 
                    "of", " ", "0.003", " ", "in", " ", "the", " ", 
                    "PlotStyle", " ", 
                    RowBox[{"option", "."}]}]}], " ", "*)"}], 
                 RowBox[{"Line", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0"}], "}"}]}], "}"}], "]"}]}], "}"}], 
               "]"}], ",", "\n", 
              RowBox[{"ImageSize", "->", 
               RowBox[{"{", 
                RowBox[{"24", ",", "8"}], "}"}]}], ",", "\n", 
              RowBox[{"AspectRatio", "->", 
               RowBox[{"8", "/", "24"}]}], ",", "\n", 
              RowBox[{"ImagePadding", "->", "0"}]}], "]"}]}], "]"}], ",", 
          "\n", "tt"}], "}"}], "}"}], "]"}]}], ",", "\n", "Infinity"}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"LineLegendFromTooltips", "[", "plot_Graphics", "]"}], ":=", 
   RowBox[{"Labeled", "[", "\n", 
    RowBox[{"plot", ",", "\n", 
     RowBox[{"Style", "[", "\n", 
      RowBox[{
       RowBox[{"Column", "[", 
        RowBox[{"LineStylesFromTooltips", "[", "plot", "]"}], "]"}], ",", 
       "\n", "\"\<TR\>\"", ",", "\n", 
       RowBox[{"FontFamily", "->", "\"\<Helvetica\>\""}], ",", "\n", 
       RowBox[{"FontSize", "->", "34"}], ",", "\n", 
       RowBox[{"ShowStringCharacters", "->", "False"}]}], "]"}], ",", "\n", 
     "Right"}], "]"}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "Place", " ", "the", " ", "legend", " ", "to", " ", "the", " ", "right", 
    " ", "of", " ", "the", " ", 
    RowBox[{"plot", "."}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
     "This", " ", "can", " ", "be", " ", "added", " ", "within", " ", "the", 
      " ", "call", " ", "to", " ", 
      RowBox[{"Column", "[", "]"}], " ", "in", " ", "order", " ", "to", " ", 
      "add", " ", "a", " ", "border", " ", "around", " ", "the", " ", 
      RowBox[{"legend", ":", "\n", "  ", "Frame"}]}], "->", "True"}], ",", 
    "\n", "     ", 
    RowBox[{"FrameStyle", "->", 
     RowBox[{"Directive", "[", 
      RowBox[{"Thickness", "[", "1.2", "]"}], "]"}]}]}], " ", "*)"}]}], "\n", 

 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Example", " ", "of", " ", 
    RowBox[{"usage", ":", "\n", 
     RowBox[{"LineLegendFromTooltips", "[", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Tooltip", "[", 
           RowBox[{"x", ",", "\"\<x\>\""}], "]"}], ",", 
          RowBox[{"Tooltip", "[", 
           RowBox[{
            RowBox[{"x", "^", "2"}], ",", "\"\<x^2\>\""}], "]"}]}], "}"}], 
        ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0", ",", "3"}], "}"}]}], "]"}], "]"}]}]}], " ", 
   "*)"}]}]}], "Code",
 CellChangeTimes->{3.537379164813918*^9, 3.537379273497916*^9}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"Planck", "'"}], "s", " ", "law", " ", 
    RowBox[{"(", 
     RowBox[{"frequency", " ", "form"}], ")"}]}], ":"}], " ", "*)"}]], "Input"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Ih2c2", "[", 
    RowBox[{"hf_", ",", "kT_"}], "]"}], ":=", 
   RowBox[{"2", "*", 
    RowBox[{
     RowBox[{"hf", "^", "3"}], "/", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Exp", "[", 
        RowBox[{"hf", "/", "kT"}], "]"}], "-", "1"}], ")"}]}]}]}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"where", " ", "hf"}], " ", "=", " ", 
     RowBox[{"h", "*", "f"}]}], ",", " ", 
    RowBox[{"kT", " ", "=", " ", 
     RowBox[{"k", "*", "T"}]}], ",", " ", 
    RowBox[{"Ih2c2", " ", "=", " ", 
     RowBox[{"I", "*", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"h", "*", "c"}], ")"}], "^", "2"}]}]}], ",", " ", 
    RowBox[{"h", " ", "is", " ", "Planck", " ", "constant"}], ",", " ", 
    RowBox[{"k", " ", "is", " ", "Boltzmann", " ", "constant"}], ",", " ", 
    RowBox[{"f", " ", "is", " ", "frequancy"}], ",", " ", 
    RowBox[{"T", " ", "is", " ", "temperature"}], ",", " ", 
    RowBox[{"and", " ", "I", " ", "is", " ", "spectral", " ", "radiance"}], 
    ",", " ", 
    RowBox[{"i", ".", "e", "."}], ",", " ", 
    RowBox[{
    "the", " ", "energy", " ", "emitted", " ", "by", " ", "a", " ", 
     "blackbody", " ", "per", " ", "area", " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
       "energy", " ", "per", " ", "area", " ", "or", " ", "force", " ", "per",
         " ", "distance"}], ")"}], "."}]}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"Cube", " ", 
    RowBox[{"root", ":"}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"curtIh2c2", "[", 
    RowBox[{"hf_", ",", "kT_"}], "]"}], ":=", 
   RowBox[{"hf", " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"2", "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"Exp", "[", 
          RowBox[{"hf", "/", "kT"}], "]"}], "-", "1"}], ")"}]}], ")"}], "^", 
     RowBox[{"(", 
      RowBox[{"1", "/", "3"}], ")"}]}]}]}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"curtIh2c2", " ", "stands", " ", "for", " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"I", "*", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"h", "*", "c"}], ")"}], "^", "2"}]}], ")"}], "^", 
     RowBox[{"(", 
      RowBox[{"1", "/", "3"}], ")"}]}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"Solved", " ", "for", " ", 
    RowBox[{"kT", ":"}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"kT", "[", 
   RowBox[{"hf_", ",", "curtIh2c2_"}], "]"}], ":=", 
  RowBox[{"hf", "/", 
   RowBox[{"Log", "[", 
    RowBox[{
     RowBox[{"2", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"hf", "/", "curtIh2c2"}], ")"}], "^", "3"}]}], "+", "1"}], 
    "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"curtIh2c2perhf", "[", "kTperhf_", "]"}], ":=", 
   RowBox[{"1", "/", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"Exp", "[", 
          RowBox[{"1", "/", "kTperhf"}], "]"}], "-", "1"}], ")"}], "/", "2"}],
       ")"}], "^", 
     RowBox[{"(", 
      RowBox[{"1", "/", "3"}], ")"}]}]}]}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"curtIh2c2perhf", " ", "stands", " ", "for", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{"I", "*", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"h", "*", "c"}], ")"}], "^", "2"}]}], ")"}], "^", 
      RowBox[{"(", 
       RowBox[{"1", "/", "3"}], ")"}]}], "/", "hf"}], " ", "and", " ", 
    RowBox[{"kT", "/", "hf"}], " ", "stands", " ", "for", " ", 
    RowBox[{"kT", "/", 
     RowBox[{"hf", ".", "  ", "Both"}]}], " ", "are", " ", 
    RowBox[{"dimensionless", "."}]}], " ", "*)"}]}], "\n"}], "Code"],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "Show", " ", "the", " ", "derivative", " ", "and", " ", "partial", " ", 
   RowBox[{"derivatives", "."}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Total", " ", 
    RowBox[{"derivative", ":"}]}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{"D", "[", 
    RowBox[{"Ih2c2", "[", 
     RowBox[{"hf", ",", "kT"}], "]"}], "]"}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"W", ".", "r", ".", "t", ".", " ", 
     RowBox[{"hnu", ":"}]}], " ", "*)"}], "\n", 
   RowBox[{"Simplify", "[", 
    RowBox[{"D", "[", 
     RowBox[{
      RowBox[{"Ih2c2", "[", 
       RowBox[{"hf", ",", "kT"}], "]"}], ",", "hf"}], "]"}], "]"}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"W", ".", "r", ".", "t", ".", " ", 
     RowBox[{"kT", ":"}]}], " ", "*)"}], "\n", 
   RowBox[{"D", "[", 
    RowBox[{
     RowBox[{"Ih2c2", "[", 
      RowBox[{"hf", ",", "kT"}], "]"}], ",", "kT"}], "]"}], "\n", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{"Ih2c2", "[", 
      RowBox[{"hf", ",", "kT"}], "]"}], ",", 
     RowBox[{"{", "}"}]}], "]"}]}]}]], "Code"],

Cell[BoxData[
 FractionBox[
  RowBox[{"2", " ", 
   SuperscriptBox["hf", "3"]}], 
  RowBox[{
   RowBox[{"-", "1"}], "+", 
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{"hf", "/", "kT"}]]}]]], "Output",
 CellChangeTimes->{3.537379169022939*^9, 3.537379225822369*^9, 
  3.537379351300769*^9}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"2", " ", 
    SuperscriptBox["hf", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SuperscriptBox["\[ExponentialE]", 
        RowBox[{"hf", "/", "kT"}]], " ", 
       RowBox[{"(", 
        RowBox[{"hf", "-", 
         RowBox[{"3", " ", "kT"}]}], ")"}]}], "+", 
      RowBox[{"3", " ", "kT"}]}], ")"}]}], 
   RowBox[{
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "1"}], "+", 
       SuperscriptBox["\[ExponentialE]", 
        RowBox[{"hf", "/", "kT"}]]}], ")"}], "2"], " ", "kT"}]]}]], "Output",
 CellChangeTimes->{3.537379169022939*^9, 3.537379225822369*^9, 
  3.53737935133655*^9}],

Cell[BoxData[
 FractionBox[
  RowBox[{"2", " ", 
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{"hf", "/", "kT"}]], " ", 
   SuperscriptBox["hf", "4"]}], 
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "1"}], "+", 
      SuperscriptBox["\[ExponentialE]", 
       RowBox[{"hf", "/", "kT"}]]}], ")"}], "2"], " ", 
   SuperscriptBox["kT", "2"]}]]], "Output",
 CellChangeTimes->{3.537379169022939*^9, 3.537379225822369*^9, 
  3.537379351338608*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Integrate", "::", "ilim"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Invalid integration variable or limit(s) in \
\[NoBreak]\\!\\({}\\)\[NoBreak]. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Integrate/ilim\\\", ButtonNote -> \
\\\"Integrate::ilim\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.537379169080914*^9, 3.53737922588362*^9, 
  3.537379351341512*^9}],

Cell[BoxData[
 RowBox[{"\[Integral]", 
  RowBox[{
   FractionBox[
    RowBox[{"2", " ", 
     SuperscriptBox["hf", "3"]}], 
    RowBox[{
     RowBox[{"-", "1"}], "+", 
     SuperscriptBox["\[ExponentialE]", 
      RowBox[{"hf", "/", "kT"}]]}]], 
   RowBox[{"\[DifferentialD]", 
    RowBox[{"{", "}"}]}]}]}]], "Output",
 CellChangeTimes->{3.537379169022939*^9, 3.537379225822369*^9, 
  3.537379351343088*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "Isolate", " ", "and", " ", "show", " ", "the", " ", "part", " ", "of", " ",
    "the", " ", "1", "st", " ", "partial", " ", "derivative", " ", "that", 
   " ", "will", " ", "be", " ", "set", " ", "to", " ", "zero", " ", "to", " ",
    "solve", " ", "for", " ", 
   RowBox[{"Wien", "'"}], "s", " ", "displacement", " ", "constant", " ", 
   RowBox[{
    RowBox[{"(", "c3", ")"}], "."}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Simplify", "[", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"D", "[", 
      RowBox[{
       RowBox[{"Ih2c2", "[", 
        RowBox[{"hf", ",", "kT"}], "]"}], ",", "hf"}], "]"}]}], 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"Exp", "[", 
          RowBox[{"hf", "/", "kT"}], "]"}], "-", "1"}], ")"}], "^", "2"}], 
      "/", 
      RowBox[{"hf", "^", "2"}]}], "/", "2"}]}], "]"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"Solve", " ", "for", " ", 
    RowBox[{"c3_f", "."}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"NumberForm", "[", 
   RowBox[{
    RowBox[{"Solve", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"D", "[", 
         RowBox[{
          RowBox[{"Ih2c2", "[", 
           RowBox[{"hf", ",", "kT"}], "]"}], ",", "hf"}], "]"}], 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"Exp", "[", 
              RowBox[{"1.", 
               RowBox[{"hf", "/", "kT"}]}], "]"}], "-", "1"}], ")"}], "^", 
           "2"}], "/", 
          RowBox[{"hf", "^", "2"}]}], "/", "2"}]}], "==", "0"}], ",", "hf"}], 
     "]"}], ",", "20"}], "]"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
   "The", " ", "factor", " ", "of", " ", "1.0", " ", "forces", " ", 
    "Mathematica", " ", "to", " ", "give", " ", "a", " ", "numeric", " ", 
    RowBox[{"answer", "."}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"Solve", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Exp", "[", "x", "]"}], "*", 
      RowBox[{"(", 
       RowBox[{"3", "-", "x"}], ")"}]}], "==", "3"}], ",", "x"}], "]"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Based", " ", "on", " ", 
     RowBox[{"NIST", "--"}], 
     RowBox[{"(", 
      RowBox[{
      "Wien", " ", "displacement", " ", "frequency", " ", "law", " ", 
       "constant"}], ")"}], "*", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"Planck", " ", "constant"}], ")"}], "/", 
      RowBox[{"(", 
       RowBox[{"Boltzmann", " ", "constant"}], ")"}]}]}], ":"}], " ", 
   "*)"}]}], "\n", 
 RowBox[{"c3nu", "=", 
  RowBox[{"5.878933*^10", "*", 
   RowBox[{"6.62606896*^-34", "/", "1.3806504*^-23"}]}]}], "\n", 
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"The", " ", "quantity", " ", "is", " ", 
     RowBox[{"dimensionless", ":", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "/", 
         RowBox[{"(", 
          RowBox[{"s", ".", "K"}], ")"}]}], ")"}], "*", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"J", ".", "s"}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{"J", "/", "K"}], ")"}]}]}]}]}], " ", "=", " ", 
    RowBox[{
    "1.", "  ", "Note", " ", "that", " ", "the", " ", "result", " ", "is", 
     " ", "the", " ", 
     RowBox[{"same", "."}]}]}], " ", "*)"}]}]}], "Code"],

Cell[BoxData[
 FractionBox[
  RowBox[{
   RowBox[{
    SuperscriptBox["\[ExponentialE]", 
     RowBox[{"hf", "/", "kT"}]], " ", 
    RowBox[{"(", 
     RowBox[{"hf", "-", 
      RowBox[{"3", " ", "kT"}]}], ")"}]}], "+", 
   RowBox[{"3", " ", "kT"}]}], "kT"]], "Output",
 CellChangeTimes->{3.53737916916065*^9, 3.537379225970004*^9, 
  3.53737935141149*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Solve", "::", "ifun"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Inverse functions are being used by \
\[NoBreak]\\!\\(Solve\\)\[NoBreak], so some solutions may not be found; use \
Reduce for complete solution information. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Solve/ifun\\\", ButtonNote -> \
\\\"Solve::ifun\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.53737916926949*^9, 3.537379226053377*^9, 
  3.537379351514335*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{"{", 
    RowBox[{"hf", "\[Rule]", 
     RowBox[{
      InterpretationBox["\<\"2.821439372122079\"\>",
       2.8214393721220787`,
       AutoDelete->True], " ", "kT"}]}], "}"}], "}"}],
  NumberForm[#, 20]& ]], "Output",
 CellChangeTimes->{3.53737916916065*^9, 3.537379225970004*^9, 
  3.537379351516805*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Solve", "::", "ifun"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Inverse functions are being used by \
\[NoBreak]\\!\\(Solve\\)\[NoBreak], so some solutions may not be found; use \
Reduce for complete solution information. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Solve/ifun\\\", ButtonNote -> \
\\\"Solve::ifun\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.53737916926949*^9, 3.537379226053377*^9, 
  3.537379351522806*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", 
     RowBox[{"3", "+", 
      RowBox[{"ProductLog", "[", 
       RowBox[{"-", 
        FractionBox["3", 
         SuperscriptBox["\[ExponentialE]", "3"]]}], "]"}]}]}], "}"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{3.53737916916065*^9, 3.537379225970004*^9, 
  3.537379351525077*^9}],

Cell[BoxData["2.8214394802058274`"], "Output",
 CellChangeTimes->{3.53737916916065*^9, 3.537379225970004*^9, 
  3.537379351526655*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Below", ",", " ", 
   RowBox[{
    RowBox[{"a", ".", "u", ".", " ", "stands"}], " ", "for", " ", "an", " ", 
    "arbitrary", " ", "unit", " ", "of", " ", 
    RowBox[{"energy", ".", "  ", "E", ".", "g", "."}]}], ",", " ", 
   RowBox[{"if", " ", "k", " ", "is", " ", "in", " ", 
    RowBox[{"J", "/", "K"}], " ", "and", " ", "h", " ", "is", " ", "in", " ", 
    
    RowBox[{"J", ".", "s"}]}], ",", " ", 
   RowBox[{
   "then", " ", "T", " ", "is", " ", "in", " ", "K", " ", "and", " ", "f", 
    " ", "is", " ", "in", " ", 
    RowBox[{"Hz", "."}]}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"Ih2c2", "[", 
         RowBox[{"hf", ",", 
          RowBox[{"hf", "/", "c3nu"}]}], "]"}], ",", "\"\<Maximum\>\""}], 
       "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"Ih2c2", "[", 
         RowBox[{"hf", ",", "1"}], "]"}], ",", 
        RowBox[{
        "\"\<1 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
         "\[Null]"}]}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"Ih2c2", "[", 
         RowBox[{"hf", ",", "2"}], "]"}], ",", 
        "\"\<2 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\""}], "]"}], 
      ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"Ih2c2", "[", 
         RowBox[{"hf", ",", "3"}], "]"}], ",", 
        "\"\<3 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\""}], "]"}], 
      ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"Ih2c2", "[", 
         RowBox[{"hf", ",", "4"}], "]"}], ",", 
        "\"\<4 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\""}], "]"}], 
      ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"Ih2c2", "[", 
         RowBox[{"hf", ",", "5"}], "]"}], ",", 
        "\"\<5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\""}], 
       "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"hf", ",", "0", ",", "50"}], "}"}], ",", 
    RowBox[{"PlotRange", "->", 
     RowBox[{"{", 
      RowBox[{"0", ",", "400"}], "}"}]}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Spectral Radiance at Temperatures\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Frequency \[Times] h / a.u.\>\"", ",", 
       "\"\<Spectral radiance \[Times] \\!\\(\\*SuperscriptBox[\\(h\\), \
\\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\(c\\), \\(2\\)]\\) / \
(a.u.\\!\\(\\*SuperscriptBox[\\()\\), \\(3\\)]\\)\>\""}], "}"}]}]}], "]"}], 
  "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Radiance.pdf\>\"", 
      ",", "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Radiance.png\>\"\
"}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{3.537379164667402*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwdxQc4FIwfwPE7e0bnHJlnhJPXSCTh93uNNMyOQmRlZIU3yubNVSqUeo33
JSM7O6PyZlRKEvIivZFCRiQn4xT5j+/zfJ6vnMeZo15sBALh8X/97/Kpm3du
y9QaFXZINOQMsxs08dBkA31ToXGdzV39zm2j9vNVhSq+uRBPCd70Kugxuqk7
6SyYUgL+EhF1r4ZnjZ5phvhw+VaDP32hm1jw0yhadOv+Vt49mPzZpin/WRDS
08yMNpKbgJYcePyP4R1QLXTtCSuyGbj38Ib4MxSh81r/wRWfVhBz2arvzVeH
xUSB6fPl7eB3VU+lqkcHYp5U09byngBNUnLbj1lD4GOjB4RldIBi4aFotxkT
SMfVqm/Jz6Ewlks1YvgQKMRlMUMSX4A6r6EnNcgGah4Z7FmMfAlHVL+YODDs
wGBjLDwo5BXo56j3uxk6wgv9Cw/mfXqh2lmqrDH/JNw1EInVqe6DgtoZrbmT
HsB8dyr3bPlr6LOvt7rd4wV6UY1t94r6gZYZy6orOg2xEjzjS3n/ANfqQPT0
bCA8feDIvjt7AFzCC8gxNiHA53hXMSRjEJ5sVBbZzfwGNqwNs5q0IZjtpmc6
toZDRoaVz9fkNxBa5CTiPxwB73XzLqsnDQOXWZKhr24MKA4xywIT34Kizj8y
4kHx4Bdm8rIi7l/4dtpA2tb7d6gh/zE/F/kOTPI8K60YibB6b0pwV/gIeO+t
8IjvvgiGdD0Nv5BReJQS0WdvmARdN96FzPiMgeYPDYXy/BS4nJn+4qbWB4ie
PiPG0X0d1HzBSbv6A1AXbaiTJ9MglPtGVGj5RzCRWnFP7/kDRN/sEyCpjMOO
XEn14YoMuF88nl1bNA72W9sVy4uy4KfZnpbFvAkooujUj87mQL7oqNV1mUlI
TB8PPi6ZB6afGGMa2ZPQ+nWl+pxNPlxNfEM4k/EJ8ufcH1rN3AF1u/gb20Sn
YNkwwPrRkSLoV6DJV6VNQY7hTiq9tRjEn0SafEmeBvtCLp5Tw2XQnKYwcI1/
BkSaP8ykx96Fkx7dp9SSZiDmfXemm24lFBJlLvonzoKDfe6GSFANmL9+RuFn
+wypxOYHQV618DnvTEl53Gfo9dxeauFdB1rY3jkbOQfr67Ljhxj1MCDk55jE
moMGzlpSx50GOD9G+qwSPg+K59SNoroboSX2FL9vyBeo0s+ztjF8AIcfcVtN
+XwFcdL+D3fyW0Bry2OFsvgVWNWvdcIl2+Aa1bVHwWARksXte9fm2+Csx8Mw
u6eLMGlmS+Ypegy+7L4vAniYsH9I8Mjrq0/AuVBUmmHBBA+Qm5+PeAqmU8FP
GwaY4K09cOF6wDPQuyQj3iO+BD1JTZz0kOegptLtP+W8BEY2ETyjMZ0g4qcs
IvZpCfSfypb8XdUF419G3c+vfANJ/8qp0dBeGEq52nB93zK8r83muuzcB10a
+3jLYpbBIebt4jr7a6gLuVXzlnMFPC2jBuXd+iFh5fCWPmUVpj30q+StB+Fs
Ouso3WkVSk9vP5hNGQLfvcXF/rdXoXXIu3difAhsIohW2UprwKju0xK7MgzU
zabsTV0WXJqPJJeRR4B822tRNIoFYk2ys7s4RoEHREzVW1kgE9fVzmSNwtf4
oLmT5utg9U8YX8LSGLRw7NRvO/4dsrZtTdwRGYe6ov7k4b++Q3DdkJlR/jgU
H4j/uDj2HXKoK/X1WhOQcvndZTnfH/D811IC/cQkuAikvfn9/Aa8G7PTke+f
AptK2PXX3xuwLNM3c/rcNJhafYm9R9gE5rfBPZ2yM6B2/aDS5OVNSDRTGPkU
MQsbIltnzbJ+QlivlnWo3Ty8EtTl5XAhoKu7acJfdkzoP0LK7IkmYOmeKjbP
h0wYTlpQysom4LCwymaD3BJMcpaYqo8QMPFJnDnfyhJsbIrFO5wgYpmGalZr
1TKoLqyvVjiyYYvQU39WMAs01YYY5yLYsLfYeHFkkQW6fnVk4yw29OrIS48O
XQfjKb/db4bZsPy8hvZ65HdwfP8ukOjAjuGDRJH9+RtwuefRpP0xDjQpP23X
UkDAFIE/f6OGc2CuRfVJAyYBbx0OZ5v7gwN5Qy16qpGIuc/UqfGDHPhep6Q/
epyIjS25J8rtONFB85bCWy12/FSV0P/zKBd+8GZdmCFw4ed5F/cXoVxIsG/L
PuPKhYuq+os307gwlmH+lb2VCzeKlwRp/Vzol1Op65TAjeRcz0N0W258ujeF
bZrEi8apZm0l1jz49pqlWq+fAMYfri/rD+LBqkO64iXDAtjCqXBzM5kHEwYq
SzPNBVE/muBN7+ZBPi1Pux6Vbah9upl/6yAvmghny99lCaGiidbxY8Z8mH5y
Lapuejt6/MzFBHc+pMlOdbUqkzDvwTbVing+LCHYKHn5klBKc36D2MqHvWT5
15FzJBSVLimo3M+Pptx/Zn9iiSDXmtQCh44ApkHlvmNaFDStu/pGw04AOYn9
iXpRFPw98Hub028CaJ1TRGnpoODPiTc3a2oFsM9uaqTBWQzX+tL2OasL4qZp
aZZ/mjjOlPMw7ilvw2U7NvZkaUn00vguqCUojKpmw4zOE1S0eHepSFxGGO2U
6FJVqVTcc0nUkKAhjGw3hdiIT6nIMaYZ0GsjjHfMJhmLv8hhQYpPV+AtYexN
lV1n45bHsS8DF8slt+OVRuZ7xx4FdKyo3lJQJaHOr4WaS/XKiA6GGfz7SThK
Te1zXVNGFY6X6t+OkLDQOIx8SF8FWSemXB4HkjD8QtfR6+0qmM4v/bdbLQkr
I5q1fw7S8B+/K+dz9ETQcu/LN80UNbSkeTEp5mSMXMnLDI7RxO9Xw5pHj5Ex
5kZ0A3+hJpYuMBiF3mSM2zM+Od6liRz1xTt2XyRjJ6FK58AOLXxoNPOrZQcZ
67pZTZ/ua6GSnX/aBRNRJLNPctSyayMhLkR7ESg4HXp8vqVTB6s+Jmw2WlOQ
8FG+QHdNB0+Ypj2PcaVgwcerhos7dbGR994J/jgKEgWyxmiJuhhwa/mCUgsF
pWVtZ5tN9uLbsnMDzgZiyCPcPnyhVw/rBmLCXuiJ4+2iKfqshAGWMk55jB8S
xwkrAeuMYwZ4W/eI9Q8ncSyjpF7JSjPAK5nitF9ixLFYeKr6L35D9HS+N3K9
XRy9KcGaOUQjJE/OmDgc3oG6d0u+dG4Chn+jk6ZPSGBkoixoSRljQKH+1laA
BPqP3GxkgDF62MvNi8dKIG1Lhp3H0xitmhY6DudJYFIFJS293BiVo5IiqiYl
cPnfoY73+01wmK31Q1igJIYrL4fr+JjifpJqNUecFF68eCbt5ccD2EN0evEq
VQp1eK8xj/KZoxszaSI9TwqLqJ1CfNrmmNg3K0Z7LIU4NrLOzTDHnpSyeEtO
aYw5Rks323UQ3fhpR9OvSuMCx0D0h/hDmMihsqKcKYPW1NwgR1sLpCwfF2KW
yuDU37lCQvEWWDpxifbwgQx2RFYx16os8NXjaReLdzK4sGvPrKegJVISSp4F
y8jiqMyNppJuSyzbVMp8UCiL/LJirmt21ujzIy2nyIGKHQrtBY8O2OItq/kn
EW5U3B2iScp2tcW2fLPPlr5UPPD6MT3tvC2KH2Tprp6j4sSB0chn5bbYecul
70AGFT+EtWVYCR9FmroK+8wgFc3pP9hmxo7inNsjX1W6HPKkyNin3rDDM8+m
tast5fEteS39l18dsA0r/NWOyaNHNnfthocDCjcH3yk7KY+Xfa4pzyU6YE31
OqnwjDzq6HGdUnrhgEuZ/EuZN+QRe4xrxeiOGO6vUfP7oDyqqVBtlwKcMFr4
nNoxFwXs9Qs6+OW+M15x4tq5GaCIn5eb0m7+64ZGmgKrs2cVseu7gfm+BTdk
cpKeD0Ur4sfNFv0Fojs61EqfrrmmiLtpTqsMmjvu5NGp9KxQxOt0K6/ACHds
a/DU6ZpTRNevey3lpDxwVbjdLMNvJ97ndMs5EOiJns+jvLV8ldCnNYHYD97Y
zr3D1t9RBa12EuUlkgNQa3t8+uxZVfxNQ+7TgnUoun4zVLMKUEP2ASv2wfpw
7F+SYX9t/QsS/l8E/gfG/n9k
         "]]}, "\"Maximum\"", TooltipStyle -> 
       "TextStyling"], Annotation[#, "Maximum", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
XxV7ru/t6cELNr+A7x/vEP8HAa5Ohw==
         "]]}, 
       RowBox[{
        "\"1 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "1 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
         "]]}, 
       "\"2 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "2 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
N9NeR6DScofNgwMCjDL1XTv0LAL9D23kg9I=
         "]]}, 
       "\"3 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "3 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
/gcNwHae
         "]]}, 
       "\"4 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "4 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
Fqnifwi8XGY=
         "]]}, 
       "\"5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "5 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)", 
       "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {0, 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Frequency \[Times] h / a.u.\"", TraditionalForm], 
      FormBox[
      "\"Spectral radiance \[Times] \\!\\(\\*SuperscriptBox[\\(h\\), \\(2\\)]\
\\)\\!\\(\\*SuperscriptBox[\\(c\\), \\(2\\)]\\) / \
(a.u.\\!\\(\\*SuperscriptBox[\\()\\), \\(3\\)]\\)\"", TraditionalForm]}, 
    FrameStyle -> Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Spectral Radiance at Temperatures\"", FontSize -> 34, StripOnInput -> 
       False], TraditionalForm], PlotRange -> {{0, 50}, {0, 400}}, 
    PlotRangeClipping -> True, PlotRangePadding -> {
      Scaled[0.02], Automatic}],StyleBox[
    TagBox[
     GridBox[{{
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Maximum\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"1 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", 
              " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"2 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"3 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"4 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}}, 
      GridBoxAlignment -> {"Columns" -> {{Left}}}, 
      GridBoxItemSize -> {
       "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Column"], "TR",
     StripOnInput -> False, ShowStringCharacters -> False, FontFamily -> 
    "Helvetica", FontSize -> 34]},
  "Labeled",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, 
    GridBoxItemSize -> {"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
    BaselinePosition -> {1, 1}]& ),
  InterpretationFunction->(RowBox[{"Labeled", "[", 
     RowBox[{#, ",", #2, ",", "Right"}], "]"}]& )]], "Output",
 CellChangeTimes->{3.537379169503339*^9, 3.537379226275206*^9, 
  3.537379351641716*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"Ih2c2", "[", 
         RowBox[{"hf", ",", 
          RowBox[{"hf", "/", "c3nu"}]}], "]"}], ",", "\"\<Maximum\>\""}], 
       "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"Ih2c2", "[", 
         RowBox[{"hf", ",", "1"}], "]"}], ",", 
        RowBox[{
        "\"\<1 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
         "\[Null]"}]}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"Ih2c2", "[", 
         RowBox[{"hf", ",", "2"}], "]"}], ",", 
        "\"\<2 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\""}], "]"}], 
      ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"Ih2c2", "[", 
         RowBox[{"hf", ",", "3"}], "]"}], ",", 
        "\"\<3 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\""}], "]"}], 
      ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"Ih2c2", "[", 
         RowBox[{"hf", ",", "4"}], "]"}], ",", 
        "\"\<4 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\""}], "]"}], 
      ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"Ih2c2", "[", 
         RowBox[{"hf", ",", "5"}], "]"}], ",", 
        "\"\<5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\""}], 
       "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"hf", ",", "0", ",", "50"}], "}"}], ",", 
    RowBox[{"PlotRange", "->", 
     RowBox[{"{", 
      RowBox[{"0", ",", "400"}], "}"}]}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Spectral Radiance at Temperatures\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Frequency \[Times] h / a.u.\>\"", ",", 
       "\"\<Spectral radiance \[Times] \\!\\(\\*SuperscriptBox[\\(h\\), \
\\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\(c\\), \\(2\\)]\\) / \
(a.u.\\!\\(\\*SuperscriptBox[\\()\\), \\(3\\)]\\)\>\""}], "}"}]}]}], "]"}], 
  "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Radiance.pdf\>\"", 
      ",", "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Radiance.png\>\"\
"}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{3.537379164705263*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
7F+SYX9t/QsS/l8E/gfG/n9k
         "]]}, "\"Maximum\"", TooltipStyle -> 
       "TextStyling"], Annotation[#, "Maximum", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
XxV7ru/t6cELNr+A7x/vEP8HAa5Ohw==
         "]]}, 
       RowBox[{
        "\"1 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "1 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVV3c41u8XtskoeyVkhWS+Xvt9jv1GJGT7IsqKrLKLMqKMJITsFQpZZWXL
TGZoGClly874vb9/Pp/rvs5znus559znXPc5e+2W4XUSIiKiEMLn/3++uMPc
DO4K3PAffkfdKwkqtVQiPG5OcejOOa3bHtX6qMXvdZ6wUyaSyXbI6UpyR0+x
P6zoYgtRLA3++wB/KOqU9HSkcCpDAbMZRwEWsSiI5fjtcVYlMr3WxH4xMxkl
JWjiDmJq0Y279wbQehYqO/W4bTegHoWM4JZe7xagD4+H8FuO7xGnsiUxZu4V
Wguj/eVX3IJs6O/coh5/g4LbykR2stqQ6X9J4XrnaxE1idHN28kdaKQic/rE
cj1Kgu3Xf2O6EK+r4oF3TDPiv/d83TOsG/HaJJzqNm9D5Y3KmLWAXsTfaAuT
Fp2oW/HBuyXHjyiRjfxvzG4fKlFmuitbNojKK59krV0cROtTDpk+xZ+Q3Mso
vpeSQ+guJ9XsRtYwenQzJ+VAewy1vzMnlU4fQT6Bc3l/fT8javMSAc/kUUR9
Uqyh4v0kSk7Wd1yNGUdd0a768Ow7+obNeige9RmN0FTg5RlmkMDY+ku3sAnk
ppdWy2Q/i8qZny0tBkyhLU2Z/u1z86jnyZTnguN3FMmh+1VUehE9TEnqfio1
jejLpodTBpaQmBOykCmbRt/tS0qZb68gL8ongV7FM2g3dXz44+oaOtLENK1l
zaHeefsg/6ebiL0tQH055hdiZtotcyw7QPUJ/COPaRYQSS1LYEDHIfrvWp+D
WNQCWmHNyPP5foTyiLkjXMN+I0PWL3FucUQgBS0ffgcsot4/A4X9P0hAp5FS
/6fjKrrCGHNVb5oSpI6vbbGurSI/Ihfq9kQqeMxrM8CvvIZIu224lnVOgM+1
utvG7WvoSutGskQDNWj89GivHllHh7kOsy4VdDC7/NXOb+svKiIt8jZYZQDe
w9r0Q+wu8jo8ZRP9gB366bAnyKyJIDORzW1Pnh+GdBlTBoKI4Fshl6mFGz98
jloRep5OBLSW8lMV2fzwg7xQQ/wLERC/+WwL1AJwcMgWYmZJDCpse4ONkwIg
urK3XWpOAqRuOrqmfkLwcKDxx1UTMmDT+Hc/NFMEYmlTvXnvkMHKqarakUER
SNS5Q7L4jAwo82NuEJOIQmanOG/IKBmI0cup/7AXhZqmTMtiY3Kg4L2yXy94
HuZfhw4dGVLAjvNh6ulsMVCL02wuvEwFkSeLBy29JCBEp+rlkDsVVHKu93al
S0ATOf/TwxhC3rYLUg86JUAxiOiGUR8VDJ5+/cCGThJknOtpjvEn4G5MwUq/
jSQIqEuZmqhRw/3HI+OSx5Jw7SgTQu2o4R39tkMSoxRkvTspWhpCDWX2Ft5f
BaWAS3LpgPg9NajLVvmfuiQFLGcKc14p0cDT3FHB4yQpoNjhWiGTpYXzFfmx
q0LSoPHm0biEMS184peetZKXhvtu+80W3rSQ2aBc/vKiNBzNjT8tr6CFt+/i
TGZcpWFnMEHBSpwO5NreSXe+loaFYqrwynMn4U7ow1EjcRm4LrFPJ0VHD9+H
HesYmDFwaSoyn52bHs7b/HvkxIcBTCSLCpEEPdTbevxLksQA2XfJmx8N6MHI
nzU34BIGcmIde9wS6cFtT7vP6j4Gvi+PRBSfZoDcK7ofH//EQOfza9wJYgzA
cemnoPUGBl5rrlX7qzCA2vFfSfIjDNx9QTOPt2GAAY3GB1+YZYFLT039Vw4D
/LB0O/MSZMG8tOyYX5QR3FQdDdvjZQHMVJJplBgBHdnvM6fKgjBZr/hfXUZI
zo3nweXKwq7lT+tWN0bwyD8Q5qyWhSSaMw22FYygXfBP99+YLNytLTbCtzJC
/4b6MsN3WbhuL78oMcwIo6r0L4l/yQKm3ojzeJMRgjW3PtzcloVhl2i/F/JM
8P4rXsaHCQt1rOz04ReZoFveTtyEEws5rfmFNy2YIPqkEQnjWSx4cbaMKQUx
AYXNZjqbOBboe3Ywk++ZwM7wcZy1FhZ2b4f3tQwyAVVfNDBcwsL3s0wOL2cI
9leSBZlXsPDaX/ypHykzyAtbketZYUFP5Po6qzYzuKqVXVu+hYX9R7frv5ow
wxFdtvsFHywUrYSH591ghhPjOsN6flggqyrgkI5gBoyqPr1kCBbesNbO7T5j
BtPnLNwbD7Bg49/16n0+M1ied19NjCTEg1tQ1etghrPDoTrBsVhwyt6lYR5l
BjOlSpq2J1hgITsxNvmDGV78Z3v8OxELHt0iLk5kLOCc1bQ6lYoFbjFFjAQz
C2x49AkWvsBCb6zO0RY/C5To0BEbZ2FByNg14YE6C3A+MeUyysfCSE2glY4R
C3hV3E/OL8RCKMdjIQZ7FlBX5BOffIkF8aD0tXEvFvjP/dLRWgkWvnwrrcu4
zwJzPLpCf15hIVq1Mex6AguYvUlt7yjDgnxev75YDgs84P6986ACC0+dV2bf
tbCAlo/Y86IqLEDfUWnIJxYw8LmpeaoGCyvip3y1Z1igIxaRmtdiIf0Jj+rJ
dQLmUtkIf4sFnU0JmlEiVmDFC0snvSPUywRG0+hZQeD06mxUHRby3xlkXuNl
heKElwJ29Vgw5LJzFpFkBdGKFDauBiwQ3fOUWUOsQJ8o+KWOgF/PhB7WXGaF
J9HTCSqNWLDUSOgKtmEFXfEQqzwCpirMeaJxixVeBE+brxJwzYlKS5p7rFC0
Q1zK3YQFh5ttgkOxrMBbR+UjTcAMH4dXUzJYoS1LaViUgJukfryzec0KETdI
FykJ+Gbi5gOhJlaI+fD7SzfhPs4dMv3lflaoLk7p8SDgLnMW9qqvrECMmxg9
ILzPp0FwNmCZ4C/8lNedgPl4sKWqh6yAynr72gnxDYZq3aGiYwOXmbwDIgK+
+8MEPnKxQVWH1RAfIR9i2o7USWJsQB51yUOUkK+Jl74jVspsQFr2a5eNkM8I
2ocZ/JfYQEujPnaRkH/MrRSnP5ZsIM/oZpxfjYXZT0XSFa5skDtSd1OTUK94
zLsD30A2+Ovhv9/7Bgu45O5O3CM2YJZI5FUg1HdxbyKePI0NGDdpSGII9dd6
vy/wtI4NbuYGP/hN4MvmWZpV8x42mIn75rxB4FN22Ol3vJNsIErlnDJL4NvB
RWW913tscEEhwdI/l9AfI8G3u+XZwUNv3SrsOaGfwh2uzV5kh9/nDPfjkrCQ
gdW9/M+CHUDgz8y9pwT+pbCLXAhmB/E5XS26GCzYW1V+iW9hB5fjOYe5u1iw
oEvtfjnEDm71ccasgVgwaAqpaZ1jh9stiwfivlhQ5tWP3yTngJl/zRKMhH5m
/rGgbqbDAW94ms7lW2OB+tlHSU9LDlg+DP9JbU7gk1bNmeibHJB4o2LA1BgL
S4UPdupjOcC/+uNwoQ4WOly5S3iGOcBE1aNREIuFO3+NGH9ZcoKFX7RjCxWB
D3mKx8c3OWHpYZ5FGQkWrl09u8R+lxN6zQXMIg9kQb92pUMnixO+ciSKbK/K
wrnAKP/XPzihy11WaGRUFj6TvJ++7XYahIiqTN69kAUlRtEysntccHUsS8ee
RxYGiC26++O4gDNq5wMDmyzYrkfNJWVxwZ5G9r3yk7IQNvibTaSVC/4qyyq8
P8TAQOzLED3yM3Aoy6cvNIUBWxoRw6RHZ0DWWkkA9xQDYWTCW+dSuIGpLUm4
cE8GHP8lvMg34wXSr4WN9wql4VbnL5kyPT7ImJkLcfspAdEWFIKHNwXAy1v9
8uKOCNh3Bd6QchKClPK9hYvjAuCgLKS/fUsIIsL+PLJsF4AbFYOy9b5CYIOc
FXwrBMApTZBcM1IIVqs/jfY9EgD3Wx9zzQqE4C2GfG8dBCCAjX/m3g8h4Fi7
mCn6ih8SHHssB2zPQaZ7lGtYDB+0UHJccTUXhuesgnyr7rzwM1dcZ8JOGAyd
XvFcseYFWtBQ13YRhvvZAobNurxg5ndLlj9QGJROpVt1CvPC6kIHx1S6MDTr
adjOdvLAmR6vWZ1pYUhLmroRXsMN/o/7vEUdRWDvvddc6UsukGIISfrtIwrE
w0Sda9/YoY5qXLgrSBR2jWV3pNrZQY1IvD4vTBRyorPCo16yg/Hq1HebRFGI
ZrmaGejDDnf65UTGKkXh+L0XuSsNOzRErda3bogC2d4s3kOFDfAkNjNpHudh
Y97z0dcKFvi0V+3t73ceTtvuNUw9ZwGLdVoK05DzQG59TXc1lAVcp+tEGePP
A91+lbmJIQvENrH6PCw7D6wPGzH8m8wwEjBAcXuFcJ6cwbtMiRls/qqI6d8U
A9fVX+G6k4xAy0g0OOIjBicddudY2xihTrLV2zJYDMqdq7/slTACs7tWvVOs
GBDU+Q2Ku4zwYUFf50G5GKTU2+rL8zOC5Dcbp7ebYlCQlLe64ckARN2heXzB
F+DhvcR1K156ePVLHf8y/AJUyy+nHtPQgwUFxZJE7AV48JCSwWP1FFSpR8uo
ZF4AISnLn8MZp8CpKaHVtOUC3FErL886PgmDlbnTj8nFoXL4RL1MNx1kZXRw
7cSIw90ulhvXA2kgzUps/GqSOJDoPU4JN6OBJM6nT6oyxOH9n+PDXlkaeJxk
S+FVJg6j+4Z/etaowS/23+rSoDhIznqRxjpRw5W7Um2zTBJgZzVMfcrmBJD8
98J54LkEXCWvFTnvSAmHp8kELuRIgGdVy6dxPCXsTrh8e1QsARZfb68XiFLC
ylV5o4v1EqA2hTtbukIBU3rDyu1fJOATpSH5ZT8KmMwgo/p6ShL2s9Vpvz4h
hzexilNDhpLAVNlPqveVFOzSTpLXmUjCgHiO03A7KdAXzYpnW0iC8XZCuk8p
Kbi3RN+/dU0SSh3XmCmDSEF0c1KE1ksSzmQEvXfmIoUc80A/zSeSMCt1Zpzh
GgkkCDSwvP0oCcFre916RMSgKhWPMoclodunuZl4kQjWVBycI8YlIcJGsqJ/
lAj0TWkbjb9LgrjfjtCrEiKgjrZyWF+RhIeti8eRZkRwf/XgjehJKSguuV6J
cTtG3nUqBi8IOtkhnu2sHOUhqrLoIpkwkIJ+C4uN898P0Pa+QTXzVSlgsomc
Nqw9QH5KDpyPraWgSL1EFet0gIIaon8EuEuBacYXW72+fyiiadzPLF4KGs73
fop7sY9SWj2zmUakgAhXkUFiv4smrv0zuvxZCsjXtX+Pwy7iJA2nePRFCi6S
ppFOcO+iF+opriTzUrBnL/DLemoH5bQ3ya5vSUHUX18JN5MdVNJJ0zPAJg1j
0zgXP+Nt1NSTvxFlKQ2HtYlSR+6bqJx90DPYRhpW/4WenzHaRLk39tc87KVB
SvqK0bz8JnpIcnnVlKDjPRpPZBqQbiIjxd1FwUBp4Pkgql/2/C9aeKkz35Iq
Db4Nn7Lc+zYQU9Tq+N6ENPzBBvlSXlxHFOMcpstfpaFIyamkX2od7QpojE3P
SEPNcfdoOec6+tacMtL1WxowpQqx/UtrqGhX9dOzPWno2x5gsU5YQzinxB4p
Dhlgm46U9upYRU7aCo3OZjLQ3eMRwy2xjJaFOToqrGTgwxtFRT6yZeRFvde3
ZysDGdfhyHZiCQX2v/0S5SwDv0D3ZWzYEoo1kj94GSADrLoyRTlfF1G1jZzS
n3QZ+NbUwXkr9Q8i8ZN95zIjA3LO+t9qlBdQpDlLy5t5GUgfK5x9xr6AaJW2
Puz/loGHws63Cjd/IZajqs/RGzKweWjLZ/fqFxIOw+wWk2JgziHq6NzZX0g/
XkZuURADWklty30MP1FakVS1qwsG0opWT/Wx/ECdE/YfMt0xkGxI+Y1hdw5t
UCdNDXthYIkScy50cg7puO0TKwdi4L2atelU5hzal2rTp32MAetsD28/sTlk
Vm+8UPoKAyy9Uv7CerOIdcD39MoaBspkWvhISqaR2vFLcb4tDATE2zCwJEwj
d8kvqiZ7GMiKYNHR9Z9GHQmEkUNM2HvyBmd48dPIx/REdSyjLAyqqFuND3xH
w9Op+hIYWbiMTIkqzL6h+L+NoR6+suDBSCr8Pn0KuQ3F21kFykKU2/qF8dtT
SKfCXhV/TxZcT5rq8l+eQuS3ThDzRsoCadpitwnJFAr4YxzyMYlwv8+tYX7X
SXR9ZvGueI0s9E55/uLWmkCKHzmCljZlYf62e84yzzhif71k+XlXFo7EOj3o
j8fQ1uP3Su0E3cATmt5u820Mletc/5dGhgW2qsnTD16MIcHO8gBdZixYmbN6
jJ0ZQ/SN2v7FMljQbBZ5d09oFM0X377j5EXQpYctZc4mw8j4zNG3ojtYoLUo
0bSTH0btcRHavwOwYIJl8g7nHEY5PsnsLoS9ZUldOd3w+xCyxb2rcyXsIVo8
9B57LkPoy6eDI3eCrvzP+tBCI/oTGtl9EHl7Hwvhgd9OeQ58RBqutGvVRwQd
Ori6nJX+EVV+TTTbJpGDR5LkyaddP6KE1nwRXxo54NcxyF2l+ogMHnf1+nHJ
wQeqDilK/ADq46GhD8LJgbcMt07qcB9q00pIuX9fDoQ7df9LP9ODftyo7w+I
kIMJCttKrp1uRBb5g8Q7Wg6o6ImfDQ92I60urJt9ghxU6cRPzIV1ox7tKVWN
HMJ5JcHgiNUPaAgvsEjeKgeDxbX/ng10oVmdGpUoYnl4wFVDclTRgUhdv3uF
ksvD1KXNjg9POpDAI6oi/xPyYH0skNLi2YFu9FowujDIE/Y4k1vK0h3oj+7x
T52z8kBNusZvUN2O1i/h42lV5UHFdCqwrq0NEV2enI0LkYcb5BXUxESt6EPT
VX6fMHk483WHPnu+BcWLf7I3eygPi0pBDjd6WxDvyQ8/eOPlgevwiqhtcguC
/uqfFZny4DwY2Uwt1YJCdJ/8GW6SB2HiFGsG12ZEhMdvsB0S/FdK52XXG9GH
2jbpAyIFqPRnLTzV0YjizyHvaTIF4B7eshB+3oh4KbGbRbQKoFh8UZ1FrRFB
J/+2ApcCPEl9OjCc1IBCNI73LJUUQLvi8t9U3Xp0DDXEWf4KgGvjP8E7/RZZ
aPzq+RysAFjt3n7Ot29RlTZ7IsN9BTj/ZWnVKP4tctIPEHoQrQDBzL6f76m+
RYOWON0baQowLXJWtKqgFmXf6UwUa1SAy/dW1lBQDVIvHTv3jkgRpMnp0iOu
VKGMMsr1dTJFCCLH8uZIVqHdN/J1oicUgTtfXX/9VBUqfZd6KZ1BETIWQj1E
PlYi5q7/PO/xKULkzWPb3cuVaH7mZ52mhiKIxt3/O2DxBkWy7egNRSrCm1OD
iQ5Py1HChw9zrY8U4TJmJk86oBxl+Kf6V8Ypwu/VtkVBu3JUM6WSn5isCGbq
3jqBEuXoR2bYgUmhIsw7RAjUppUhVWHGkqlORdAohcFovtfon/wFqnlyJZh8
//FEz7USRPHn6MXoCSUw45njXZcvQYxpgzKddErwuq3Bw+RUCRI99LYpZFGC
6InDq5MNxcispa7GWVAJAoxX4ho5i1H1Rfz1FQ0lSG3bZiqYKUK3LOxbdx4o
wWwhWcO75wWINvPPtPJDJTgcrLh+xqcAFc95Hoc+VoJzmWbUTfoF6OfNEGXa
Z0rQ35fVWUVWgP6796KGt0AJ6C68euvmnY8u5Y0XX/ygBFOLtPUNlnlIeEX3
aRqtMogYNbQ4XM1BndLDFdP0yoAu+G68xeYgB1+LQUEWZXhEoyCF2HNQJpEz
XfkZZViyKUmfnspGrEwRke3iynDjnkWW+/VsRCbfHLhsoAyfaoXDfEKz0HQo
xgE9U4bvJSfDDWpeIEHWk7Eez5VBImZxRj38BXIp/lWb/UIZ6ntijCKMX6C/
Q6k0ZAXKENQ7FrH9Nx1RCBBXfqhRhiGK5U93sOnoQmc/seFnZdiyL/WK7U5F
AdSOmQ6nVaA1q+LVnkAKep8B3c94VOC1O6/j8kEyIpPh/NvJrwJcZi8Y+UaT
UYxlv5aImApYCg0VXIpIRlmlMivLyirglu1dm7aYhDr1iVR8/1MBnHgQRW/L
M8T09PlkVLYKXEi6MPH5+VNEPcr0yStfBUhyDtJsA58iIrbYLsuXKoDVSXrH
av0ULaXer7pQoQKugWsbtGefos4c19hPzSpAdYZ+k6MkAfm9UVHjmFaB7ZRn
HEFdTwjzdOZlETcOUgW9LuXyxKMhJqusJ3w4EHtb8tiPIh59uDqWFCCEA5+c
otiFyThUPdHz4JI4DobYBmMafONQ7Eyl9ZoKDj6LpwUuVcUiWA9nkLfGgVf6
DCONSgzKpxf170rDwcHJSAnL0Ggk/tN8lywLB0tEm0xGxtGopj7KVy0PByIi
cnvPzkWjzhu/bzeW4sAo1f77/kAUWmgo8qpsxEGILsOmzNkoJOZ87mbmdxxI
Rtl6HwxFojctAja+/AjOP8z1H3UKR4rJxt+qzhHwpSK5yxrhqO1mmPXGeQRv
UzPYKXjD0QjbD0s3DIJhGvYqkc9haNst18xeE0GxZ99DFd0wpMDJZ3jZEcFN
nyI7deUHqNmLR/NcCQKPibQLGtqhaH9rNZ6rDIFobcGdnPOhCOPf/IWhEsGo
Xii/GH0oKrpn53NQh8DA6m5G80QIin+cm/upB8GjetGFn+4hyKbgHEnQHwSz
zqn/plXvoeOlZJsFZoAy0WyuJxpBKF08hHyOFaDx3NicNFsQkvdwKvnKDrBU
8R7L9ScQef2V3xniAsA1RXe2xQein3sTsY0CAJfxrDkWMwFogIKrKQEDsDVb
eHgxzh9l8GZxqRgDfKOsJr9+2hedjJb6cMEEQN0y0e739h1072+rN7cZwAGx
sW3B0B1k2znfc2wJkDpiu/Ih+g7iu3nev9UewE9i47jg8DYqqK0Z1fYGaCNz
Ebu77INe6/fHGiYAPOV5cujy1wtxv/1PUT0RgJU1ne3GqBeKO7s2L5MEUJjJ
sh9X64U8NhlVWFIB0vu79t2DvJB0qtnieDbAqSv3ZQypvFDN/Jy2dQUAW+kg
p6ewJ2oM2idyGgRYIfXGh9HfQttlP9fuDwG8qJWU2Zl0R5JzQ9MvRgBM6f4e
tue7o7yLJc3DnwE0tIXG3ZXdUTSrVQiaAXi0gNFedHNDJuWNx6wbAK9r3xZR
zrii1bmQow4mVXjHQyVIQuaMhNncVqZZVIHuhE9Z42cndE3H/Ns/NlXA+HKt
tb5yQmPlUk1SXKogVZJWWGTmhBqCZ4NfCKgCkcD93OEKR/SQTePQR1YVhoMz
tpDnDXRWl/KA31QVKA8qKSzOOiDMqPoQp7kq9EpocrUQOSAtm5AiBksCNpWX
s5q2Ry7ee8bH/6lC0IaD3IUse1SVtvhq8oYqTMF+ghSfPdJa+mjz5I4qvJow
m7grcQ25xKS0HT1ThYPNrTkuN1sUxDb6fCtZFQYLB4puGdqi2GwGj6XnqhB7
oC24LGeLKqujuSZfqAKVvIe8I6ktOvgadLs6XxWcQheos+VtUJy43bmb1arw
WZJlMbjEGlV9FHk0MaIKxVEL3G96LFA8f0v+/pgq7PrXKDqlWSBXX7Pm0xOE
9wWPlHrctEB8PJFb1l9V4S17ju2dUxYozv2Hzey8KnDb+gxpmpsjF7pMzOK2
KrSLvpW5+88U8eoyfztgV4PQ13un+u9cRQcZJbtnTqtB1a5ce7/BVTS+ocaE
zqhB0pVnU/Tnr6LYVE986Fk16KpOcbWaNkb/fg+8IRdVAxkO7tYDPWM09jAq
8qSSGvjKrCuRyBqhx51HkrzWapBSTbejIXEFgedPqTM2aoCXc9HvZLyCNk8P
SHPaqcHA5fFLd7YNkJXnCwzzdTWIdTRjtGsyQBe4lOWp3NRgKowtx9zAAA14
+qO1IDWoMaPpFN/TR/RnNvWa09Xg7vfc4pYFXdTeNaXfmKEGloVDvZZ1usjP
q+1yXZYahEUjbrXHumi6K+FKVZ4aGD9Rc1mX1EUVXlJXi0rVwOxj9pX+YB1k
+MHdKr5BDeb3TzsyCl5ET71/u9h+UYPyee7m2gItxKkV4Gn0TQ2ORroFq0K1
UA47jZ/WtBo0p7AbLFlpoTeNYuFiP9QgOfLenZPMWmiQ0iNzd1EN1vtXO06F
a6KT6dvD8f/UoDL2knCNpwZ62E6q0sKpDtODgcFi3mqIPjlRvYpLHRwfkHz7
a6yGkp0FdQq51SH2YvWFJawaKjipbRrDpw52xg7X3P+pog6zaE9zUXW4TUT1
pjxCFZEs0xesK6jD/YSSgz/5gIJYuE/xmatD5zs+omBqHOqvOGGBLNVhwsCx
iGhUBXHrb+VZWRP8Xa4FzmaqoPcRfYrJdupgcH6fqQmrgkh2A27QuqjDLRci
9zYnZRQ5Od64HUC432hPNvirIkrIfHKzN10dKM65qCWRy6M5peDahQx1yCL7
z6lmUg5hPjuRUGSrw1LvN+Arl0Oj9JAC+eqg4RC4P2kph9jvr7RVvyLE/5nF
rLUGizIcdE9nNalDGa3M4J6/LHopQt7jM02wk4c0vJeWQUNcqv/cZtVhlLTW
roxRBh2cChZz/KEO3g6tZCMb0kh/ezPWfEEdrnH3/KmrlEabrT+McGvq8Gn5
1OyWnDQCq/avlEQasBxnmjR+UQp9jn2wnsqjASdYQ/WU+CQQyf33fIlnNSDR
6Mk694o4On/7n1EMvwa8qEteNKsTR3ctvWvundOA68wbpf1G4khA2D7QQUID
zD+5CZVEX0C3WtTIxZEGUC9vTzZRiiGKTWKOlv804Iud8/UGJRG0W54S+8NW
A/gNnNhm6UTQopsEGZW9BjxLVb9oMS2MBn9Zreo7aoCdwqNZFCGMUqdqO77c
0oDc/5TPDI6eQ+Jtbl67IRpw9k23b9QDIWSSMNErkasBVm4UIrUsAgh/2UPV
KF8DCirGmfjX+ZESLWXtnUINMOC22hvs40e8EZicxhINENry/bYWxo/++Mf5
6VZpwDXHSXvMLh+6a6cp6NihASN1fpGOf86iQsmKuxm/NOBK1xMX7i0e5M6y
vlf7WwPotibnJ+p5EGZf8vanRQ2QM+im/XefBzW3lbuSrWnA4i3PRFdGHvTZ
pNzMZVcDUsa19DdkuRFVcJk09oQmPGMwsyeK40JO3a9+9otqgrBFBltxGAcS
f71s90tME1bqqG3GTTjQZsKFr0QSmlB0y07KRIQDhVi9GpaR0YQRGkMFrY/s
KGW1tPm5kia0Lov9N83Njj6wlKZev6QJs98fm4X1sSKRa8X6h26aYMZu2bll
zYw+vFAs37ilCRg7OfV2JWZ0Y6KHYcFTE/KPhAp7OZhRnsHiyNBtTbDv/fzq
wRgT4kVilkXBmqA3OJcaa8iEWLleOxrFaMJcdMBRszEjIhmrCHlZqgkq647P
Ve7Ro2wGtdmM15rg6jJje9eeHoHekHpiuSY8OnnPbVmbHgW3b1Dcq9KE6owj
gasM9IT9RibGuEET0j+IZoVfOoVW4qqfH/dqAsuAdOCrcjo0dfHdm6uLmqCf
xqy3VEON1C7nmd1e1gTHi7/Ono2gRsXGcUeJq5rwJXnR9PVVahRgc11n5C/B
/46J+8etE4jzNsOs4YEmeA34SZ1WPIHMspwZDOi0oNj6xq7RECUa2+bw0JHQ
gifp/ZGmKuQId0DG6iKlBWH1LrH+rOSogHitPkpGCxrkk8/OrpKhO7SdlN1y
WjBDu7URlkuGWPi8MrVBC/iVZFJIT5IhY72eAY0rWuCuzucRsEqChnIDLiBv
LXiZW/5EcIYIMRLVvFO8rQUf/a/Po3YiZGS1ron11YIcUlL9R4VEaITZ6b8L
gVowdI6EucqdCI2HX407/UALmvMjWKOOjnFfHCXXdxK0oLJLE+QMj3Dz539W
lb/RgpUpMYmzSv9wQg/PqpZWaUF9MmOfO+0/3I0fVv2FNVrAxB31nebbPm4h
fXg+o04L6EeGDKXv7+P+0LWwxrRqQe2f87tnB/ZwK6tpfs5DWnC8XOh92mcX
t1t5RZlvQwtIXc8OnN7awtHKYweYNrVA9gHP7NnBLRxvA6ct+bYWSMdatl0v
2cLh2+ceLOxpAftBqHH+tS3c85Hbva+JteH147aC3eFNnOLWcwslBm2QY+Uf
eN7yFxeEnfUzltQG8wKHKEznOi6+rpNaS1obOnqO9xWK1nF5uJJ0OQzBbqqc
4Rm9juvT8mnmlNcGV4V6sTuX13FnTCmoZpA2LAVFufVOreGafEWT3S5rg0h0
Yl7z/iru+K1XdYS7NpQerMgqtC/hvlC8eZTjoQ3HrLftw+KWcHXG63ZNXtpQ
UOzpJWG5hPNZu3Vy+442uMn/Cs35u4hbOOfmeP2eNky6lnT8Fl7EDSU5cmjE
a0OAFtsb17zfuHwfq2DiN9pAck25fmXyJ+5+a5rRmSptoMrL4T8s/4mzpZ8S
UajRBjKRogPTyJ84zlLzMY86bWiRyf28hvmJi50zkZhu1YY4tRKTrKfzOD/D
KzNNw9rA9Fna+/5/P3C6klqaQVvacIbR6O2s0CyOaHSU2GdHG34vNkQ0Uc7i
avyvN7nuEeJziLj+cWEGx9cWJmd5qA3i5t+WY0tmcPtX20QUyfHQozUdHCgz
gysOhJO7zHiYNwk/8/7SNO5El+K4NwYPG6EfY65pfsU1ufY8dcXi4d0HpM3O
9BXnQ29hYC+Ph7UG/VH+mS+4aXP/bkNlPNhUvhBVvPsF93aptl5KAw+v7F1O
GjdM4ZwYZbNWjfAAk3QurdqTuC5rCWdXbzzQv4tpnk8exzHaO9W/uI2HfX7j
5ecu47j/nLLpBn3xUC2TH5KnMo7b9mJ6gwnCg7tqtl7djzGcwMOd/cMwPGQW
jf4cw47hQt68fxyfhIeCkH1W3T8juL7a3W+tKXjC/JqPPt06gmNrlJLaSsXD
9TstNfKpI7jXXbmj5pl40GV8uW6iO4L7+iWSm78ID+R9apeZKoZxipQG5dXv
8HDCTWCBIXoIF0EbRbJQjwfrsuxd1xtDuE8MrcacTXho31MQolYfwjlxYfbu
tuLhscf7EfrDT7hkKXY1fC8eGj7Rpij4fMJtWk4PT37Bw1GMafhj90Ec2HEI
0X3Hw31Txall/UHcoxuGfmgGD/JM74oeSQzi+DzbufLm8SAbebp5a/Yj7kpE
0XW3FTywURr1YtcGcOmPZmoz1/BAVUgsWVQ1gFuI56Qe2sBDbZdi+CP/AVxI
2uPX2B08lDLvZOWRDeD6sjqInPcI9fiNr//c049jKzgyTPuHh/WsBrfAJ/24
ayVy+f2HeBDPEvz5yKwf97rcY+f4GA81RXNGJ3j7cf8Dnf4iYw==
         "]]}, 
       "\"2 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "2 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVl3c81d8fxxGZyc52bQqlJFnn7XLdWyLulRRKKTNlr4iQlU1kbxnZoYiv
TcpIpKSyI2RkZ/zu75/P5/F8nNfnnPN+fd7vcx5v4dsPiHepKCgoKMmP/79F
ovZy0gUr1APP0GFXPFPUaumkheyto5DSGEtW5tGrqNmjNFfKOgPpp00VilO4
ozjFKdMjkS/Q6w8TrOx9oajjlKPVYesytNjX/t/IeALy5jx4fZBZhRZ5/spW
DGahhFic+m5ELYovsdPDpRaisqPhrVte9ah2T7LE4XYF6gofIKxb/Yf0rixU
/MyrQcuBTL88ipqR/sbpf0cS3yKf1jLpzcxWVDST8kQ3uRkxUJHuuSa2I7Fe
0/449XaUABulfyM6kfe6+7eic++QqG/SimPgO7S89h92KrAHlTeoKix7vUcz
rPyYd2wf0TvlgDcLVn1ofZOwr3PyMypWZX90tqwffZw+lvN+5wta+XYnw6Xo
I1pQrhIo+fMNPeKlm1jN/IRAXB6LkRxHbW+uHTqdOogiOPaNckcnEMO1YjHH
xCFENDodX5Y3hRIT9ayWIobReHGie5XjLPqhmBkiF/oF7T6+7GHs8huJfV4p
tA/8iqb43Yy+hy6gco5nC/Ne35Du7mKIg9sy6o755jhr9RNlnbTdlsKvo5Dn
Ce/i5MfQF2TKXx+zgWSs0fUzZWPohFFzPM/0JnKijXnoVDSOJoO25ebzdtA+
TqFxOXMSGR0X9PqqTQFZnN/1ogWn0BNJoVhVZkrQmn7y82TqFEpBDD41Xynh
aeAwxYPEabT3bOprp/ch4G710lyM+IXUHHjOEVcPQ32s6GA44yziatORNvtK
Czduf7gjEzqLMFV7dKfb6CCXUjDILnAOXXcLGGbPYwB5aO6a85pHqTO3mypi
meFiA63ejNUSsn4h+DQnjB3kD26vcy0vofc4qzUXCQ4Ix9zsFVVdRijV+qN0
Gwe43K5zNWxbRti2u/ckabhAa8ahrXpwBfEceYb9nMoNE4vfb3ms/0UlQh6H
zwsKAmavNnVPcQsFbyTqsoiIA0f63WXOh1voHmfvr90QcaBD7Fpy/22hE86u
CcHL4rDkd3/+Bn4b2bzvfGbfLAGN1OLKTVd30CHfo9HnbaXAjCl22N9jF7Ee
5Hh3Dp2AniOK9NRmFMBcnWUc4i8PAzpsz3u9KeBvW1lewxt5+BL6RyIplQJu
bbbS8qzIwxTNCy25UQp48LCvVd38NOzuHfMzNqEEsVV/m5NwBo7/2d54eY0K
INQ15S/NWQjpbZi6YkQN+3YXzF7lKAE2Ctf04jIdqDc8eR9OAXD35M4R+SMs
YF685CRyoA2XvgXncQuygJ5j5eNBPjwoBHOqUZxkgbgLg63OSnig/nnqXp8+
C5xg9eT2dMRDdqRVt308Cwy6iqQmTeDh5+JgUBEfK+i3X3hM10yAay/LDkSP
s0HJp6poO/uLAMZqiYwqbPCwxHjULvgiSFG/l/urwwa7xWsUhlkXYctkxqzF
ng1k3tZc+DZ4ERIYBd6aV7BBgaSMaIuyDnyyDfNIU2KH7a8f3gxSXgJd6bsr
XHgO4HlJo4n11oWdp6713404ACZ7sh/F6ELBnydPci05IGzL4Fd2vi5Qv8rn
OR3EAbVPFr5k9+tCnfqshm47eVzfMviRqB5IGNrFBmhyQkuQik5imx5Q+Dqe
WUZcsCmaNPXn72UoHX+8V3OZC5xXZBppDumDiVZsp89NLrBv4TlOy6QPNfRV
Joy+XKBOLNSfFNCHe/FrARKNXHDsvN9dCg19+FroPmiqegyyq6kedgfqQ+Wg
j+s7JW6Iv809GUZlAAVP7tyeuMANlx+ZeT1jMIB0RZ3L/65zA+1P2thoNgMI
e84tLevDDZ26i+rGIgZgYVo1Gt3MDcMNPj6yGgbAMTWraXyRBxivCrguPTQA
hmd9pxxNeKAEc36JMsAAKLRrBMLu8UB3Dvc8dZgBLLwI2KyP5IEoOk770UQD
aLcTLBb6xAP/NHNaP1YagNtfEtsvE17ASKbcH542gHu5ygcH93iBY/LuyOq8
Ady+IrzA/YgXeoIH5/ZXDECv9k/7xUxeODUqTTG3ZwCSD0M9S6d4wbLwtTUN
JxG+UP035mrPB9yhfc63gQi9VXk9kY/44ERc+vtQHBHa7oTXvYjigx6zIprs
i0So6LgW/7WCD976VJ7JMyRCWNgaXm2DD0oXHx/atCKCCtvxMmpffpA+KML0
PCXPR3n9XU8UP9TZ0fmuRBHBfCV0MiGTH47HLGbQxhMhsH/umHQLP6SK7AJ9
KlkfWeinSyMAM5Lni24Xk/WPviZzcQlA6qBhB2cZEVbt6at/SgjAgz69z3WV
RDimazPnSBAAu+3V+ZE3ZD2jNDHhqQAIq8QUOHeS9TvG926mCoB4drlAbTd5
vd8hQVIlArC/Wvp2oYcIhe9m6+p6BeDpdEK83CBZH1wg+pNVEE50zLkeGSPr
qaXWJZ8Lws2NBn/1dSJwrV09ulIgCFiVQ/QFm0QomAyWrnsjCB0na+Wpd4jQ
0/LL7NI3Qdh3yguL3yfrH7/ocBAUAiH6i4iLlgQFDsNj508Kgc0J3QZOehKo
mNP+owIhCKxNE6JjJIE5sjr57JYQZL7hqmpnJkHhnsTzN7lCoM7URpPHSQLV
RaNK/2ohKGCVT1A9RoLe0aAPOh1CYHSfXb+TmwSr9TMUP34JQcn5VxY1fCR4
UszF92JLCF4P6fbxCpAgXDeH9zU1Bs4NsYU4CZJAUO2TwmNODPgYEGl2MST4
pTDfPC2AgU/cVKOyIiQolzl0+aIEBgqf4sVIoiTA8p+xYT+HAXtTFzkPcRIw
cuhsuCMMUBvMUHlIkGCQ0SJgFI+B6QGq+3aSJLD6F5uWZ4wB14dNsrLSJIjX
W2j1NMfA87mH3H/I3JSF+61rjQHRk2NGucdJsLCWziLigIG4pfzlyydIwE3Y
Utxwx4D4TPTiMpm1UgzMun0xcOzD3SvBMiRw+FMUkB6MATG0dpJdlgSpGtRF
TlEY2H3B+iSezF3xZv3aiRiYxCSbMsqRYO1XzQZvBgZCTB0a3cmMUWERWMrH
wM9wn8qvZL4UaaPZWkrez8UKkD9JAo/xFpvEGgzseVI6PiJzrgJ/tF0jBroV
bXWaydwf7FqDOjAwX7M4vE3m3ZHeUfZeDJgrxAtKnSKBtJzUodkhDBgM2kle
IrPR48fSb79jYDQyZOcumf0HRy5HT5P3x0Wd6UrmUkkFtzuL5Pha9oQeknnE
KyJVaR0DHI7J/m5kPtw708K0h4FYd+p+KzKfFoa5MWphaAu0Y7lM5hsuSUer
mYTh01PqSzJkDutcPRvKIQyPXtI/PSDvr4b3kqkZvzDU8NUNdZF5wj7PX15M
GJ4xXVcIITNz834BjYwwQNLpMjUyK3MY9309IwwbxTF6c2R/LK0q1ktUhOHK
7Dvep2SOrWPg99cUhoz40/yiZG48cgdrpCMMEgGSJhVk/+fNG6yPk4Rh/B/d
2Fkyc7/iitq/Lgz8+SpV5eT/p0XrUD1wWxiQk9R3YTKnlohQPXQShsN8c0a/
yPnQReEtddlLGEZ9c2pVyLxGGtIT9RcGp/mp6CBy/lzaCU55HyMMoStrvQfk
fPPQHW/OSCJ/v9alJUfm3EzlWecsYYjKlrtCIufnrvaiAn+FMOycGrd6LEaC
kjhi771+YVhM3te6T87/kZniNfhCjpdw25coRPZbmYaPc0wY9PZYkmTJ9XJj
rNaqYUkY/E7MhHeR64tZVoCS+agINItJ2sRykf3yc5Oc4BKBheEn0XLkerX8
1KdbIygCLE+yRpvZyf54+iffkBOBlc0Nml4WEjzo+HWmTFcEXOgnY3wYyPUA
L+1kjESgj2MnsIyOBCz1DjmFN0TASt7o1vBhcj2WbbPlPhABybQSKvpD5Hp/
zrj6PEYE9CgPhNfJ5w+WvV+aK1kEbtmRkoa3iBAXEX8rLlsE/nNoIpVvEEHB
X+BjRJUIeDn+adRaJYKb3cly/yERyDqQKtqZJULH9N9fB99FoGa+3TV6hny+
mr8W8pkRgR7m0h/8U0R4bagR5b4pAoT7YdU8P4mwrUa6f49HFNhmX1flks9P
bxZ3GSMzUYjpax2kbyTChzCVO5/uigJNc2YTcz0RBGgoUvXvi4KJZOA+w2si
NG6HMOr4igIm/nHaXAURKCaTf6MsUWDi4M2FPCIEVDcWSE+LggzVZsnNMPJ9
c/2w+N49MTiTh5Er1yOC+immjTkXMZDqkT6yTb6fVmjYOj97i8GCPl2cCp4I
xhUCNuXhYrAUK11bgoggTne2xOKlGJxQLjPBnyJCU7XF2e55MTCOapy4ykKE
DZZmXKKtONgqyL858YF8n3c+tJS3loAT/J8OHisYwB1VCb2NBxLA2xP9Kvak
AVhW9J+td5cAtfCSGxnHDcA6RZwGFywBz2esKl5iDOD+g74c43wJ+JBaKPac
yQC8jomO+05JQMLorYHXk/oQa9Vt0msuCbYRRT8No/ShmZbHwO6aFIzP4Y8x
1F8GeVa/hDmX46BTcftup+8luPlXTUbvngx4YnGaouYXIDO9nX8zQg6OJ9Y+
5WfQhspI5W8DxFNgFTvbB0tYcK5T00+7JA+qRlTxT7EAjd15q6Emp0HgTgh/
EkEFrPHnG2yMz0DQkloQy7oipBTIV9vZKsDON1ai29hpiP7b8NjB/SxIxId8
KpmVg+kiVzdrJ0XY1hsJKXwoDYYC+z8K3BTBooX9Nb2lNLRFBeHnvBTBKvN1
lKe+NGS7JHLbBihCfcNVnhBxaTBXf1NnF68I/EUiDTf7pWD04+7+/RpFoJt0
9F6VkoLBrYBg1x1FYDZwuvxgWgJatWOf+/ufg0uv4naPhonBlGV9j1fQORB5
G6Ou6ykG1MFTVM5h58BIBu+cYC0G2p2K9hax5+Ao2KRcwotBN/6bhlb2OSBa
pCvgacRggCA2T9NyDmwdru49CBCFiYs1aqGUSlBIVZFpESICFJdHJqL8lMA8
uWrKuQoDXY1XRF0CleB7bq9JSx4GouU+WhiHKMHLn7y9vM8xgGHumsJEK8Fe
ES5izhsD0FM9U5GhBNP6UkN72hjw04n5/alRCRofFbBvvxECCgJh9dieEvBy
FcRcwQjCAdRQZnqeh1aNnDxRMT64rvWr+4vPecieI6p7MPLBKzx3PKv/edgO
tGIeX+UFaz0viYCw88B84aTgUjMv9Juo61imnIdvvja+/8x5IcutI16m4Tx0
1CDnd9k8oPnys+QbCmWQFXWNHFXghuBjm7oDwcqgblrDSRPNCbFdXZMtT5WB
R5Xt1hUfTkj3TPasilKGdQKP6ytbTqj5ppYXn6gMhJbrfek4TpjKCNw1eqEM
94UOnRPd5QANKbbibx3K8E7BRmHCjgP+KcnSTdOowKZfy9jaFXZ4cN2iZTNA
BZ6ZONWZEFmBKeP3mGqICtgkKWq+12CFoknHg8fhKnCIYGJ5QZ4VZu75qTI9
U4Fko3k9RxZWuOGbVoPJV4HuP5EO9/tY4FLucNGFLhUIz1/HcZD7Hqk/OnEp
TKogzIJhCqxlhrHHCnfQM1UY/Wv6tUKBEcS5mCMdklTB7m3qXjkvI9gW/arN
SlOFzw9nUCcFI/wdSGakzleFY1PhQ0o9DHBYjLKqq0YVIlcNCXJWDCDb0UNJ
/KIKL6q9w4gZ9ODFYJVxh08NbvuWtVNj6IA9LmkkNEsNrmLLSo1u0gDDEPtH
pzw1yHhy79G2Dg1QHIvsNClUA/xDn8aXSjSwkOz/SrZCDW4GKZtpsdFAR7Zd
5McmNbj7V71GsYMaPCrVsDxjaqAheGObX56aXB/jhQWC6tC28cw9me0Q5LEc
9+xMUQfx2A6VLkpKkJu5tkWdqQ6WUy2vhpcpoKY+1B2bqw6GPzY4Nn9SQIfl
nGvDS3W4o+9jeLeRAmbfFjhVNahD4A9Xw/2HFCBjI3kv46c67N2XUJJdO0CV
zWI33UURpEW4DNEd2kdNTkI4yWIEcdT0Wcddd9DO+lI0fxmCrYrsNiXTHaTg
2TTKWoVAr9L5tJnmDirwveWyW4fAI+FszizrDooOz8n52I1g19X5K235NrqZ
L0nl/RuBpE9v+9XlLXSwkHhzltweakT9Lm3220TpmEx+NUOANE+q/2i/ryHm
MPkuWSMA+VcTSwHv1pDv3xZnQWMAM8lHj1lr1pB5x3T3gQmA+HfdCPOoNSRy
74RniwUA76hLzQfsGsqvrRnCOwNQ1j373f/yLyrV64kkxgJc/s3xVTJiFQm+
vqGsGQ8QcmWcovrhKooSXp4+kwCA6XPsN7BdRQ5rbGqcyQC1l6xO1+FX0elk
4/nhLACeyqB4rUOrqGZ6Em9WATDB2xCi4LOCGrx3KKz7AWbDZyelvJfRRtnM
sv8AQJ3agxvIbhmdmhwYSxsE4K/lvm95fRnlXihu+vQFYOHS9NEZpWUUxmXq
h8bJ7fIzrB1pcQkZlTcccK0CmBKU52x//0FLk3777ewawE41pLbybwFJHbP/
M8apARwSVy8w/FhAty9e+/HvmAY0fJP7CU0L6HO5fKM8vwaMb4upHn6ygN76
TPikiWlAtIRE05+jCyjkmNaey1kNOKIYbyF0Yh4J69Duil7VAJbqTH282xxS
GNIc4L2mAe+ko1G22RzSvulXwGqiAR+rbrFw4OaQrfO24cENDWAMCqVV5ZhD
r1LmS0YsNaDaJUAwpWoWaS/03YxxI8/HSv06cOMXso143rr/TANKsvk4fcNn
kPexoaT1RA2YH36XFO02gyKzWB0WkjRAeg6TVmM+g6qqw/hH0jTAus90GJ2d
QbvfvV2r88h6/gsiuJ/TKEruluS9ag1YFSsNYDw3jV71ST/9OqgBxKuOq0fW
J1G0aHPezmcNuC+i6Pz75ySyczdu4vuqAc0hV31HuyeRiFDwutl3DfANcp6h
yJpEUfenbk5Mk/3dcCsh6E0i2yMZCvMbZL9MT2i3vJxAGB2OH7vcWGBKaIke
8BhHu+nFWwJ8WLiDdQw4bzmOhlex7EgAC+4tu6FVpHEUmexIeCyMhf6/OiFj
cuPo31xvJc1xLBgLTWnxz4yhzyGhwcwqWLhndr2HwXgMhXfsn8KYYeHqz4/f
o2J/IHCckRe4SV7vrcODwy4/0Bpf72neW1gIto1ySL7yA5k6pilw3MVCS/+5
K7w8P5Asv6oSnT0WLDyqXrtlfUe9jp5o2RsLRzZu1obVjiIWgTXdplQsFCRR
vbDdGkFtnd/0GtKxUNU24GX6fQR5OLVersvEAi3jtRDrlhE01hlr8CoXC9Ys
j5d6w0dQhZP8lYKXWDB9lKczIDKCiF33TaPfYuGudZJtOukrinOeszUfxcK7
qPH5ws5hxKvt5Uj6QZ7/bL6HbPkwyuZm9NAew4IC72m3zufDqLJB5onMFBYy
cVmO6rbDqJ/WIWNrHgsc4k0nFZmHEXPqxqfof1iIiZeSV7n+GYW0HVJr5tWE
L6xj9GxUQ4glMV7zFb8mnGsuV1NbHESJNuIXXwhqQrrGtJP3l0GUz4y/GiGi
CTw/xhIVywZRu3GY47XjmmDL7fAh0WwQUS2y5K+c14QPRuxc+w2fkDen4FGR
a5rA9+4G3c/wAdRTQX8dmWiCt5jWtS8eA0hQbz3X1EwTcuVkMmfuDKD/gj4o
J97ShOv7n+s11AYQ1ZaXJZOtJkya1Iwv/fmIgkeGGza8NKE7T2Ocx+gjis2I
ufc+VROezdM7cZ/pR5MqPrWz6Zpg8a1ENlS4Hyl8saY6nKUJ9wmNt5lY+tEQ
CzyHPE3ITp4cjRvpQ9z+f1qrSzTBofgyAzLoQ+l3dPgyGzVB+V+XxQVcLyqU
pul2GdMEu9KHF87iP6ABfo1/9hOaEGRGqHl4/APaPeojYzWlCWd6c71/HPmA
9DbWIq/NaoJfpnHR1uB7tNYyRVJf1oS0Q0xp3nfeIzBt+05LoQWB7y3eFYd0
oy+RASvJQlrQutV44+9UF6Ly/08kXlgLIrt+xMa+70InXP+RIkS1IKrgw9LF
yi70yMS5xldSC8KMF1sP+3UhMSmLh3dOasEMN/X5Av4u9KAZSyOHtED7lVO9
z/VOdHiNkqf5hhY8+hedMfCrHW2VP4+cMteCl/OE3bC+djRvf5KazkIL5LTL
wsxq21H/L9MlPSst6PFy69MPbkfJ32rbRx9ogUqgxSF7qXYk12rvtOWnBaMb
DE13HrQho9iv70/maIGFcw829WgrIlx20CDlacE08cSa1U4LUmGirXV7QY6X
IyLz4nQLwgQpZDcUa0EQiT/MsL4F/faM8tB5pQX5jIuHPKxb0KNbOHGrdi0Y
try/O9vRjF6cqniU/ksL2A1ucH6Ka0L3OVe2a+e0wIgr7MGLx01IYeeU68d5
LfDfkDwb9aAJNbWW21Eva8GdMNvK5zpN6ItRubHtlhZgDBXxMdRNiM6n7LQi
PQ6+5OhcPbrWiKzflcz0HMeBkOTSG9rpt0iudPHWLxkcvC+MuQ7tb9FarOx3
ipM4MFIx5krJe4v8TEs+nTmDg3NKgQY1lm/R86WXTUkqOLhu47zn+7sedXG+
TL57CQdN/9EPa2zVIenbRXp79jhIWTD/HXfiDepKUy5ffYAD3dUomyLWN8jy
azfrrCMOKOffrI9svka5+vODA6442Dtq1xfa9hphkIxJgQ8OrM/adfDdfI24
+EutSBE4WLbFUf57XouoPlf4Fb7EwUjUF8M9wRqUxYqdSC/FQUHazw1xuhoE
ugOa8eU4cOuXyLu7Uo182lYP+77CgYSFzAfptmq0VXkmwvAtDqpuvulvsa1G
f6Kqkw7e4+Ar/YaZ2NtX6NuFN5VX5nGgsKzLevRBFcJezjV2XcQB/42nuWrX
qlCRYdR+/BIOOj9VngjUrEJeN+9eHPyLA9yb2DJj7irE68o6QdzFwdAsVxd/
ayUyzrRh1T+iDb6rp+7+469Enzd4HC6e1AYHnWed1uPlSH2XmstWXhsOMUWp
WfaWo3zK5frQM9ogR7ic71FfjtyYOmjfndOGP8dNNr49K0ecIk4ZeNCGcE9l
4WSdcmSo292rZaANrV5Hplpcy9BAjpcsctYGvPi8NLN+CWKjqHmj7KoNm2eu
fxGVL0Ek0xWcors2qOS8d77GVoIGOaxvyD7UhtsCpiuiQy/R8JMrUXwB2nCW
J/rpadOXaNTq1MpmLHm9UqE2XodiNH1i5lV5pTa4b5wp1ygtRBIhwhovX2nD
kbfCbDxxhchyyrTnRY02INGyRCaPQjSb+mk6vU4b3K6xpuKxhej3kWauiBZt
uLr33YXhSwH6s5TiYTOgDZ57jceK6QrQVpWBqsiqNkBCu1SKTz5iUlLsZV/T
BpebnU3nLfMR5i2vOc2GNlgoSMss6+UjQttkwOy2NjRn3RLMxeSjpEHX96WU
ePj7eumHeHseUl5Puq7CioehpqRwb7Y85K044WF4Cg8/lrX3vjTkoOi6Dgbt
03gwYDzRjSvMQbnqxannFPCgVkKf0Rmfgz5ouzTxKuEhNHOQieFeDhK4ephu
HOFhmH2iIpgvBzW6H0+0v4yHhbRoWcNH2ejgtVN10H08nE5zupRPzEKjhyuf
Zjvg4XfEwSlqlIXqDFduNTrhIaREe979RBZyWX7AvOGGB6qGM/6Z1FloVtLe
6q4vHlRrL7/4W5uJBhKseLSi8SD7IzYiQiQT5bmY+lBW4sGdburm9JF05N+S
QhJ4hYfVz0xXGufTkDnLN+nzNXhovmh1p+FdGuJ9ee2zQx0e/N2ST8gGpaHI
SaOTYy14kFxYH+mlSEMeRIPxxk94ePYtXXNzNwXpnNLGea/joV5onOfd0WRE
MTRE6bKJJ3eZz/XY15JQjefdRrttPLyYonDx+pKERFoDz5ns4eFQSB1vRlYS
2rnSKq1MQwA9yr/Z6meTUNFDYN7iIICRXa5Rw63niL5TedhZgQAa3eZf13oT
UKNdd5ydIgH8ds2o8msSkAvLdX0LJQJcfZOQ6ZCegMaueb4jqhKAMd520OB+
Anq9UFsvr0WAaF9unMbRBGTNdjZziUSAUNq8nYYrz1Cn2UkbO2cCSFHqmTxe
i0NsFtb1aa4EaI7LNKodjUM3rLOO9LsTIOhY2hn69ji04cReqeBNgHHGYjaK
hDgkFrK5sxdIgE5C2KLi+TjkV/lfeHQCAS5eMegpCYxFyrT65dVvCEChtL22
IBeDgphCqWbrCWBzp6HJgjcGfWRtMeRtJMCTSKPyVZoYZM2vsP2ohQAZSZNP
jb9Ho0R5bizhPQHWvJTlNSKi0ZrJ2KeRUQIkJthSfJ+IQnCLR+LITwIU/yx9
Uv02Cj21JHqgcXJ80+rrdQlRSMSxjT93mgA6P3jbdHSikEFQwV37P2T/8q0D
fGsiUerT8dqMZQI8yOR4+yYmEs1G8zIMrBKAlJiuLWQfifxSwksVNwkwUmcY
aicWiT5ktlPYbBOAf4b1hwFFJDqWv09M+UcAiOltuD0agW4Xn8vr2SPArcM3
N9NeR6DScofNgwMCjDL1XTv0LAL9D23kg9I=
         "]]}, 
       "\"3 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "3 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
/gcNwHae
         "]]}, 
       "\"4 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "4 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
Fqnifwi8XGY=
         "]]}, 
       "\"5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "5 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)", 
       "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {0, 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Frequency \[Times] h / a.u.\"", TraditionalForm], 
      FormBox[
      "\"Spectral radiance \[Times] \\!\\(\\*SuperscriptBox[\\(h\\), \\(2\\)]\
\\)\\!\\(\\*SuperscriptBox[\\(c\\), \\(2\\)]\\) / \
(a.u.\\!\\(\\*SuperscriptBox[\\()\\), \\(3\\)]\\)\"", TraditionalForm]}, 
    FrameStyle -> Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Spectral Radiance at Temperatures\"", FontSize -> 34, StripOnInput -> 
       False], TraditionalForm], PlotRange -> {{0, 50}, {0, 400}}, 
    PlotRangeClipping -> True, PlotRangePadding -> {
      Scaled[0.02], Automatic}],StyleBox[
    TagBox[
     GridBox[{{
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Maximum\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"1 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", 
              " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"2 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"3 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"4 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}}, 
      GridBoxAlignment -> {"Columns" -> {{Left}}}, 
      GridBoxItemSize -> {
       "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Column"], "TR",
     StripOnInput -> False, ShowStringCharacters -> False, FontFamily -> 
    "Helvetica", FontSize -> 34]},
  "Labeled",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, 
    GridBoxItemSize -> {"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
    BaselinePosition -> {1, 1}]& ),
  InterpretationFunction->(RowBox[{"Labeled", "[", 
     RowBox[{#, ",", #2, ",", "Right"}], "]"}]& )]], "Output",
 CellChangeTimes->{3.53737917120611*^9, 3.537379227709566*^9, 
  3.537379353399395*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Below", ",", " ", 
   RowBox[{
    RowBox[{"a", ".", "u", ".", " ", "stands"}], " ", "for", " ", "an", " ", 
    "arbitrary", " ", "unit", " ", "of", " ", 
    RowBox[{"energy", ".", " ", "E", ".", "g", "."}]}], ",", " ", 
   RowBox[{"if", " ", "k", " ", "is", " ", "in", " ", 
    RowBox[{"J", "/", "K"}], " ", "and", " ", "h", " ", "is", " ", "in", " ", 
    
    RowBox[{"J", ".", "s"}]}], ",", " ", 
   RowBox[{
   "then", " ", "T", " ", "is", " ", "in", " ", "K", " ", "and", " ", "f", 
    " ", "is", " ", "in", " ", 
    RowBox[{"Hz", "."}]}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"curtIh2c2", "[", 
         RowBox[{"hf", ",", 
          RowBox[{"hf", "/", "c3nu"}]}], "]"}], ",", "\"\<Maximum\>\""}], 
       "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"curtIh2c2", "[", 
         RowBox[{"hf", ",", "1"}], "]"}], ",", 
        RowBox[{
        "\"\<1 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
         "\[Null]"}]}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"curtIh2c2", "[", 
         RowBox[{"hf", ",", "2"}], "]"}], ",", 
        RowBox[{
        "\"\<2 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
         "\[Null]"}]}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"curtIh2c2", "[", 
         RowBox[{"hf", ",", "4"}], "]"}], ",", 
        "\"\<4 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\""}], "]"}], 
      ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"curtIh2c2", "[", 
         RowBox[{"hf", ",", "6"}], "]"}], ",", 
        "\"\<6 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\""}], "]"}], 
      ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"curtIh2c2", "[", 
         RowBox[{"hf", ",", "8"}], "]"}], ",", 
        "\"\<8 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\""}], "]"}], 
      ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"curtIh2c2", "[", 
         RowBox[{"hf", ",", "10"}], "]"}], ",", 
        "\"\<10 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\""}], 
       "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"hf", ",", "0", ",", "120"}], "}"}], ",", 
    RowBox[{"PlotRange", "->", 
     RowBox[{"{", 
      RowBox[{"0", ",", "15"}], "}"}]}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Cube Root of Spectral Radiance at Temperatures\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Frequency \[Times] h / a.u.\>\"", ",", 
       "\"\<(Spectral radiance \[Times] \\!\\(\\*SuperscriptBox[\\(h\\), \\(2\
\\)]\\)\\!\\(\\*SuperscriptBox[\\(c\\), \
\\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\()\\), \\(1/3\\)]\\) / a.u.\>\""}], 
      "}"}]}]}], "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-RadianceCurt.pdf\>\"",
       ",", "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-RadianceCurt.\
png\>\""}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{3.53737916474598*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwBUQGu/iFib1JlAgAAABQAAAACAAAA9t7JxCSLxD7espCxIKG0PtSeGHlB
2KI/YfHPA2zskj9AFc9iGNiyPz6OjsFC7KI/dlCq1wPYwj+u3G0gLuyyPxHu
F5L519I/5YPdzyPswj/fvE5v9NfiP4FXlace7NI/RiTq3fHX8j9PQXETHOzi
P/nXN5Xw1wJANjZfyRrs8j/DQ6ek0aITQBROy/PUtwNAHN+55mIsHUB0zTj8
mksNQBRsX6oHQyNAc+8BeKRXE0CSMUa7TlUoQOAGotlYbxhA2ZgwwPEQLUCD
BOt3DDAdQIukf88CGTFAa0j3vk4rIUAXlOOJk50zQBtz0DyRsiNAh1RJPtL2
NUDiEP5YUw4mQHM5oV/JgjhAB/YIKQSdKEBE7/p6buM6QEROaJc0ACtAgTxR
YRo4PUAFC58AX1ctQASa6KwH4D1AAAAAAAAALkAt4JDu
         "]]}, "\"Maximum\"", 
       TooltipStyle -> "TextStyling"], Annotation[#, "Maximum", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
a/F+Uvkf0Girlg==
         "]]}, 
       RowBox[{
        "\"1 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "1 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
j7PL6igSsQyXmq2jI2v40cDI837+KfY/mRig6A==
         "]]}, 
       RowBox[{
        "\"2 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "2 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVlnk8lF8bxi1ZiywzDxFZB2MnSZZz25eyZ5lhIkUq/ArJWkjIFiJLkuwh
QmQLIaVIWTJRKqQkIVuyvfP+9Xy+fzznnPu+rvs6R9TtPxt3Bjo6Ojl6Orr/
f1fHe7ok4rt0ym2c37q/VUdDufxButR81Bzk/sHZpBcBvt+Nn1qDtDc61hvP
vkfYGDcbl0ELMvW8mjdn8wkFWJWNMFI7kJF2wvJ681d0svZ12U7iC4TNG+mw
JUyhY9hc2IZ+L8p/rWNaQfyOuH/zpa6PDKB1TY6H6N8sir5XGrKmMoyeadTK
m6j/RptWGu4riSOIdBrD31NYQD9qyYcX9T+ijw2xTJfU/6DPLRb/LY9MIAft
qUr87xWUjec77cc0hbTnw2Z8e1fRcZ/Pjn9UviH2pB8bWUVr6NWBC3oLid/R
+J3tjPum66g+MgX/S/8XUr/G6MPvuomMJH5+Whz5g76qEOfW1+ig0MrCsdpn
CZkpiv/4YkYP9GE1AxeYllGV+De+jBx6aBkOfjGvsoIMHpxlyNJiAOWY3dVz
iWtIYMWQfuY/Rtj/Uy5qRn8T7WYmu88+YIJgLGW7dHQTOTotUrznmGBEbyXQ
8+IWwp+w9CIqMUPqnafe33O3kcLfjUCPWmaIIpSU/wmlg1RyyEXrahZYH1FP
XxhhgPzHay5DiWzQoMLqWiLDCGsPyz57v2aDgEQq8UQII5iuS6Q5sbLDH72g
9tfCu4DDXJAThbPDz4dNs8XuTDBIv4f9oudu+HhNW4+yxAJcmqa3UvdzQPY4
BwfOkBVURecjs6w4wFFjfOTVbVYg6ymJ74vigOHfV7wPH2GDT495PG7McMAb
UnsmbwQ7nGwqoHeu5IR2Rf35Hk4OoDQHGydwccGVON6mcFcOwH3Y8q8hcIHW
t8ko9Rraf+KVGXlaXNCYHSVQZMcJZmNE/MgZLqhh6jYMz9kL41eGK1qauWDA
W8JCEM8NVw33zo+TuKFTv6TwXT4vJM7LFpb58oBSUtXM2kteMIt1mKqO4IFc
6hMF4Xle2NgoL0pL5oFA75cN5zRxwGUR2Tb3kAcUMmZ6GYdwMPdSonhlmgey
f8quqDFhsNOQIpZmwwusagePOMtiwIwtrlx04YVLV7WuRlpjsLtMUV3Rixes
cOZs/XcxKCs1mDK5zgtMOj5Cnof4QOpBy+x2HS9cSHlkmH2GH568P99fwI2D
8bGGuPZEftDTLchO2Y+Do4Rn/dO1/HD2Uw+PmxQOCM3vSKp0+0CLk+lFuRYO
xqb+ePdm7oOSBH7r7+44MDqsdnu7RwCMXsbtJtTi4HGk9pjEggCEuqpO2bbg
QLTPUOQoJgjPidxyZ57jYPOkfVmGmyA85NWq0BnBQXX85ValDUHwEbz+pm4d
B/s/N067yQmBM0dVzLQGHuiWLmb2WAsB16TvkIMuHqaYiWZKl4Xg5qz/t2oT
PDxUyH649UwILK2ooyIOeNC5Euyf6SAMYUz1tXO+eHAR0mR4E3kA/lxKcXIp
xoOB8lLtwdIDcKDB/6BXBR6kDcvd7/QdAC2BqbenavAQWJ94+uAeEZjNye7l
bcUDjG+9oHcQAf3FJxzBQ3h4Jz+elPNLBKrn29iCtvDQpd703XJHBCx9Gl4j
BgzqdW8DI48oMGzJ7l9ixiDbzuLPWXVRqL+PHz7AhYFbWKudeqQo/BX8lJ4m
isHxmOzKn2miEKHT1dwhiYFRSgBLbokolD0SMxyXwYBYpNC4q08UMJHBmU/K
GPzpzd0/wCcG1ztzjRl0MZh6H3zpOlEMmNh+2+caYPD+i/2bw9picPIUc7q0
CQZNy5zh99zEaDkRT8dqicG1/VcnvR6KQfcxMb0VJwwCCE5aIu1icNV64RKT
CwaeSurpgwNiwLK5k73LDYNjBvNGR/6KQadDKd/bMxjgvFzKWPTFIcHh6vlc
X9r5WAq6rRzEIRkL5Xe5hAHkT09knReHo0UlyXsCMfCiegvKpYnDXvkAe4Uw
DCL9qtUvlYpDPn3pp/yrGGRyrti2toiDi6JUwa5IDLoMQhOsvomDcOQFcnI0
BqOf20qz1sUBF3ojqikWg4VgxucTHBIQoZVEGYjDYH913Jb/IQnomLOIf52E
gb9Qlk9WjAQ4MmHvp9MxiGv4GDdxRwL0mpmCIjIwyLMVKZF9JAE1L7cK2bMw
6L1R8vkpVQIWO10ZZu5gMCExu8E8JwFy7nmeOrQ5+tumwG9FLwnn3VKfReZi
ILFaZzUhIwlsqLGWmofBkZR1L1kdSbDuqwz/eR8DKzntG/42kpBUSi2ZzcfA
40V40VMPSZg43Kn3sQCDULeuZ8whkpA8+OFcSyEGqVss45Y3JcGM7oxGQhEG
pZlH/2UWSILN07QXR4sxaFW9iU08kYTwDi+FDRoPvhlQke2VBOFOanR2CQY/
zmKW/l8kob0yf0amFIPtXeTzT5clgX7R/78HNMbl3Y1hZiPA4UejSvse0PTS
/FpgKUQAud1gFERjeC/RnqlMgHa7Py96aGx/0fPjV0MCPDku8oa9jKbfnoq/
RDIBvAJHL2jROLJkHufvQ4AyjPflCRpn6qkqP40kQFZB7uxFGld+CjBnziDA
0xnVpUs07gpsOmtZTgBRXa/VczQe5d2+ntlGgFvPO/dY03ihUjf/6yABBBOy
zKVpzGx2vZX4gwCZI4pvF2jn2f/t5ajfJgHijlWUl9FYJXzPWguXFPBI8K/Z
0dhE0IqXWVIKDp5w7flDq/dE/S1FSw0pMF+y04igsb/1yNFMcyno31VJoadx
3C8Bz68npUCPg8Hcj9a/vJgTUcQAKUja+1ZohNbferH8PL84KUh+HjwtR+MJ
R5kPTLVS0PLhbEMlTa+/S14rFi+kAFF/zY3S9OS8+Yg7c0wKSsVf+a3T9D7y
XN2MuEsahkXnXnD83w+uIR5+/NIQKpL7jJHmF4+N1sgWOWlwcAh3+0XzU6qy
UbOFnTT8jEqdT8/BQHGMZKztKQ0HXGrqvWh+7I3yHpQNkQadDCrhcDatP9S0
Wdb70vBEvsToIc3PIVcmBTt/SYOJp5oLTyoG/NJrJdU70kCaWTVNTqbV8479
YB6PDARp151mvEnrt4TKsbDDMvCUYuDVE4/B6dfhoepRMvC3NyTpfRQG9JfS
WAkZMhDz1K9rhzaPucKlabgyGSgV6KsQjsCAerG/YrFfBr5fuT6kTZtnc37h
T+WCRLisfE6TkTb/h9ybtUVqieBTMcDWQMuPQc7+Hs5uIpiEdLTqu2JwoWHC
botKhEqfz0LdFNo9tZvdZ3SbCLJ95liVIwYHahxz08xkISRFOYnXAgPWnZVt
1glZYE7Ic1BVx6ColC1+bVkWzFPLEpQOYqBnI8Q3zSIHJUqetpK0fAwtMlDs
lJcDts1nfStEWr1Hb7mEBclBByPduqowBh8yldoXueRh315fbmVGWj4Plu8N
kJSH0mvJMm47eCBzSrn805AHpiYtctwGnvb+ENpmOCUPVgHXjduX8PDFh10L
VycPP7Njhbom8fDDYOrJIZICuHJNDmt04OHvQkZVyH1FGOlYSDcLwkOjLO/O
Tp0i5BTb+Yf54yHYI8ki6pUi/Gh+QXrwHx42x6LmEpYUwZdzwfeXOx7CJxvw
/WJKoBZIPidqg4eoN0W2X/yV4Hsh5baNDB7iC6/2M+xThkFCwXPFQRyYHTzL
gxdXBt7BFrqGPhywdtnYSckrQ4qEjJDmSxxETUqOHdVVBluSk7TKUxyEivVO
p51Vhvw3TT1TxTjwyePfJjQpg95R4PMIwoF1TrXcUScV+PC+mEVSEAd8aZM3
bt1Vhc21qsZXtrwQc9xUZ2BVDXQWH2Au3dzgp3HfpSfyMJgmLfVasHKBwfy/
YJ/JI+DVtfVjaWQPLaetTwoc1gaqt04j+Q0bHKnMenylDUEkc/vGzTpmOP93
Mfwlhy40kcVH/dl3wV9ZrnF5Oz0IV707Zu9JD5rlFXm3b+vDJO/zoGm5bbTA
Y+Zq32EAyS297GqW/9Bkgqu9L4sRaEfbzPZlrCKT+cum3w4Zw3huWeOJuCU0
e4rV7/FVE/h67sHqm6IFZCjBxxDTYQrOFSY3rrj8Qtx9hKRH82Yw9pSMZt1+
IMHYKqtDh46BnwjdqEvxFMqQ1eDiPWMOTm/9jauKvqIeAV21pRQLeFWsyM6l
No409nckK763BB19g3tfAz8gTsZ8/5ORVlDoe4yurXoYCUcc0CIRrMGTN4vK
d3AAsUk619u8sAZTz7r8mew3SEF7X9Vlig2Ujfy2VaB7hXzHeTrN6GzhIi81
ma3zOZpfSrAzzbQFsUORP+LPdiBjxe5sU/njkGF2wktHsw21LmlurL05Dozc
F3Yr8TchHzmV0XfudrB+z6PcZk890v59eojEZg91Epn626QaWv385hz59hDM
GyJqMF2JpMPjAjvUHSA+034xEF+GiO4abZKjDvD61H4U9agI3RSz+HftowNk
3RG6m3K/CC1/dlObGHcAUYHf3A9Si1ArOaE8d9IBsvfGSq76FyEbq88ZfHMO
kHbTXov1SBEK0rx+gY3OEU5F5Pgxdxeil9zvROckHYHzODqs860Aubd6Rj2+
6Aj2AocSdVE++u3987KhvyNQbhyUTVfOR4FCXuffBziCThrH8B/xfBQX+p/N
3xBH+LSTptjLmo8eHQkQ0Yp2hC3CsvrqwH20WX+tpTPbEa5LfnQXPXsfpVbl
Lg90OkIX472agpw81JY3dHoRT4KtL0bx3dq56MsxUZcAfhIY5hRH+0rlIrp1
b9KGAAmIv7sfKXDnIj1rFgsmERJcSk46NTJ1F3XTH1HfRyTBjdiBXTMJd1Gv
2z02XR0ScPIcc2b8koNGJc5VJnuQQNpU58CLlDtouXRnTfEJCdoqpQkaollo
2t4o70YjCfz9nWTH9mYh6q5Ek8lmEpzWbN+I3c5Eza4CWbfbSVDXRx1n+ZiJ
IvnVjmz1kKCqyXsoJSMTccWeC331kQTHW+tb+7kykdyZYTp3BjJ8xtLutu7O
QKcky9myzcmQKN9/861oOgp+fuIcwYoM0U2BKvPc6SjZned1jQ2Z9k5vStnH
kI5aioISXjuQQemk4OmUiTSEI5js3TpJhi12Ra89hWmom/AN5xpAhiz3oWZp
mTRElD4gQrhH2694VOCZ5i20SLx1qGaBtl5u89HG8BRE7QVD3iUy5BM9P57x
T0HtPr9t/VfIND3LV4Q9U1BSjenFQ//IoFzztqzYMgURj9BVNDE6gXGryxXB
AynIzdRbtBNzAltu6770tmQ0dMZ4z5CWE0hXbU4WMSejhsKNryuxTvC43VCV
wzERHdL3XzOLd4Lk/Wfk2vUTUd3XX3vyEp0AhNw3whUTUY3wuLpZqhNInaBb
lWVJRBWZ7Ym5d5xA0dLQmfAkAeUlXNcwrnQC9hSRlcJ9CeiG/96UzEEnCG3/
1hv3Iw6RDcRBU9gZhgXyPfkqYtHWECtnp4gz3FXUFo3JikV57r/HzMSdQZCx
MndXTCyajm68TJZ2BuPZrTZpt1jk22NZFaTiDLcyXa7j9sWiOItQ4QYjZ3B7
Gx988UYManIc3jz4nzOEvJO6tOUXjQS9YxoV2p3hiYXER3ufKJS046EW3+EM
iqkPqpZdohBDqlH19y5nWDt3MjzHOgr9rGd6kNfjDD3t0ttsalGoiS4qk2fQ
GXLEbB86bV5D5LTwy6vfnKF29Nm/wYRrKLM5SK11NwVM9d+jn48jEZ7dq9rc
gQIb/NGrZiIRqFA/LHiBRIECReJcH08EUglL0r/lTAFdfnB1YopAFguPhqkn
KaCy+vhO+s9wFP1+Zf2UFwWYV5tio+vC0d/8q3rBERQINztvb2sejkY1bw0W
l1NAkuVixnPWq8jzUmGOaSUF3t3g8ju2cAWtVta5/3pEgc/9TJTpkSuIR4y6
plxPge476aK2JVfQUVah/U/bKRAXITPCaXwFtQwVnx4cpoBH8T0PhrgwZMbZ
IB9ApYDtTaMztb5hiGrcs8o/RoE2nYaUAKcwtNw0G3viCwVOZJjLqcqHIfn7
Sg9nflJgnaVr+dq7UNQyqhuQMEeBr7YbbV1NocgMZ4sUFyiwhFUZ8RWGIo+Y
S+/8VyiwMy9ttRgQipbbo7P5/lKggXnkSaBrKIr8l3Gq6R8FRGPeFXKbhSKu
gw/kKFsUYBstYmtRDUW53k0rOzsUKIqapV4WCkX/A1pXQvg=
         "]]}, 
       "\"4 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "4 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
/dAzdQqZlWTCkaLpxUUWCmeWPf/yoJL8H5yyfUI=
         "]]}, 
       "\"6 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "6 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV1nc8Vf8fB3BRWZGRWWTce8jMvdxrn5eRJCkk80ZDpawyKiojlYSIrEqi
NDTMMiqSb4iUykppkIS4oiiV3/n9dR7PP87nfMb7/foc5a1BTr68PDw89Hk8
PP9//uxrbqCdajBPklo+9pvHnHydK3vQojufdNlHw5XX7SSknm+V7S4lnT2O
djBt35LSveKCYtb3SREeHe25o5/I8A03uvi668kzJR/rr/sNklvKWm7MJTWS
druDjDv+fCXtpb8dnrVqJX03bo577/SNFB+TOfOr6yXJPvs3dbJmgjx+8Vrk
NKODfCX3VGS+5iT5Z4OR74+kLvLi9pZNfIlT5FCZh+GE1VtSLGlvXaHGNPn+
vkPQVNcnMiNt8I7x71kyR0pme8iCAVKpQd28a+lfcmPge7fvjM/kUf60HVbs
f+TT5cGW3KQvZKDmr6bzOjy4G5sqNWo1Sna1x3zYx+aFDW343UTXd/LPf5IN
kmMLcHmDg1tJ4CR5ZuijxThnIeYdLn0ZvGCKvGYXJrS3dSHud0Q0jjN+kGJf
OtWyrvBD74RwybekaTJEo6Xr4hpBLBvWivtq9Yd8vcL4ubTPIvzqYp/ldvHC
pF6C/WtaDJUMAZ+rK/jQZBRWv5gujvCkbo3NkXx49ibCucVRHN8tD9a1KM6H
4rZ7JoY3xDF8q3qk0HcBTJvq25e4SuDtUTNLziQ/bM1xalG+JOp0rcabRUWQ
MS0TnDlfGkcSJKujfUQQLZ6uXKkuDdPP/XHsUhF0LnWRyLOXRlVOnPwVF1GY
t1utaUqTRumCJ6uizy9Gdu2016nlMngZQHNYKiUOhydj2z21ZfHY6urlduo7
6TlE4Em6PFYm3/k63SSJxBiP4nMW8sjtvqejOC6Jz7ZDFSc58jgQ0FS522QJ
NJtc6b/T5aGT+bWV7/USOHFZi/V5lyJnWPOHwQJp8Pb9ibDuXIrg1OJVOTtl
wZdYP99/hwL6eisT6pJkkea5ihlwRAFriUfPB8tkcWZzvrFjhgKImnZ3Jo8c
nvhYHa//TwG9A98DWrPkkBuY8dJBVRE2hgYZ/5rlsXjv7gxGjyKWva8a3Kql
ANdj7WlZskrgmdyb1eyoAImL+2OqVJQwsFDDbuV+BVwQaC5q01LCLZ2cW38f
KaDV5hG3A0owPxIRmuWqCMNHaHXfpQRvBRPettjloLl4dVtWKKFduy/5/KgS
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
owLM
         "]]}, "\"8 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "8 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        GrayLevel[0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
vaFh
         "]]}, "\"10 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "10 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)", 
       "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {0, 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Frequency \[Times] h / a.u.\"", TraditionalForm], 
      FormBox[
      "\"(Spectral radiance \[Times] \\!\\(\\*SuperscriptBox[\\(h\\), \
\\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\(c\\), \
\\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\()\\), \\(1/3\\)]\\) / a.u.\"", 
       TraditionalForm]}, FrameStyle -> Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Cube Root of Spectral Radiance at Temperatures\"", FontSize -> 34, 
       StripOnInput -> False], TraditionalForm], 
    PlotRange -> {{0, 120}, {0, 15}}, PlotRangeClipping -> True, 
    PlotRangePadding -> {
      Scaled[0.02], Automatic}],StyleBox[
    TagBox[
     GridBox[{{
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Maximum\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"1 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", 
              " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"2 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", 
              " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"4 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"6 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"8 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              GrayLevel[0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"10 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}}, 
      GridBoxAlignment -> {"Columns" -> {{Left}}}, 
      GridBoxItemSize -> {
       "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Column"], "TR",
     StripOnInput -> False, ShowStringCharacters -> False, FontFamily -> 
    "Helvetica", FontSize -> 34]},
  "Labeled",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, 
    GridBoxItemSize -> {"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
    BaselinePosition -> {1, 1}]& ),
  InterpretationFunction->(RowBox[{"Labeled", "[", 
     RowBox[{#, ",", #2, ",", "Right"}], "]"}]& )]], "Output",
 CellChangeTimes->{3.537379172758691*^9, 3.537379229190828*^9, 
  3.537379354954403*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Below", ",", " ", 
   RowBox[{
    RowBox[{"a", ".", "u", ".", " ", "stands"}], " ", "for", " ", "an", " ", 
    "arbitrary", " ", "unit", " ", "of", " ", 
    RowBox[{"energy", ".", "  ", "E", ".", "g", "."}]}], ",", " ", 
   RowBox[{"if", " ", "k", " ", "is", " ", "in", " ", 
    RowBox[{"J", "/", "K"}], " ", "and", " ", "h", " ", "is", " ", "in", " ", 
    "h", " ", "is", " ", "in", " ", 
    RowBox[{"J", ".", "s"}]}], ",", " ", 
   RowBox[{
   "then", " ", "T", " ", "is", " ", "in", " ", "K", " ", "and", " ", "f", 
    " ", "is", " ", "in", " ", 
    RowBox[{"Hz", "."}]}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"NIntegrate", "[", 
         RowBox[{
          RowBox[{"Ih2c2", "[", 
           RowBox[{"hfint", ",", 
            RowBox[{"hfint", "/", "c3nu"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"hfint", ",", "0", ",", "hf"}], "}"}]}], "]"}], ",", 
        "\"\<Max slope\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"NIntegrate", "[", 
         RowBox[{
          RowBox[{"Ih2c2", "[", 
           RowBox[{"hfint", ",", "1"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"hfint", ",", "0", ",", "hf"}], "}"}]}], "]"}], ",", 
        RowBox[{
        "\"\<1.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
         "\[Null]"}]}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"NIntegrate", "[", 
         RowBox[{
          RowBox[{"Ih2c2", "[", 
           RowBox[{"hfint", ",", "1.5"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"hfint", ",", "0", ",", "hf"}], "}"}]}], "]"}], ",", 
        RowBox[{
        "\"\<1.5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
         "\[Null]"}]}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"NIntegrate", "[", 
         RowBox[{
          RowBox[{"Ih2c2", "[", 
           RowBox[{"hfint", ",", "2"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"hfint", ",", "0", ",", "hf"}], "}"}]}], "]"}], ",", 
        RowBox[{
        "\"\<2.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
         "\[Null]"}]}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"NIntegrate", "[", 
         RowBox[{
          RowBox[{"Ih2c2", "[", 
           RowBox[{"hfint", ",", "2.5"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"hfint", ",", "0", ",", "hf"}], "}"}]}], "]"}], ",", 
        RowBox[{
        "\"\<2.5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
         "\[Null]"}]}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"NIntegrate", "[", 
         RowBox[{
          RowBox[{"Ih2c2", "[", 
           RowBox[{"hfint", ",", "3"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"hfint", ",", "0", ",", "hf"}], "}"}]}], "]"}], ",", 
        RowBox[{
        "\"\<3.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
         "\[Null]"}]}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"hf", ",", "0", ",", "30"}], "}"}], ",", 
    RowBox[{"PlotRange", "->", 
     RowBox[{"{", 
      RowBox[{"0", ",", "1100"}], "}"}]}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Integrals of Spectral Radiance at Temperatures\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Frequency \[Times] h / a.u.\>\"", ",", 
       "\"\<Integral of (Spectral radiance \[Times] \
\\!\\(\\*SuperscriptBox[\\(h\\), \\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\(c\\), \
\\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\()\\), \\(1/3\\)]\\)\>\""}], "}"}]}]}], 
   "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-RadianceInt.pdf\>\"", 
      ",", "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-RadianceInt.png\
\>\""}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{3.537379164773183*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
         "]]}, 
       "\"Max slope\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "Max slope", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
e+0ZWXvAjePXppPOFy9ubOwBlsLVTf8P82lFkA==
         "]]}, 
       RowBox[{
        "\"1.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "1.0 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
         "]]}, 
       RowBox[{
        "\"1.5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "1.5 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
PX9ubQ3nlxiuuIL9P25jptU=
         "]]}, 
       RowBox[{
        "\"2.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "2.0 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
+n9+HAt0
         "]]}, 
       RowBox[{
        "\"2.5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "2.5 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
YPl/fTbSmg==
         "]]}, 
       RowBox[{
        "\"3.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "3.0 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {0, 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Frequency \[Times] h / a.u.\"", TraditionalForm], 
      FormBox[
      "\"Integral of (Spectral radiance \[Times] \\!\\(\\*SuperscriptBox[\\(h\
\\), \\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\(c\\), \
\\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\()\\), \\(1/3\\)]\\)\"", 
       TraditionalForm]}, FrameStyle -> Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Integrals of Spectral Radiance at Temperatures\"", FontSize -> 34, 
       StripOnInput -> False], TraditionalForm], 
    PlotRange -> {{0, 30}, {0, 1100}}, PlotRangeClipping -> True, 
    PlotRangePadding -> {
      Scaled[0.02], Automatic}],StyleBox[
    TagBox[
     GridBox[{{
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Max slope\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"1.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"",
               " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"1.5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"",
               " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"2.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"",
               " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"2.5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"",
               " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"3.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"",
               " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}}, 
      GridBoxAlignment -> {"Columns" -> {{Left}}}, 
      GridBoxItemSize -> {
       "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Column"], "TR",
     StripOnInput -> False, ShowStringCharacters -> False, FontFamily -> 
    "Helvetica", FontSize -> 34]},
  "Labeled",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, 
    GridBoxItemSize -> {"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
    BaselinePosition -> {1, 1}]& ),
  InterpretationFunction->(RowBox[{"Labeled", "[", 
     RowBox[{#, ",", #2, ",", "Right"}], "]"}]& )]], "Output",
 CellChangeTimes->{3.537379192583963*^9, 3.537379247010769*^9, 
  3.537379372755012*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "Show", " ", "the", " ", "derivative", " ", "and", " ", "partial", " ", 
   RowBox[{"derivatives", "."}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Below", ",", " ", 
    RowBox[{
     RowBox[{"a", ".", "u", ".", " ", "stands"}], " ", "for", " ", "an", " ", 
     "arbitrary", " ", "unit", " ", "of", " ", 
     RowBox[{"energy", ".", "  ", "E", ".", "g", "."}]}], ",", " ", 
    RowBox[{"if", " ", "k", " ", "is", " ", "in", " ", 
     RowBox[{"J", "/", "K"}], " ", "and", " ", "h", " ", "is", " ", "in", " ",
      "h", " ", "is", " ", "in", " ", 
     RowBox[{"J", ".", "s"}]}], ",", " ", 
    RowBox[{
    "then", " ", "T", " ", "is", " ", "in", " ", "K", " ", "and", " ", "f", 
     " ", "is", " ", "in", " ", 
     RowBox[{"Hz", "."}]}]}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{"LineLegendFromTooltips", "[", 
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Tooltip", "[", 
         RowBox[{
          RowBox[{"NIntegrate", "[", 
           RowBox[{
            RowBox[{"curtIh2c2", "[", 
             RowBox[{"hfint", ",", 
              RowBox[{"hfint", "/", "c3nu"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"hfint", ",", "0", ",", "hf"}], "}"}]}], "]"}], ",", 
          "\"\<Max slope\>\""}], "]"}], ",", 
        RowBox[{"Tooltip", "[", 
         RowBox[{
          RowBox[{"NIntegrate", "[", 
           RowBox[{
            RowBox[{"curtIh2c2", "[", 
             RowBox[{"hfint", ",", "1"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"hfint", ",", "0", ",", "hf"}], "}"}]}], "]"}], ",", 
          RowBox[{
          "\"\<1.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
           "\[Null]"}]}], "]"}], ",", 
        RowBox[{"Tooltip", "[", 
         RowBox[{
          RowBox[{"NIntegrate", "[", 
           RowBox[{
            RowBox[{"curtIh2c2", "[", 
             RowBox[{"hfint", ",", "1.5"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"hfint", ",", "0", ",", "hf"}], "}"}]}], "]"}], ",", 
          RowBox[{
          "\"\<1.5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
           "\[Null]"}]}], "]"}], ",", 
        RowBox[{"Tooltip", "[", 
         RowBox[{
          RowBox[{"NIntegrate", "[", 
           RowBox[{
            RowBox[{"curtIh2c2", "[", 
             RowBox[{"hfint", ",", "2"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"hfint", ",", "0", ",", "hf"}], "}"}]}], "]"}], ",", 
          RowBox[{
          "\"\<2.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
           "\[Null]"}]}], "]"}], ",", 
        RowBox[{"Tooltip", "[", 
         RowBox[{
          RowBox[{"NIntegrate", "[", 
           RowBox[{
            RowBox[{"curtIh2c2", "[", 
             RowBox[{"hfint", ",", "2.5"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"hfint", ",", "0", ",", "hf"}], "}"}]}], "]"}], ",", 
          RowBox[{
          "\"\<2.5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
           "\[Null]"}]}], "]"}], ",", 
        RowBox[{"Tooltip", "[", 
         RowBox[{
          RowBox[{"NIntegrate", "[", 
           RowBox[{
            RowBox[{"curtIh2c2", "[", 
             RowBox[{"hfint", ",", "3"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"hfint", ",", "0", ",", "hf"}], "}"}]}], "]"}], ",", 
          RowBox[{
          "\"\<3.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\>\"", 
           "\[Null]"}]}], "]"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"hf", ",", "0", ",", "120"}], "}"}], ",", 
      RowBox[{"PlotRange", "->", 
       RowBox[{"{", 
        RowBox[{"0", ",", "110"}], "}"}]}], ",", "\n", 
      RowBox[{"PlotLabel", "->", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Integrals of Cube Root of Spectral Radiance at Temperatures\>\"",
          ",", 
         RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
      RowBox[{"FrameLabel", "->", 
       RowBox[{"{", 
        RowBox[{
        "\"\<Frequency \[Times] h / a.u.\>\"", ",", 
         "\"\<Integral of spectral radiance \[Times] \\!\\(\\*SuperscriptBox[\
\\(h\\), \\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\(c\\), \\(2\\)]\\) / \
(a.u.\\!\\(\\*SuperscriptBox[\\()\\), \\(2\\)]\\)\>\""}], "}"}]}]}], "]"}], 
    "]"}], "\n", 
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-RadianceCurtInt.pdf\
\>\"", ",", 
        "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-RadianceCurtInt.\
png\>\""}], "}"}], ",", "%"}], "]"}], ";"}]}]}]], "Code",
 CellChangeTimes->{3.53737916478905*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
kCwa4iDhXzL34P8BRxy1eg==
         "]]}, "\"Max slope\"", TooltipStyle -> 
       "TextStyling"], Annotation[#, "Max slope", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJxF13k8VO/3AHBbqFB22ZcxY9+NvTnGGGOGsa8RiYRsJdmyK0TWSlRaJCUk
hYiESpIKlVAKlexbocjvXn1e398/977er5l7n3Oe5zzn3ivlFWzrw8TAwMCO
HNDzr0/P2zGn2nd7EzF7qWLLRn2XhCKN+68SsnjKnt2S8CMA/ysvof67hMzf
0lxjQ0kEgUHurTtJDwmPKtZcpkLzCOHWt94z97cS4utOM6uaFxP21by4tZH5
jFAqwGXCVFhKsBCYPv7HpItQhgmHyYRKwgXDk2V/Yl4Ths38Vbiv1xC4ZwRz
V9/3EKKLGaZGQusJJ4rLopc13hIy6lYrJa80Edas9Xx+Zr4nCJxp1L999jFh
vMZVd95kiODSOxLOeP0ZYa/PpNTspU8EPyfPAzI/Ogn+25tTfsV8JlB4+4uP
23UThh/Sg5fejxCkJc7O4jt7CIX8gt5HtowRnnYcObntXh/BPmjYeUHjK8H6
zmQmW+U7QqdECHEu8zuhVJw2zvp6gFCbmMM/ZTJFMBLXDzP/9IVAxkx8nH+/
QNAed4yjf58klFjTnauDFgmqkRLbsIRpAuPxuz0hW5YIx98N14cUzRAevo16
Nqvxk3AoYVXL7c4cQf3k9urpzGVC5+PmyeGMRYLohFLyD5M1gnbJQQeNvFXC
6nudM3PvmcBpKbRJGc8M9RrsnjfkmeEJg8G5K2XMEJ7Zr7A3mhmuxid0W4uw
wAIxsuWFOAvsP0fNozBugYmKhslSny2gKGGrvtLNCkNJRkT3RTb4KxAUcOnQ
NmhRNZl9zsUJPndknjV17ITYdN6GeE9OaCXyS3xh4AbDr6PJOnc5YbUrK3NI
lxseFCYLX3fgAv1yZYpjGTfc3fLUNP7CDrBxuVagnsIDPYEYugg/N5AwqVfT
tPmgzeRGyZurvED53Es56S8Iaqerfix38MIwa1nUsQJBuNRfpyI+ywt/PAWt
lJ8KQkRgR72/AR9sAc38cUkhUDn3o4u5jw/8cBueZ3qFoHBC8af2FgEoLeNk
y1MWhpCcO6aFvkKgWde8G1sjCp8G69NbMoVAKTg8J/CDKNCwj199qxECj5Dx
ovANUcA2vnHRZNgFJh77ubqpYjA4thDYVbALuHUZHPM/iQFZV/vs3+fCcItj
9EPeb3EQHX7wzUtJDA6eV1aoTJQEhsXQguc2YnAPK1bTlCMJY6wKVLVjYtA+
h8+rviwJFSqFFeuPxYDOHPqE3CwJu2OjwgqcxGG94ue6/IokeIgZMHUnSsDA
koXK9AEpIKkv1miVScCP3K25VmFSIGda7lP0UgIGr3TIFCRIQURtprcWhyT0
PGOzHiqSAvi0/ozRSRJ+N2tYar2SgjfKn05fmJKERaEbQQR1aWjXafhutSEJ
YlbGX3mNpKHW+Cww80jBr9ivZ19TpKHQgb7gpyMFAfqpGsye0uB1vNlBJ1EK
vh2JZrTJlIaFrkuiPYLSMFnZ8fb2qDTwHfK4xWYiA0eebi+xj5cBBbZrT62d
ZOBdolegTroMwNVvI+cDZMD50DKROV8GDvUHiighZ973oU2ON2SgnRSTYf1V
BoxyDubNd8lAmNj5oPMnMVAWvhEuwoeB9Pqh9JEiDIy2H2m5KoqBy3aSNxTv
YKDFN7+aXxYDXWk3hpv6McCPy1B6pI0BzK/71iPysvBksf07xhEDvd09Gopd
ssDXZrTonoeBcT8Bq7DPsgCLWPrdQgz8ZXENaFqShbMJjG1LVzCgYPDlmpUY
Fsimp7NJyDiJN2b5woKwEH2OrZO3CwMa8RzLD3figDlOPCWbQRZy1cmNdAc5
2KZbW/fLXRZUB13MjA7KgdX39l/LXrLQlRzYqxgtBywv2fdM+8oCa3/+JPsV
OWCIzVq+FyoL0bGjIm1TcrByUB/fkCwL3i/iY3SS5YGfiWe+ukwWGI/ms2PP
yQOH29o8Q4UsXBIvy+e7JQ8jz8TOmVbLQn/oq9vzr+Sh5D7I3XkgC5ZC4h/L
RRQgQW6+j6NTFvA+jUaSNQqgfU+UvjwuC71cr55zPVUA+p/bvbemZCGkfsRh
vV8BFupz7R3mZOHW9m1BA38VwCZxuCBrWRYk7jpfyqcqQsTIc8eiLVhg3/j5
l31EEXwMglMlJbHwoUCtZX6nMshdnfHYZ4WFwt7yHeGyyrCFOyPB1hYLrlw4
j996yqDzpPuOgQMW6S9if5n2K8OtCWLqL1csfA7aZsh3XxnO9mga7zyAhXHS
WB3eRQVi5zPjxqKwcDPOg60xUAVsqswSPI5jwb9hwJGQqAKFxwWbeuOwMKX6
5qdZuQoMi3rLlSVjYU64WdNlXQWps8lbTKexsDJ3rir6iirkMnJ1ZhRj4YEi
78bGfVWoOfVy97UrWIg6cJqe3KkKK/nP5muuYWFtMHk6Y1EVCl6609tvYCF+
tJ7/lbQaBNBXj1+twkJy93W7z2FqMG32FbOvGQunSuJeMe1SB9knGURSPxao
Wn48/DLqEMYbhq/9gMxXu60DTlkdGoLsVDGDyPWjsoM0Y3VQtn7usvQRCzHS
Xd/y/dRhqOj2nQOjWAi6LPQX26AOBzeYuS5MY0FJjclYr10dJquwLL0zWJh4
NJlE61aH4SNORaxzWPAdbt4aMqIO5ZeqX+9fwIKnuA//g20acGWR13L5FxZs
LlQr0fZoQLez0lLaBhZ2KhUFu/togOv2YIYsBhx0NybfDQ7WgOS9xpo5jDig
Djrp5idpwIklOcVMZhwQhf+afCzXACHlAW1vNhxoFVD3BK9pgFE3H/sZLhws
4LQuJbBqwortrcngHTi4Uyf2JW+nJvCaVvtSkH2i/H7uQD1GExa9JUwWuHGA
FTh3mNFSE8RklPQV+HEgmD+alndRE7y9YtLURHAgpHg/eaVUE6yPPbs4iFi4
9USc+x1N0M04NpMsigPxOfmjuDZNEHFhduoRw4GsRYhn47gmdHPatDhL4kCT
ZR0/qqkF63I2FYKySLxF3eoUIy3Alx7PLEOM17isVEHWAsxbo2kdLA70PU2k
j7logf70V31bHA6MH6Zxbo/TApfwpoij8jiwChMY0+jUAkmzh1WRyjiw3j7+
6VyvFtQeaictIba9+uDD2pAWuJ+fzw1UwYHja7dXT2e1wNh31tdNFQfuStca
XPm14Xi1uJWiOg4CxlRzEj21IfdpzMtsLRyctDff3fNLGwpf3R84rY/ke69b
mIkRD/vbaS3TiCt57ZfVt+Oh+LZCDs0AB+969t7JkcDDPX42RhZDHGBswqRt
KHj4cwICDxrhoNWymPX1eTzcDHBfZwQkngrM6MY1PJwPzflljXiC49Yj1Uo8
5LVHsBcj5u66F5HVigev5Op4XWMceFI7J+iTeGgfD966j4iDdfLP7peGOsCC
aS9MJ+EguzSqfJ2sA1/mieQuxBhWhlRlGx1QMi5W4zTFgcWTbcaZPjqwRjnf
mYG40ESyxuK0Doy7fKEnkXGgC7RzL4Z1oDBD0dOKgoOu4tdH/vzQgXo79fkU
xJ4bDtaKSzrg6C/ypRHxyWbPrafYdaE+fHhM1hzJ3zA8mqquC9njwxULiI/o
XfF4nqgLwY/D20JoSP1e5lqiZejCD9tB3iLE0mwxqd1ndMHrHma2HfHrPsfq
3jJdyFdzpQla4EAlhIP5U7cu3Pxt9rAW8XjpsdIFYT0wbShI+WKJg0ecX/WP
YvQg47QzzxY6Ds6G2b5aVtYDC/n9hnKITYnKK2ugB6w26YcCEV/9OGLO5qsH
9XWfXRYRu/HRp0Vq9IBn75jpjBVSn9GNCZce6sHstjQJDmscbBuRE5B6qgds
b7eWyiN+UMVMwH7Qg/Raxab9iAVoD7LVNvQAkwNKfYhfJ2C0TGn68IpS01Fq
g4Mb4zkdz+z14dSf5rePEMdabbhR9+qDybtXF/oRK4sNpFiF6gOfCoPbVlsc
8jzNeu9yTh8CCmVrfBGTZn9HBY3qQ0FStJeQHQ4iKfkKj6f04QA+fE0JceUV
5QHeX/qQdW7Q3RixkL2n3gN2A2B5QYn0QzxV/2SZWcUAqv9skalDnJeYHXY+
wgBoH/ofUexx0DEoj5lKMIDu64N8rojXtNp6d58yAIV6Gf0AxAe+/9QYu2gA
2+mpyxmI9S32zKu0GcCv9QhaN+IRfmxQO6chJA76t1IckH4R/EhMUNAQePKL
HJwQW3Q4v/STNAQju6wWH8S1UaeUdmgaQmNfmEQi4vThuQkXZ0Nw2jnJ8QCx
xs1G39mrhtBRk8Ig6YgDXyYHQeJtQ+gpfwNKiC/smXmaf98QMkTwHrqIWbmk
sPodhiB164GONeKBwyfGkqcNoaX29L5YxAmGNvuEdY2gI//4WB9iyt5LCzpE
I0ivcuD6jJgrfjLJwcII8rMLBCbR+7ellGZ7GgHdb6qNwQkH9dSGSdY0I+h+
GXhBAfGcs0z44gcj2I2zPRuBuC4qhI17zAhG+FR7ExDHXmgqUJkxgnsP1JbS
EXN8dmr0Y9oNHILToxcQ43wzGD4r7IYZZumkR4j3Hv2Z3hW9Gw7rE1kYnJF+
eY4oOpGyGzAtlmVszuj6ZVWwZe+GXENj7R2Io9bkXxNLdkO3weI2ccRnkvby
P+jaDf4uH2/rI+7KeVZ8XYwA22bFmUMQ59XwqbfhCOAVbGcfjtj17b7Wz+oE
EDLzyY1BPC60NiZCJoBW/pZ3qYiZL6sp5AYR4LuKfcJlxPqV5+/FPiKAnvTS
2S7EpPfd6zMdBKjmPRn+BjGdgcXMo4cAZF4a5R3i/bZBHwhfCWBYwtA2jJgc
LRUXvwWgu9Zk1wLiEIlf14wVAbb//XaQzwUHP2uyO1ZVAd7hX8YIIY6iKE5X
awFgmCRTRBGnhHripXcDPOHMPIJBXNjW2cFkA2B+Zb1TE3G7b/F0WzhA9dxI
rDVi8zU9nphoAMUgnnE7xN3ZfXiteIBDF06bOSH+8GBrfEkawGHGgR/uiGe2
h/GkXABYwt9o9kcsdIeiQ24F4CbHPUpEfJE0uufvUwB9hhvnUxBLfzgeX/sC
oOJ0ZUAqYmWmmufYtwC/i+uXMxET7cXc2MYB2hkV7xYgDliZj+/gNIaxC3Zt
txHrhx4Q+MZjDJayV5yrELNPDJQzCxnDwsr812rEJYNt73ZLG8MdoY3xWsRD
zWeU7uONodDWK68FMT1Fr/+KB+JBo8wexKJ/KwIfeRtDk9mFij7EE+HSzB/9
jMH6rPezd4hPHtyuIhRmDFNxSd8HELfQPiadTjUG28dSQyOINXgSVKOrjUGe
xfXGPGKGUz/bC2qNIbLVyncRnT9mf9faRmNQu/Fe6ieaz0/blPknxvA37vOJ
FTTefsyg74Ax5N6/yLOBmL+444Q9MxEuZOzbvd0VB2OCRqKH2Ykw93akkgPx
3ezq6ixOIuhOTwhzIaYnFg51ChIhOenp152IT/gc0jBWIgILToYigHhFcecn
ZQciaBVWUCUR/7wonKDpSgTPKp0wKcQLO2Qxeh5E0InVKpRGPLWo50/yI0Ka
YfUgBvHnxv2/XI8ToeHbkLY84ue0Oq7U60TwUn9ipY74adPj6sxbRFDaYWKq
gbhdtcs+r4oIIefe6Ggibub9UnjpAREMtEl82mj8g9tw918S4XP94XJdxIUB
ewkjP4nAV6znSkB87uPBke+/iVDqVocBxPlWR1KmN4iQGN0xhfq0ZuqLla0m
oERpPUpEnPin2mmHuAmoGnwMMEXsf2pLiCHZBN4t1sxQEfuu7+Al0kwglbPy
DA2xd7BwrZm1CXwrv6FvgXivneqarasJ3HlRHWuJ2FbEJdUvyAR4Zp7NWiE2
KL99+exZE+DrX4qyRzwgWV5sWmQCQyz7/6COOHvz0lKxCUjPe0Y5IK5NKL1g
e9MEkjxEwxwRazhfLuB6aALUcEYnZ8RyW/KzT3wxAXu34Y97ED+Lys3S/mYC
BjdFzd0QH5jLPj02YQISu7A1qEsGMzOISyaA31me5I5Y4u7J1L+sJAhmHRTw
QCzgER0frkSC0I0r7F6I7/dFxsmqk0AgS84LtT01IrZPmwQN3RUNqHO0j8Zo
EEhg/+bRwf2IOTiCI2ZsSKBAsX7gjZj5gVfIgWMkiLwco+KL+KrKvmD+GBIw
RmpHooYSj6D2eBIoWQm2oY7NcjsknU4CljQP+4OIf/s4Hvx0gQTZz00C/RDP
8VA9HVtJgH9vGxWAuP+Q9Gv/ZyQIK5hsQt3y9DchrosEbMbVDIcQZ0WVS5S9
I8GB4y+TUKuMcAyvTpBg3/6s+EDEgdWv3C/ymsIUme4YjOa3vexltZApuHH0
Z6I29Ik3eipmCnXK99pRc+xSF5vFmcKDqQC1EMS343OHwNAUVF7xMIQinrBy
2DPmbQoyIT8TDiPuuan8YsXPFORN8qtQNzCzGnAGm8I6tWQIdVpdrTA+0hSO
fhXXPoKup4TQwMlMUyjOqxhGfWBmwFmx1hSWkwpFj6L7E3mPITSaAm8FNxE1
/uopXfsWUygJ4fVFvcXRUOh4pynsinpYhbqk6eL77k9I/CdeGIQjHs3wdDzM
RgY5fTY4hvjQhJK0GgcZcLktbqh/ma1OT+8kA7lDNhL1NubcFD9hMpReXr6D
Wi2y7Z6nMhkCML2iEYhjfLC8VnZkGPqk/g01a9vCJw5nMoRhBf6izpJ8dKvT
jQwUr3v8kej6DzoRyQfIkP1VioT6uU1aqFEkGVhH311ELbB76pViMRnozVam
UYgvF9UX/bhGBg1lFRfU8qvJvjfKyHDbsucQasN7YhvSd8kQQg3KQ+2lYKUi
/IQMEy5sn1BXCdzNYJ8kw5PfFL9oxLphsc5PZ5Hxd3dHom59Q8UkL5GBfU06
HfW7jNHGjXUytO4yuoV6jYl/8tdOM3DeII6jpsweM/+KNwP8vq1uMYiF1cVP
sBuagbbzD3/U04fbWxWNzeDywvlI1Lm/dhoeppmBysHgs6iH1m+qbHiYIfH/
eYk6lGOId1eaGdT/3ql9HDGJnmhteNoMnC4bGaMWyJbL9MgzA2KkiSXqh7xH
WUsvmsHrqiFv1KwiXKsad82gxcw2F3WhPHyyGDSDblzlN9SHAr4Jh3w2A8bk
kjnUhIoMp7yvZjAkFP0b9Zjah9cfZs1gKbaTMxbdH7qH2w6wUGB8ZU0DdSu5
pCxemQKu15giUOenUr9e06DAXz35eNS+nXNSz3Qo0NGpnYqag25UxEmkwG0M
UwFqR4d3mYWOFHA6EVKLenI/+5F7cRTIwH+fQT11idT0KJkCKcpHfqKe+RDP
9iKNAr/OT/xBPWe1WvQljwJyvRfY49D6NJho5yqjgFERvxRqJr4uAb/XFIio
y6CjZrFi3xf2lgJxx6bsUG9JJ5XHDVDA28nABTU7QxPh7BgFeWG5sR8151TF
wbYVCiznNh1DLdSe1SAmZQ6Mt7kuohbeeMEijzWH4JfHrqAW0We30lI0B3ue
3uuoxe/Ej1K1zSG1xrMStcyFUI4Ic3O4ND/UjFolzG5vT6g5dJTGfEStVpVV
9jHcHOb0RL6gVp94sTAebQ79/pVjqLU8SSc3UsxBS6tmErW+hfYdpUJzyFDT
X0VtihFkOtlqDvDGlSce8biXWZnBM3OwcJLkR51x5Rh97oU58D34KIi6R7y/
0OWtObwKAjHUe3ed11QaNweSchkOdQSXiM8bTiq8CeIzQC1iSdt+gocK0uZe
RqibT0VX6wtSIdH9JgH1lq1D69ckqZCfJENCnct88Wy4JhUoI88tUJeviHeI
uFDhnsSsG2q6jlXQa3cqhAR+2It64WgcX4oXFb4KNXui1l0c9pwJoMK7znBv
1O3Tl1dbYqkQ7n4jAPWnEWnFAyVU6GzkiUSdIGX3RvgmFX4b3opCjfFMOvaq
ggqlXEYxqAM+jrbp1lGBOmAfh3rlfYnb9k4qPE6jp6Dmfok9fWeWChrJR7NR
/51Vu965RAXP+LEc1BM8Bg/HVqmg+IOeh7rV2WpCiIUGZ/QFzqI+PHaMnCBE
A1W/kCLUfX86/toY05Dvqr3XUbeI9/IfItNgYCO9FPVt449KJ2g0iIiouYE6
+eS8a4MDDY66rd5Erc0rXCftTwM5LddK1GcVAoIXc2mwrSeyFnWi5dETnAU0
kPYKrkMdFBJ3EXeRBq5f9tWjJtfmvdhzgwY8fUYNqJeNH+LaG2lQmd/ThNrZ
hfNz/hgNQkKPtaMmxQguV/6ggSPSElGrFUtxPZ+hwXgB61PUW79qG66v0GDh
3alnqBtC9hb4cFrA8ezIzs36SK2yxuMt4HTE+CvUZZUVbav6FiD5KeE1avzb
cnwTwQLkIne9QW0rXSZKMreAfm+THtTpDy+P27hZgHNJYh/q33M58YGJFiAs
UdOPOlUwe1HtpAX81tf4EL/5PDh9YOmUBdwaqNq0xql0i+gzFiBVVzqA2l82
SSitzAK03ZOGUH9wCbtT0m0B+n/+DKNeKg05q9hvAQL7Xn5GvXPpUMzdLxYw
NH7+C2rKaR9Ky5IFbHuDGUVd3+r4eVDYEvYyb/m2ub477J56YSxhJebupufc
rG7/ULaE29N7vqOWWzaLWAZLqOO9No76nKLeTl5fS+ibYZncHC9gH7d/iCUM
vs/ZdPqtNJ7HkZbQlCYyhTpWfoAvOMMSsnNlp1F746J3vai2hHIFgdnN+j9w
TVi60RL6rU5t2qn0hUhkuyW4dKxvmiorKo57bwnO8wNzm+sp0ySdtGYJPY+P
LaCWucopq76DDm5U3cXN+ZTaixuWokOL5Nym18Q3FA3M6FBmYvYT9exFK5Uf
LnQ4TPu+6RHRy2rnDtFhVTD+F+rnwsbaizl0pH9eXEb9WWH1N76UDpw05ZXN
+tOvbolqoAMeajctu0fKgmmUDh88762iNgz4wE1epsOIqsJv1HbROe/TtlvB
O73CTScUMe7n1rKC6yL+f1BXNYbOFLhZgb84dg31x8EvkZIpVkDBvd709jWb
LWUVVkCa9ltHrSfamq36zgry15c27UIL1ZzYaQ0uM2//oj6TmnDpId4aPu3J
3tjsj09ytma5WcPAgAJDAmIu5qth+xKtofXzrU0LtHo6u/dZAwNrFCNq8QQJ
QxesDfQ/ZWZCzddrtPo23AaE/7pvequsW63tMxsY9y7ctGh1g4YPjy305Lds
WsVoV9Uxd1ugvR3Y9GtOAb0vlbaQIDqz6cOfeNqoDHZwbf73ptV+WHFQLexg
HwszM+rZxQwH8wI7kE5j33RRjnzE8xE7WNzNsWkz1aeF5sr28LqLa9OJ3Iwv
JGPtYaZi56abFw3+LHfbw9UZ7k0L7Kyb8BZ2gDP1PJsOUtIYeOPjAANE3k07
ZtLen6lzgPkb/2w0493nstURlib+2TitObvGATEf36ZNMUKWnFcdIUv9n/G2
b0a+TzlCPemf5eLTI1p1nOCgxMHN/G4ufBFZSnWCmD3/flfw0XskO+AEI/v+
uYP7jdS0rDN88/lnn+aDyfdCneHqwX/Orbq01NPmDJf9//nR5T7veX4XmAv4
5wGMf2X2ARfoPPTPS2Uby6p1LuAa+M9Kvm8ZfJhcofY/75ct31po6QoL/1lB
TkISW+wKYkH/PK+Qh7875wq6/7nP14yjz3APWPzn+pI/X36m7gHH/5wWtiOn
oHcPuP1nV5IMGIi7gcd/bnB+u6YV7Aae/1kk8OQDlZb/d0FjpHbzdvf//Z9/
26FqS6f/94BBXm9pufv/7n8psOHnxoY7uP7n/wNvNqAy
         "]]}, 
       RowBox[{
        "\"1.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "1.0 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
         "]]}, 
       RowBox[{
        "\"1.5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "1.5 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
2kL5nO9v+///U8gC
         "]]}, 
       RowBox[{
        "\"2.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "2.0 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
         "]]}, 
       RowBox[{
        "\"2.5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "2.5 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
Q4/LMfkC5PSzVcv//tFBdUcjgeH/Ax7R7i8=
         "]]}, 
       RowBox[{
        "\"3.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"", " ", 
         "\[Null]"}]], 
      Annotation[#, 
       "3.0 a.u./\!\(\*SubscriptBox[\(k\), \(B\)]\)" $CellContext`\[Null], 
       "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {0, 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Frequency \[Times] h / a.u.\"", TraditionalForm], 
      FormBox[
      "\"Integral of spectral radiance \[Times] \
\\!\\(\\*SuperscriptBox[\\(h\\), \\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\(c\\), \
\\(2\\)]\\) / (a.u.\\!\\(\\*SuperscriptBox[\\()\\), \\(2\\)]\\)\"", 
       TraditionalForm]}, FrameStyle -> Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Integrals of Cube Root of Spectral Radiance at Temperatures\"", 
       FontSize -> 34, StripOnInput -> False], TraditionalForm], 
    PlotRange -> {{0, 120}, {0, 110}}, PlotRangeClipping -> True, 
    PlotRangePadding -> {
      Scaled[0.02], Automatic}],StyleBox[
    TagBox[
     GridBox[{{
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Max slope\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"1.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"",
               " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"1.5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"",
               " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"2.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"",
               " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"2.5 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"",
               " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            
            RowBox[{"\"3.0 a.u./\\!\\(\\*SubscriptBox[\\(k\\), \\(B\\)]\\)\"",
               " ", "\[Null]"}]}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}}, 
      GridBoxAlignment -> {"Columns" -> {{Left}}}, 
      GridBoxItemSize -> {
       "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Column"], "TR",
     StripOnInput -> False, ShowStringCharacters -> False, FontFamily -> 
    "Helvetica", FontSize -> 34]},
  "Labeled",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, 
    GridBoxItemSize -> {"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
    BaselinePosition -> {1, 1}]& ),
  InterpretationFunction->(RowBox[{"Labeled", "[", 
     RowBox[{#, ",", #2, ",", "Right"}], "]"}]& )]], "Output",
 CellChangeTimes->{3.537379219526382*^9, 3.537379273842281*^9, 
  3.537379398725864*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "Show", " ", "the", " ", "derivative", " ", "and", " ", "partial", " ", 
   RowBox[{"derivatives", "."}]}], " ", "*)"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"Planck", "'"}], "s", " ", "law", " ", 
     RowBox[{"(", 
      RowBox[{"wavenumber", " ", "form"}], ")"}]}], ":"}], " ", "*)"}], "\n", 
  
  RowBox[{
   RowBox[{
    RowBox[{"Ih4c3", "[", 
     RowBox[{"hf_", ",", "kT_"}], "]"}], ":=", 
    RowBox[{"2", "*", 
     RowBox[{
      RowBox[{"hf", "^", "5"}], "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Exp", "[", 
         RowBox[{"hf", "/", "kT"}], "]"}], "-", "1"}], ")"}]}]}]}], " ", "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"where", " ", "Ih4c3"}], " ", "=", " ", 
      RowBox[{"B", "*", "h", "*", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"h", "*", "c"}], ")"}], "^", "3."}], " ", "Note", " ", 
       "that", " ", "this", " ", "is", " ", 
       RowBox[{"h", "^", "2"}], "*", "c", "*", 
       RowBox[{"hf", "^", "2"}], "*", 
       RowBox[{"Ih2c2", ".", "  ", "The"}], " ", "dimensionality", " ", "of", 
       " ", "Ih2c2", " ", "is", " ", 
       RowBox[{"energy", "^", "3"}]}]}], ",", " ", 
     RowBox[{"whereas", " ", "the", " ", "dimensionality", " ", "of", " ", 
      RowBox[{"h", "^", "4"}], "*", 
      RowBox[{"c", "^", "3"}], "*", "B", " ", 
      RowBox[{"energy", "^", "7"}], "*", "time", "*", "volume", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"more", " ", "complicated"}], ")"}], "."}]}]}], " ", 
    "*)"}]}]}]], "Code"],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "Show", " ", "the", " ", "derivative", " ", "and", " ", "partial", " ", 
   RowBox[{"derivatives", "."}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Total", " ", 
    RowBox[{"derivative", ":"}]}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{"D", "[", 
    RowBox[{"Ih4c3", "[", 
     RowBox[{"hf", ",", "kT"}], "]"}], "]"}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"W", ".", "r", ".", "t", ".", " ", 
     RowBox[{"hnu", ":"}]}], " ", "*)"}], "\n", 
   RowBox[{"Simplify", "[", 
    RowBox[{"D", "[", 
     RowBox[{
      RowBox[{"Ih4c3", "[", 
       RowBox[{"hf", ",", "kT"}], "]"}], ",", "hf"}], "]"}], "]"}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"W", ".", "r", ".", "t", ".", " ", 
     RowBox[{"kT", ":"}]}], " ", "*)"}], "\n", 
   RowBox[{"D", "[", 
    RowBox[{
     RowBox[{"Ih4c3", "[", 
      RowBox[{"hf", ",", "kT"}], "]"}], ",", "kT"}], "]"}], "\n", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{"Ih4c3", "[", 
      RowBox[{"hf", ",", "kT"}], "]"}], ",", 
     RowBox[{"{", "}"}]}], "]"}]}]}]], "Code"],

Cell[BoxData[
 FractionBox[
  RowBox[{"2", " ", 
   SuperscriptBox["hf", "5"]}], 
  RowBox[{
   RowBox[{"-", "1"}], "+", 
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{"hf", "/", "kT"}]]}]]], "Output",
 CellChangeTimes->{3.537379220854828*^9, 3.53737927562425*^9, 
  3.537379399983841*^9}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"2", " ", 
    SuperscriptBox["hf", "4"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SuperscriptBox["\[ExponentialE]", 
        RowBox[{"hf", "/", "kT"}]], " ", 
       RowBox[{"(", 
        RowBox[{"hf", "-", 
         RowBox[{"5", " ", "kT"}]}], ")"}]}], "+", 
      RowBox[{"5", " ", "kT"}]}], ")"}]}], 
   RowBox[{
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "1"}], "+", 
       SuperscriptBox["\[ExponentialE]", 
        RowBox[{"hf", "/", "kT"}]]}], ")"}], "2"], " ", "kT"}]]}]], "Output",
 CellChangeTimes->{3.537379220854828*^9, 3.53737927562425*^9, 
  3.537379400006733*^9}],

Cell[BoxData[
 FractionBox[
  RowBox[{"2", " ", 
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{"hf", "/", "kT"}]], " ", 
   SuperscriptBox["hf", "6"]}], 
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "1"}], "+", 
      SuperscriptBox["\[ExponentialE]", 
       RowBox[{"hf", "/", "kT"}]]}], ")"}], "2"], " ", 
   SuperscriptBox["kT", "2"]}]]], "Output",
 CellChangeTimes->{3.537379220854828*^9, 3.53737927562425*^9, 
  3.537379400009133*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Integrate", "::", "ilim"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Invalid integration variable or limit(s) in \
\[NoBreak]\\!\\({}\\)\[NoBreak]. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Integrate/ilim\\\", ButtonNote -> \
\\\"Integrate::ilim\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.537379220903504*^9, 3.537379275640223*^9, 
  3.537379400011451*^9}],

Cell[BoxData[
 RowBox[{"\[Integral]", 
  RowBox[{
   FractionBox[
    RowBox[{"2", " ", 
     SuperscriptBox["hf", "5"]}], 
    RowBox[{
     RowBox[{"-", "1"}], "+", 
     SuperscriptBox["\[ExponentialE]", 
      RowBox[{"hf", "/", "kT"}]]}]], 
   RowBox[{"\[DifferentialD]", 
    RowBox[{"{", "}"}]}]}]}]], "Output",
 CellChangeTimes->{3.537379220854828*^9, 3.53737927562425*^9, 
  3.53737940001377*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "Isolate", " ", "and", " ", "show", " ", "the", " ", "part", " ", "of", " ",
    "the", " ", "1", "st", " ", "partial", " ", "derivative", " ", "that", 
   " ", "will", " ", "be", " ", "set", " ", "to", " ", "zero", " ", "to", " ",
    "solve", " ", "for", " ", 
   RowBox[{"Wien", "'"}], "s", " ", "displacement", " ", "constant", " ", 
   RowBox[{
    RowBox[{"(", "c3", ")"}], "."}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Simplify", "[", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"D", "[", 
      RowBox[{
       RowBox[{"Ih4c3", "[", 
        RowBox[{"hf", ",", "kT"}], "]"}], ",", "hf"}], "]"}]}], 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"Exp", "[", 
          RowBox[{"hf", "/", "kT"}], "]"}], "-", "1"}], ")"}], "^", "2"}], 
      "/", 
      RowBox[{"hf", "^", "4"}]}], "/", "2"}]}], "]"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"Solve", " ", "for", " ", 
    RowBox[{"c3_lambda", "."}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"NumberForm", "[", 
   RowBox[{
    RowBox[{"Solve", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"D", "[", 
         RowBox[{
          RowBox[{"Ih4c3", "[", 
           RowBox[{"hf", ",", "kT"}], "]"}], ",", "hf"}], "]"}], 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"Exp", "[", 
              RowBox[{"1.", 
               RowBox[{"hf", "/", "kT"}]}], "]"}], "-", "1"}], ")"}], "^", 
           "2"}], "/", 
          RowBox[{"hf", "^", "4"}]}], "/", "2"}]}], "==", "0"}], ",", "hf"}], 
     "]"}], ",", "20"}], "]"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
   "The", " ", "factor", " ", "of", " ", "1.0", " ", "forces", " ", 
    "Mathematica", " ", "to", " ", "give", " ", "a", " ", "numeric", " ", 
    RowBox[{"answer", "."}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"Solve", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"1.", 
      RowBox[{"Exp", "[", 
       RowBox[{"1.", "x"}], "]"}], "*", 
      RowBox[{"(", 
       RowBox[{"5", "-", 
        RowBox[{"1.", "x"}]}], ")"}]}], "==", "5."}], ",", "x"}], "]"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Based", " ", "on", " ", 
     RowBox[{"NIST", "--"}], 
     RowBox[{"(", 
      RowBox[{
      "Wien", " ", "wavelength", " ", "displacement", " ", "law", " ", 
       "constant"}], ")"}], "*", 
     RowBox[{"(", 
      RowBox[{"Planck", " ", "constant"}], ")"}], "*", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"speed", " ", "of", " ", "light"}], ")"}], "/", 
      RowBox[{"(", 
       RowBox[{"Boltzmann", " ", "constant"}], ")"}]}]}], ":"}], " ", 
   "*)"}]}], "\n", 
 RowBox[{"c3lambda", "=", 
  RowBox[{
   RowBox[{"1", "/", "2.8977685*^-3"}], "*", "6.62606896*^-34", "*", 
   RowBox[{"299792458", "/", "1.3806504*^-23"}]}]}], "\n", 
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"The", " ", "quantity", " ", "is", " ", 
     RowBox[{"dimensionless", ":", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "/", 
         RowBox[{"(", 
          RowBox[{"s", ".", "K"}], ")"}]}], ")"}], "*", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"J", ".", "s"}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{"J", "/", "K"}], ")"}]}]}]}]}], " ", "=", " ", 
    RowBox[{
    "1.", "  ", "Note", " ", "that", " ", "the", " ", "result", " ", "is", 
     " ", "the", " ", 
     RowBox[{"same", "."}]}]}], " ", "*)"}]}]}], "Code"],

Cell[BoxData[
 FractionBox[
  RowBox[{
   RowBox[{
    SuperscriptBox["\[ExponentialE]", 
     RowBox[{"hf", "/", "kT"}]], " ", 
    RowBox[{"(", 
     RowBox[{"hf", "-", 
      RowBox[{"5", " ", "kT"}]}], ")"}]}], "+", 
   RowBox[{"5", " ", "kT"}]}], "kT"]], "Output",
 CellChangeTimes->{3.537379221430556*^9, 3.537379275744693*^9, 
  3.537379400070509*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Solve", "::", "ifun"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Inverse functions are being used by \
\[NoBreak]\\!\\(Solve\\)\[NoBreak], so some solutions may not be found; use \
Reduce for complete solution information. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Solve/ifun\\\", ButtonNote -> \
\\\"Solve::ifun\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.53737922220021*^9, 3.537379275851552*^9, 
  3.537379400168329*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{"{", 
    RowBox[{"hf", "\[Rule]", 
     RowBox[{
      InterpretationBox["\<\"4.965114231744276\"\>",
       4.965114231744276,
       AutoDelete->True], " ", "kT"}]}], "}"}], "}"}],
  NumberForm[#, 20]& ]], "Output",
 CellChangeTimes->{3.537379221430556*^9, 3.537379275744693*^9, 
  3.537379400170674*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Solve", "::", "ifun"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Inverse functions are being used by \
\[NoBreak]\\!\\(Solve\\)\[NoBreak], so some solutions may not be found; use \
Reduce for complete solution information. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Solve/ifun\\\", ButtonNote -> \
\\\"Solve::ifun\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.53737922220021*^9, 3.537379275851552*^9, 
  3.537379400176341*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", "1.0089752040803886`*^-16"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", "4.965114231744276`"}], "}"}]}], "}"}]], "Output",\

 CellChangeTimes->{3.537379221430556*^9, 3.537379275744693*^9, 
  3.537379400178638*^9}],

Cell[BoxData["4.965114225542588`"], "Output",
 CellChangeTimes->{3.537379221430556*^9, 3.537379275744693*^9, 
  3.537379400180353*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Derive", " ", "the", " ", "Sefan"}], "-", 
    RowBox[{"Boltzmann", " ", "law", " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"see", " ", 
         RowBox[{"http", ":"}]}], "//", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"en", ".", "wikipedia", ".", "org"}], "/", "wiki"}], "/", 
          "Stefan"}], "%", " ", "E2", " ", "%80", " ", "%93", " ", 
         "Boltzmann_law"}]}], ")"}], "."}]}]}], " ", "*)"}], 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "This", " ", "is", " ", "an", " ", "integration", " ", "of", " ", 
     RowBox[{"Planck", "'"}], "s", " ", "law", " ", "over", " ", "all", " ", 
     "frequencies", " ", "at", " ", "constant", " ", "pressure", " ", "and", 
     " ", "over", " ", "the", " ", "half", " ", "sphere"}], ",", " ", 
    RowBox[{"subject", " ", "to", " ", 
     RowBox[{"Lambert", "'"}], "s", " ", "cosine", " ", 
     RowBox[{"law", "."}]}]}], " ", "*)"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Calculate", " ", "and", " ", "show", " ", "the", " ", "product", " ", 
    "of", " ", "the", " ", "integrated", " ", 
    RowBox[{"factors", "."}]}], " ", "*)"}], " ", "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"u", "^", "3"}], "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"Exp", "[", "u", "]"}], "-", "1"}], ")"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"u", ",", "0", ",", "Infinity"}], "}"}]}], "]"}], "2", "Pi", 
    " ", 
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"Sin", "[", "phi", "]"}], "*", 
       RowBox[{"Cos", "[", "phi", "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"phi", ",", "0", ",", 
        RowBox[{"Pi", "/", "2"}]}], "}"}]}], "]"}]}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"Multiply", " ", "by", " ", "the", " ", "extracted", " ", 
     RowBox[{"coefficient", "."}]}], " ", "*)"}], "\n", 
   RowBox[{"%", " ", "2", "*", 
    RowBox[{
     RowBox[{
      RowBox[{"kT", "^", "4"}], "/", 
      RowBox[{"h", "^", "3"}]}], "/", 
     RowBox[{"c", "^", "2"}]}]}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"The", " ", "Stefan"}], "-", 
     RowBox[{
     "Boltzmann", " ", "constant", " ", "is", " ", "that", " ", "result", " ",
       "divided", " ", "by", " ", 
      RowBox[{"T", "^", "4."}]}]}], " ", "*)"}], "\n", 
   RowBox[{"%", " ", 
    RowBox[{
     RowBox[{"k", "^", "4"}], "/", 
     RowBox[{"(", 
      RowBox[{"kT", "^", "4"}], ")"}]}]}], "\n", "\n", "\n"}]}]], "Code"],

Cell[BoxData[
 FractionBox[
  SuperscriptBox["\[Pi]", "5"], "15"]], "Output",
 CellChangeTimes->{3.537379225302578*^9, 3.537379276119924*^9, 
  3.537379400378816*^9}],

Cell[BoxData[
 FractionBox[
  RowBox[{"2", " ", 
   SuperscriptBox["kT", "4"], " ", 
   SuperscriptBox["\[Pi]", "5"]}], 
  RowBox[{"15", " ", 
   SuperscriptBox["c", "2"], " ", 
   SuperscriptBox["h", "3"]}]]], "Output",
 CellChangeTimes->{3.537379225302578*^9, 3.537379276119924*^9, 
  3.537379400380798*^9}],

Cell[BoxData[
 FractionBox[
  RowBox[{"2", " ", 
   SuperscriptBox["\[Pi]", "5"]}], 
  RowBox[{"15", " ", 
   SuperscriptBox["c", "2"], " ", 
   SuperscriptBox["h", "3"]}]]], "Output",
 CellChangeTimes->{3.537379225302578*^9, 3.537379276119924*^9, 
  3.537379400382514*^9}]
}, Open  ]]
},
WindowSize->{740, 857},
WindowMargins->{{144, Automatic}, {Automatic, 0}},
FrontEndVersion->"8.0 for Linux x86 (32-bit) (October 10, 2011)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1235, 30, 1949, 51, 183, "Input"],
Cell[3187, 83, 109, 2, 30, "Input"],
Cell[3299, 87, 6697, 167, 598, "Code"],
Cell[9999, 256, 1330, 33, 183, "Input"],
Cell[11332, 291, 4684, 118, 636, "Code"],
Cell[16019, 411, 207, 6, 30, "Input"],
Cell[16229, 419, 3614, 108, 218, "Code"],
Cell[19846, 529, 178, 4, 30, "Input"],
Cell[CellGroupData[{
Cell[20049, 537, 942, 28, 161, "Code"],
Cell[20994, 567, 294, 9, 50, "Output"],
Cell[21291, 578, 685, 22, 59, "Output"],
Cell[21979, 602, 481, 15, 57, "Output"],
Cell[22463, 619, 510, 11, 24, "Message"],
Cell[22976, 632, 407, 13, 51, "Output"]
}, Open  ]],
Cell[23398, 648, 459, 9, 69, "Input"],
Cell[CellGroupData[{
Cell[23882, 661, 2871, 91, 180, "Code"],
Cell[26756, 754, 356, 11, 50, "Output"],
Cell[27115, 767, 577, 12, 61, "Message"],
Cell[27695, 781, 358, 11, 43, "Output"],
Cell[28056, 794, 577, 12, 61, "Message"],
Cell[28636, 808, 436, 14, 47, "Output"],
Cell[29075, 824, 134, 2, 30, "Output"]
}, Open  ]],
Cell[29224, 829, 622, 14, 69, "Input"],
Cell[CellGroupData[{
Cell[29871, 847, 2491, 68, 104, "Code"],
Cell[32365, 917, 68344, 1181, 817, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[100746, 2103, 2491, 68, 104, "Code"],
Cell[103240, 2173, 68343, 1181, 817, "Output"]
}, Open  ]],
Cell[171598, 3357, 621, 14, 69, "Input"],
Cell[CellGroupData[{
Cell[172244, 3375, 2797, 75, 104, "Code"],
Cell[175044, 3452, 66252, 1156, 817, "Output"]
}, Open  ]],
Cell[241311, 4611, 654, 14, 69, "Input"],
Cell[CellGroupData[{
Cell[241990, 4629, 3620, 96, 104, "Code"],
Cell[245613, 4727, 52640, 931, 817, "Output"]
}, Open  ]],
Cell[298268, 5661, 178, 4, 30, "Input"],
Cell[CellGroupData[{
Cell[298471, 5669, 4548, 115, 123, "Code"],
Cell[303022, 5786, 60251, 1054, 817, "Output"]
}, Open  ]],
Cell[363288, 6843, 178, 4, 30, "Input"],
Cell[363469, 6849, 1455, 41, 85, "Code"],
Cell[364927, 6892, 178, 4, 30, "Input"],
Cell[CellGroupData[{
Cell[365130, 6900, 942, 28, 161, "Code"],
Cell[366075, 6930, 293, 9, 50, "Output"],
Cell[366371, 6941, 685, 22, 59, "Output"],
Cell[367059, 6965, 480, 15, 57, "Output"],
Cell[367542, 6982, 511, 11, 24, "Message"],
Cell[368056, 6995, 405, 13, 51, "Output"]
}, Open  ]],
Cell[368476, 7011, 459, 9, 69, "Input"],
Cell[CellGroupData[{
Cell[368960, 7024, 3062, 96, 180, "Code"],
Cell[372025, 7122, 358, 11, 50, "Output"],
Cell[372386, 7135, 577, 12, 61, "Message"],
Cell[372966, 7149, 357, 11, 43, "Output"],
Cell[373326, 7162, 577, 12, 61, "Message"],
Cell[373906, 7176, 314, 9, 33, "Output"],
Cell[374223, 7187, 134, 2, 30, "Output"]
}, Open  ]],
Cell[374372, 7192, 1036, 26, 126, "Input"],
Cell[CellGroupData[{
Cell[375433, 7222, 1600, 47, 199, "Code"],
Cell[377036, 7271, 166, 4, 50, "Output"],
Cell[377205, 7277, 309, 9, 50, "Output"],
Cell[377517, 7288, 273, 8, 50, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature @v0#QoP@RoEUEAKExpgQHx@@ *)
