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
NotebookDataLength[    339943,       6339]
NotebookOptionsPosition[    338854,       6293]
NotebookOutlinePosition[    339292,       6310]
CellTagsIndexPosition[    339249,       6307]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Evaluate", " ", "basic", " ", "equations", " ", "and", " ", "produce", 
    " ", "basic", " ", "plots", " ", "for", " ", "the", " ", 
    RowBox[{"dissertation", "."}]}], " ", "*)"}], "\n", 
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
     "not", " ", "saved", " ", "in", " ", "this", " ", "file"}], ",", 
    RowBox[{"but", " ", "are", " ", 
     RowBox[{"exported", "."}]}]}], " ", "*)"}]}]], "Input"],

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
 CellChangeTimes->{3.537379094172778*^9}],

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
     RowBox[{"frame", "."}]}]}], " ", "*)"}], "\n", 
  RowBox[{
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
            RowBox[{"l_Point", "|", "l_Line"}]}], "}"}], ",", "tt_"}], "]"}], 
        ":>", "\n", 
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
                RowBox[{"ImagePadding", "->", "0"}]}], "]"}], ",", "\n", 
              "Line", ",", "\n", 
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
                    RowBox[{"option", "."}]}]}], " ", "*)"}], "\n", 
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
       RowBox[{"Thickness", "[", "1.2", "]"}], "]"}]}]}], " ", "*)"}], "\n", 
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
    "*)"}]}]}]], "Code",
 CellChangeTimes->{
  3.537379118260755*^9, {3.537379280424304*^9, 3.53737928302701*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Thermal", " ", "velocity", " ", "distributions"}], " ", "*)"}], 
  "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"See", " ", 
     RowBox[{"http", ":"}]}], "//", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"en", ".", "wikipedia", ".", "org"}], "/", "wiki"}], "/", 
      "Maxwell"}], "-", 
     RowBox[{"Boltzmann_distribution", "."}]}]}], " ", "*)"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Gaussian", " ", 
    RowBox[{"(", "normal", ")"}], " ", "distribution"}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"pG", "[", 
     RowBox[{"x_", ",", "sigma_", ",", "mu_"}], "]"}], ":=", 
    RowBox[{
     RowBox[{"Sqrt", "[", 
      RowBox[{"1", "/", 
       RowBox[{"(", 
        RowBox[{"2", "Pi", "*", 
         RowBox[{"sigma", "^", "2"}]}], ")"}]}], "]"}], 
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"x", "-", "mu"}], ")"}], "^", "2"}]}], "/", 
       RowBox[{"(", 
        RowBox[{"2", 
         RowBox[{"sigma", "^", "2"}]}], ")"}]}], "]"}]}]}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"Maxwell", " ", "distribution"}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{"pM", "[", 
     RowBox[{"x_", ",", "a_"}], "]"}], ":=", 
    RowBox[{
     RowBox[{"Sqrt", "[", 
      RowBox[{"2", "/", "Pi"}], "]"}], 
     RowBox[{
      RowBox[{"x", "^", "2"}], "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"a", "^", "3"}], 
        RowBox[{"Exp", "[", 
         RowBox[{
          RowBox[{"x", "^", "2"}], "/", 
          RowBox[{"(", 
           RowBox[{"2", 
            RowBox[{"a", "^", "2"}]}], ")"}]}], "]"}]}], ")"}]}]}]}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"Also", ",", " ", 
     RowBox[{"this", " ", 
      RowBox[{"is", ":"}]}]}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{"pM", "[", 
     RowBox[{"x_", ",", "a_"}], "]"}], ":=", 
    RowBox[{
     RowBox[{"pG", "[", 
      RowBox[{"x", ",", "a", ",", "0"}], "]"}], "2", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"x", "/", "a"}], ")"}], "^", "2"}]}]}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
    "Probability", " ", "density", " ", "of", " ", "1", "D", " ", 
     "velocity"}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{"pveli", "[", 
     RowBox[{"phi_", ",", "T_", ",", "m_"}], "]"}], ":=", 
    RowBox[{"pG", "[", 
     RowBox[{"phi", ",", 
      RowBox[{"Sqrt", "[", 
       RowBox[{"T", "/", "m"}], "]"}], ",", "0"}], "]"}]}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"Probability", " ", "density", " ", "of", " ", "speed"}], " ", 
    "*)"}], "\n", 
   RowBox[{
    RowBox[{"pspd", "[", 
     RowBox[{"phi_", ",", "T_", ",", "m_"}], "]"}], ":=", 
    RowBox[{"pM", "[", 
     RowBox[{"phi", ",", 
      RowBox[{"Sqrt", "[", 
       RowBox[{"T", "/", "m"}], "]"}]}], "]"}]}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"Temperature", " ", 
     RowBox[{"(", 
      RowBox[{"as", " ", "a", " ", "potential"}], ")"}]}], " ", "*)"}], "\n", 
   
   RowBox[{
    RowBox[{"T", "=", 
     RowBox[{"298.15", "*", "8.314"}]}], ";"}]}]}]], "Code"],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Distribution", " ", "of", " ", "1", "D", " ", "velocities"}], " ", 
  "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pveli", "[", 
         RowBox[{"phi", ",", "T", ",", "0.004"}], "]"}], ",", 
        "\"\<4 g/mol\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pveli", "[", 
         RowBox[{"phi", ",", "T", ",", "0.020"}], "]"}], ",", 
        "\"\<20 g/mol\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pveli", "[", 
         RowBox[{"phi", ",", "T", ",", "0.040"}], "]"}], ",", 
        "\"\<40 g/mol\>\""}], "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pveli", "[", 
         RowBox[{"phi", ",", "T", ",", "0.132"}], "]"}], ",", 
        "\"\<132 g/mol\>\""}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"phi", ",", "0", ",", "2500"}], "}"}], ",", 
    RowBox[{"PlotRange", "->", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0.003"}], "}"}]}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Distribution of 1D Velocities at 25 \[Degree]C\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Velocity / m s\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\\)]\\)\>\"", 
       ",", "\"\<Probability density / m\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\
\\)]\\) s\>\""}], "}"}]}]}], "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Basic-VelDist.pdf\>\"\
", ",", "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Basic-VelDist.png\>\
\""}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{3.537379118274217*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
8A==
         "]]}, "\"4 g/mol\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "4 g/mol", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
         "]]}, 
       "\"20 g/mol\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "20 g/mol", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
C14MWF8lU5I3QxIcOx473Bq8E1vyP+v7iSMJLhydmb1fuwOjt7625MKTBB1k
h6e+43QY+zUrS36BJDjkJGLqxUeHSR5J0rKVSoLIo1+aa9Em4ezO8ob9ckng
YX1Etvv7X8LFyTb5mnNJoH2I+78bYesEs/J/vHsvJQGLHn1A5YFVgqfPqR1E
vSSolCedwb4tEeKvmI9nmyXBD8rrp586Fwglh+LaVuySgNePc6nl7x9C2+ib
0oueSUCK2LE6pjVHmCheTYgLSQK+3t2zCaQZws4nEt4/KUmgyXJSfOTjFIFf
/aaFXEYS2M+qPz6rOUE4dyBS07c4CURu3oipYhgj8O9QIP2uTQK6lsYC0v6f
BIbp/q83W5Ng0mOJ66b2MGGqO+BIa3cSyPGcO+BQPEhobzhhfmYkCf76UPdM
2w0QEuMfz3JsbK/rjB1+frGXYGHb5ja9Pxnw0z0fWte7CLKqRxhbTiTD8cJY
zkP3OgibPLbRaReTgcqQ/eRh3wfC29kaPk/TZBj7XfrRZbyFQG5i+c/ANRmM
guoiM1tfEzp1T2lw5iQDjXfi/cPL1QTOEf3fbb3J4CERfOTP6xICkxQ1p/d7
MnTGRZa66JUQ1p36zEd/JMPdo9xRQePFhGEm056N0WTwvSnyj527mFAsYdkg
OZ8M38/4unrwFBKuPnSPDdmTAiuCGdy0uhxC1I6nZy4opUCwVKO97dM0wkfR
wg0SSoHDollOEVJpBBb1uoZB5RTYTFk9E1mTSggm/dDwVEuBzMbkvM53Twne
RwVvleqnQLeJ5Z+rz5MIDhfSgoUcUmBG392NUzOeoBOS3ruZkQIDP/pHzldE
Erg5sj0q2J7CL64pKSkXd8IFVq4XrF1PYdvurwhdfQKd3frnBb1UcE2+9c+i
UYpQcNh5dKY2FZqxJeLisZ2E4obUhT6BNBANz69xy/imtP4p6Mbu0DTo5KKX
kwsqUqJ2CdRJzKRBflRTfEpAgFJgagNmpPUMrBjH+TXnbyhVfeE/8O7FM+DZ
46qZ9faEkuqOE1OSvOmwGmafu+qwQ8ki4r7iCF86lDhNK137TqcUeigrlHYk
Hbwmr/FGa9IptZ8SkNwtlA4WQpQugsuW4s3bHDZjx9PhQ5endA51XdHp9dJM
6ul0sO5OcDJQXVTMCnj1h/taOhh4bT284Dqu+I7jr3KbTjpkX6AJMxeMKU4n
nyH566WDH1k8MHBqVFG2okh24Xo67OK84Pfd5afiq7Fnju0m6cDimdx7+OuQ
4tdLQUuhNunAGh9C2zz0TXG98/UFFbt0eMsrF3BCpk+R/xYdZc0+Hd65nJQn
aPYq3nF1U7B0TAf8XnfmdNJXxbls60cX3NMhPmVSoz2mS5HrdHbLhkc6WI6f
9Tr8o1NRoeHnwbLH6fD1uraqlWynomevcaWwTzpMH532x6c6FJ/epe3q802H
MHnbgrtaHYqNf7oNY/zT4SbnjszWF+2Ko4+5ctQCt88fTcxRPtauuGvP1bV/
QekweHT3LJL7pPg/yync/w==
         "]]}, "\"40 g/mol\"", TooltipStyle -> 
       "TextStyling"], Annotation[#, "40 g/mol", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
         "]]}, 
       "\"132 g/mol\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "132 g/mol", "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {0, 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox[
      "\"Velocity / m s\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\\)]\\)\"", 
       TraditionalForm], 
      FormBox[
      "\"Probability density / m\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\\)]\\) \
s\"", TraditionalForm]}, FrameStyle -> Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Distribution of 1D Velocities at 25 \[Degree]C\"", FontSize -> 34, 
       StripOnInput -> False], TraditionalForm], 
    PlotRange -> {{0, 2500}, {0, 0.003}}, PlotRangeClipping -> True, 
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
             ImageSize -> {24, 8}], "\"4 g/mol\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"20 g/mol\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"40 g/mol\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"132 g/mol\""}}, AutoDelete -> False, 
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
 CellChangeTimes->{{3.537379123504672*^9, 3.537379140908657*^9}, 
   3.537379400843529*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Distribution", " ", "of", " ", "speeds"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pspd", "[", 
         RowBox[{"phi", ",", "T", ",", "0.004"}], "]"}], ",", 
        "\"\<4 g/mol\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pspd", "[", 
         RowBox[{"phi", ",", "T", ",", "0.020"}], "]"}], ",", 
        "\"\<20 g/mol\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pspd", "[", 
         RowBox[{"phi", ",", "T", ",", "0.040"}], "]"}], ",", 
        "\"\<40 g/mol\>\""}], "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pspd", "[", 
         RowBox[{"phi", ",", "T", ",", "0.132"}], "]"}], ",", 
        "\"\<132 g/mol\>\""}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"phi", ",", "0", ",", "2500"}], "}"}], ",", " ", 
    RowBox[{"PlotRange", "->", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0.0044"}], "}"}]}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Distribution of Speeds at 25 \[Degree]C\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Speed / m s\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\\)]\\)\>\"", ",", 
       "\"\<Probability density / m\\!\\(\\*SuperscriptBox[\\(\\), \
\\(-1\\)]\\) s\>\""}], "}"}]}]}], "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Basic-SpeedDist.pdf\>\
\"", ",", 
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Basic-SpeedDist.png\>\
\""}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{3.537379118282331*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV1nk4VP8XB3AqW8muZClKhYTspPs5lpm5RcgWIjuRSPaQ7I2xzB0jkS0T
kUQLfUOLIlGikkKJiCyVSEqq3/39dZ/Xc/+45znP+5xzFTyDbXxWcHFxUbm5
uP7/rFA3Gn59bzV6XqjAtCmzNeoWcoRc+ickf7/U8miKCHbQsvK+G/0nUuh4
dFshRQPj7GMdX/JdAfce3hWozDXBZIJ6uCh0fhg4r89YTLbGWIQQkV0tBKdj
7Kzqup2wFOcKkc++YiAa+yUwLtcTMw5scxSLkoRgY6VIf3N/7E/cWKkeXQqE
uFo+PE0+jv2XvXLSpUAGTtL2NvJ8CsPCLmzelVi9EdYaq5e4dkdj5/pLm22H
5GH8jeqdF4bxWIRnnfu472Zo3u2ctis3EbObvrcq+usWOPkrSo23OwXTDOuu
XBO1FdqefNw0vo+OfUn5MqtBVwLz6a3mHslM7KnQX/ZDURXY5c0te7ichV3O
W2vgULADuPY/uOo6wcZ8qlQTYqrVwNrcpNbjWT6msKFYjE9aA6atPuDeoYUY
8125t/WQBryJVVn2MSjBgnzr+Ud9NYF2ew3sYpdh71TuOKvu0ILo4+sya5Qu
YhZfW6+Ef9WCBB9fjUtd5ZhKVK81f5QOWA6U/RPeW4WN0+fP7aTrg0NE7JkX
iXWYveXvqYj9BsCJf9G2nHUNaxVbuee+qCGMROmOeXKuY2XnxUZsCnbDHP2R
4sjYTcy1ZpdyVDUGBq1ETX7nbexpiEFMSzACAUc37jypJkzufKkvjzRA/omm
S0+DmrEMt8r/LIcAnN6UTw1p3cMCPt1yGfE1gY7frXtx5gOsrLOJh7fDBE4Z
Pvgs7/gQ679y76rKDlMobHhEiCu2YnhIO1fYV1M42WZYSXnchm1b6rvIG0WB
u4PVrr3GHdiHNT9mdtBxGB5Iq6uM7cHcDtZ/JeZx+PfEb5YQfI69LQubW3Td
C45PRv4MFz/H+gzmFx9q7oOPbZTTtZ0vsE6/2RUub80h9nz+EC96hV1/OCWV
oW4FFjNTIR4FA5i68GWZuXwrMKhB+mnWg5hDjbaw6gpreD6Wsl9I4C328ue8
KCvQGtYsP5ZHCe+wruwT6w8bHwCRfRxlUdow1nInePOPKRvIY4/7PM8YxU57
dW9RlreF6UeJdQNLoxgmoL7Vxd4W+L4eHhINGMOa7L5sf3DPFjI2tMgLWHzE
6qcDd2ax7aC87X2X5MYJrGpDgP42zAGqM1vpJ5emMCLc29KBcIJhnXuBER3f
sJNnC7tWPHSC8B3q5ZjQHOZ9q9ei9rsT+Kwf9k6zncN0f5mZ8zs6Q2mts0jB
+zlsIHYr3rjxEJxnRyi3/JnHNiePG2+84gL+8Tvt/h74gd1kHdEZf+QGA03r
9QOcfmNFN0pvsn66QevjjGLBq78x04CZ/E2S7qDoXzq6Y+UypspQ3PCU6g5q
p1TPDF9dxv4+Za/fetkdRjq8KzYK/sU41uESr497wBvG9bhPQVxo5qCu0O6/
nlAUmXEoM2gl0h5gs9nrvCBSc+ZxdslKFOcyL/1FzQvarijIPe1ZiYQ86rZf
cPOCzGBLzTmtVUgjQMWYr8ULeIznJeaWV6Gw2I1hL5O84XCKV1ldPi/6U8o7
cFTAF851LXzm/BFAQlN95YUS/lC9Yswprl4EVVIvJvKq+8M/uaKZ/NciyIQT
4nZ8rz/Ej7kwX/0SQREughvMTvlDtkFNTxUmioaeGWdMT/iD157F/NYOUVRz
48oJw6YAeGVodqDhoxiyiEtEbzwCIb45c3CTtiSii6j1i9cGw5h7URhzuzRS
tez0cp05ATlzQ7TdsBmhoTeVu00j4MGamMm8TCX0olLnUWJ6NFjeO5Zdtlcd
CW+TbvHIj4X1hS+Mgr5roqjP/XTzqXjIs+yIO1eui9puiJzzTUgAW4vVS2dl
DZFQ1qHXgzxJ8GRw+7hj2B50bC07zqE6GcQ0dXHxaEAKvkyxIu1USLI7qnyC
2wRNe50UmhxKA4WZkKdJaaZo4RQjwj+BDkO0WXbCoBl69GL8UmIaHQ5Jm1Dk
hs3QuW0m/ecz6fDKfp1Vw5gZMnz2c/ezfDocpwgcHf5shk7L+XJrXafDPYea
CgkuChJshozlD3QwG1ajLG+hIMVfCxeyzdJBz0xLpsWfguxC3bvq+Rjgc1vv
xswMBTXGHZSwFWLAnqXdT3d8oyD5M5aHZiUY0DpyMsFvgYKmC40mVTYzoEf2
anPvHwpKfCTFU2pEvv/u55wqREXXNjw3Sg9hgGK+rgtFnYqE7htfOTzIgBzT
BnHVICoK69Sf/z3CADcZ/bHlECoa6FU3zP/EgEt90tqd4VRUMSn3+OUCA6gx
PZbOcVS0R3xpFBfJgNJzc07WGVQU6HtdRouSAUo7R2VyqqioQ3ALg682A6IO
z1CDRqiIve0Vt3Z9Btye6VBlj1GRO6RFuTdlwJXWoW8NE1T0I3Ta53Z7Bnzz
bVg//5mKNg/egKPDGdCwnNdKWaKi2CqzH89EM6HoZa+hnRgNqVF9Pc6GZcKw
rANbDGjol5vUmwcnM+HRb/2klyY01Brdafn1dCZUp/WYEhQacq5RM8IzM4GV
36S/0pyG0iQW1y2VZ4KEg8Sn+/Y0NPwh7anr60zYxtKS5ATQUE58ld5Wwyx4
/u5TJReLhuasFh++gizojlcIzmTTkI08xTqVlgX2zX1B6/JoSLRl+MiEXRao
DdVtkCukoewVUgVVwVkglmi97k85DTFSUpd3lmfBxOXWaL7bNJTE8GrRFcmG
Clf3WrO3NPTh0LX9E+uyoS+43NRxiIZMVP/158llg947VcEjwzTE3VUw91Ml
G95ffmAQO0ZD8UIvtjRRsqHDp5gncoaGYghIRTHZsJf7ulPDbxoKzZMzx8ez
wVZYSdhlPY7wVbJV/TPZoJjg1PhFCkeyIdJ8R+ezoST1+p04aRx5lTNGqFxM
2MGw7WLK4Ugw/kyR/1omiNpMiDO24OiwZqJk7XYm3CgLd+tRw9HjIwmtiypM
aOrmKVbSwJFmyelQUGPCyLHdenG7cMQnGP/8uTYTok74nJTRxlHdx5jM78ZM
KKRc3KtqgKMV+eE8hi5MyBYuQyUmOArsDruZ6MYEqmG06R1THPXxhHk98WTC
tEBH+WszHFWfONHi4s+E7xYLqdw0HNlZBMfFRzBBcGXzQ2VzHN1NDFJ9HM0E
rVfpD1UscKR0+9igSBwT+rwNFJX24+jP1kCDsiQmdHcmCEhZ4aji35GFViYT
el/KHHtqgyMR3SMX17KZMFe3O67OFkcnA/1sHfKYsOHS91mmHY6s+n2uTRQx
gau5YhXNAUc/r3seW13NhBS35Ik0Jxzt83X5aNXGhH4VwXkXNxz5KRqouj8m
+9F+bf0y6eQPkqHHnzCBVeoqd86drPdwNxfxnAmrd+l1PfLA0a6DJrIv3pH1
KGh0/PXCkaXkJq8Pw0zY4oW4UrxxFPDyd9XcKBOeHTaX4ffB0UWrej3xKSbo
24//XeWLIylcydbuBxPe2uik9fvhSIeXp8D7FxPmeXZNUo/gyKZ1ZDhsmQkz
H5w1r5HOgPNBuSsIeLt5NCbWH0dVfyPry3kIONElFfeO9KNmu+V6fgLMNXb4
7Q7AEZeBUHqfEAHKBcWLn0nLLU71jIsS5H0YKjY5iiPD+vb1ixIEvLe5pcEm
HbYroXy9DAEBZX8k1QJxRHx1ndm+kQB1D+uACNJXawy19BUIOCDFX91EekL5
+33H7QScj4uZNzqGo1Wfevj8VQjYMLllOYq0fEWNZfROAm48Wj1/jfQe7/Rc
ugYBIVWVbyZIO2/2e5uvRcBunsga6SAcRQ6bbrmsS0Cy2mzIPtLsYvmARgMC
7jllb4sk/Ux6YHEAERD8UcOznfT0mwZs2oSA36vVpqZI8+flpPymEHCnieq9
JhhHW+2PP12zl4CylKUeJdIm4vvFZS0IGH/ZoWFK2u25srOqFQGXv+gkO5OO
zea9YGRDQNTS/SdBpPP3j05Y2BPwYvEz32nSDWvuq7k6EtD0AAyySL/sKAw/
doiAvWKYez7p2bTo5rjDBMhGHY27QHot1WFllgcB3O5WRAVplVVa+4q9yf4K
hxRWkqY9ECau+hGwstyx5BJp79Mzr+8GEKAilV3AIX0a69jYfYyAAv3irELS
RcvlPu+PE9BaIxLLIt3YmHjlaygB9B8hXimk+6Lc5v9FEFB4xJISTnpe18hQ
5CQBChpamz1JiyxIJcjHEaBhdXXJnPTOGwvtGqcJsCmy7NYkvS/khZBxEll/
O6d0HWk/9Vr7A6kElO/HghfJ/iZ/ZhR60AmQTK3d/er//U/V/XIjg4CbOvYt
V0jbyI8gXiYB2I21906Tvn2bQTjmEHAqIVfnAGl5W93Ry2cJSKFc3rqRdNrM
sPaffDKPbauZ/8/DlxRGqlURAYFTEeE1pJv/G1b+ziHgsGvkTTXSW2wYMdRL
BDyXIoSnyPylT+t0nbtM5su65dMF0o4bGcf3XCOg3SFWio/0QpLOrdS7BIje
Nkq6RObfRW6Yv7+FAIGkD2NU0q0N6c472ghY3THZ+YGcH9bk+z/dTwhIVzy4
XYS0mlW62YZ+An74Jeobk/OZ+0n77NG3ZH5vcfe2kvO7nPB+4s57Aja6hS6Z
ke68qc3wHCeAn0ifNiTn3Vf6/fPqeQI6FvdH/PHEUdcN+pa/Pwio4d6Y4ENa
e792uPUSAX1l9XKd5D5ZcZoutcDFgu2URmE6uW9KPmq5YUIs6Avr+PrOFUe8
8UN1TFEWVO+Pv6BCOkiKvmJUggWmIxIzoS44MjIfKk+TYQH7xSmrZWccvak7
M9OjxIIV86NHxg7iCO3TwraoskCGse23JOmK0XfZ4eoseO9ZttOM3I9h67S0
pHVZoF3JE3mW3J8ise+ivUxZID43Wy92AEd7aZp8P1xZYFBLbQrYiyPPI42z
wh4suHW5VjYKJ+eHbjKg7M0C6tGUgkRy39c9salxDWDBxasNX7IoOFpvHWrb
FkHWlykhkmKMo4+ON0vY2Sy4Xqc9O6GPo7/RRvSrLBbwPrCJadcj9+P51hOP
c1kQWbRT46Iujize9VKWz7NgpXSqtD15n254LEx7VbJAVuO9QK46jhICdPW1
WsjvrTmwLmsrjgoYdxX2t7KgINWhHBRxdPMKdY1fOwvaMqUCZzfj6NMXh6GC
LhbwH/K/SJMn70VoZPKKARYov0/q7yXvq1zsfz3P51iwTfGjwlFhMs+Zhv7H
FXMgdynsauYPGhL6U9B0cnsOmP0ro337TkOegb/XpqjkwP4Ty9Y28zS02rz5
er5GDpwn3t0SnKWhQ/zY8gOjHFg7rzzrOUlDfxKNsyXtc2D63M7B3EEaMo7C
6xtTcoAh/kxP9i4NnZ2o5Gs7kwNN8VGX1JtpaMpBwLmbkQNbLl0qh0YaYul0
/h0lciB86+kDhxpoaHTOHF9bnAOxby4lhl6loZRjVoNuDWR9LQ+UNIppqMPT
gZtnIgcSqtYyRmJo6EhN8uEDUznwAPvqHBVNQ7w/rzcVfc4B72MNxwUjyf+Z
TOEI3e85cKcRC1U9QUPNtx5P+XGz4fCs/S/zIzRUJ7i7t1OGDYuuLtqr7ch6
GzZdYlqzYaXJptcZyjTkvXrSQraRDVsNEmcXn1JR/dvvxhp32MB7g6m5qZOK
eGu59Mzus+HkHMvDrJ2KKm2lFAIfsaFWV45xpoWKZgppC00v2GAsxb3zZz0V
hatXFB2aZsNw28Xr4cVUlGrn9aVANhekOr355o5RUVXxu+wN8bnA/9muTJOP
iqJ59qbm252FzjvV/W9EKGhyqf261rY8GNCYsD+1ygytfFfZd2MyDx5RiymP
F01QFcF1teHOOQhKTxIZaTNGvzQbY0uS8qGW97h8aQmgSc+0hDJKAZRGdwWX
/cCQt88TAyWp84Dpvf4ZFGuE6HYhkzlvz8O/7uaWPdqGyGBdlkXitUL4GbE9
16NTD7FbBS85RBVBUNO/NblFOiibu0SPsrsYeuh1TtMsLSQpWhnTIFQCX41m
f7VH70KUteK31vaWwHudkS5lqjriClp6MW9XCrPuHxPvMnegq7LhHz/fKYWq
UWdqkK4SutZSOj+w6QK0hDytM3bcipa60w4JpF+AtXa7IpeTNqNzvZvuqXy+
AL0jqCpdQR6llrbscbIsA+pg/dcmQVnU+Grjuo5bZWCifP/QzM/1yJR759QO
aQ5IuFmX6xVIIN9Mf8NRGQ4k+xsoS2RIoPQNFekFchxQFlwO/RkngXp2bdoh
oMCBNqtU2zceEsjFUzRwfDsHDCoHZ78rS6CwhwufS3U4UPHXxq6kSRxVpNz9
JnmAA9LtPYoVY2KoQ/S3cZcNByxX6HpEvBZDM0V6rGQ7DoiZHhS27BRDmg11
mvMHOcDJE24QrxNDd8fLQnsOc0ArXvTDYowYek1LW0gP5ACvyFYnBUkxtPTy
IcUkiAOqFxyD/PjF0EZ3rrO/gjngX7qj8+ZvUeQdFa17JJQD9jzv9/l8EEWz
lUcjKSc5sLfklqJcnSgS16lsX47hQH654pYijijSbRlbfzOOA9vV6TaKeaIo
tt/1v80JHAgsdjfAT4miEp8C/oFEDqyb9p0eCxFFD771ORLJHIhkMB6e8RFF
H+PEq/BUDmQ0rL+n5SSK+Fdb//qXxoHFULvBjxai6H8BYkHX
         "]]}, "\"4 g/mol\"",
        TooltipStyle -> "TextStyling"], 
      Annotation[#, "4 g/mol", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
L1fRinHD/geGpFyo
         "]]}, "\"20 g/mol\"", TooltipStyle -> 
       "TextStyling"], Annotation[#, "20 g/mol", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
/MxTqlxzojMkpNROjx0l4fLJeiEfU5yhz6P1nYgICXf9cnPnZL4zcD4RMpIU
J+HPD3i6B1Y4g+1+Wgmu0yRc4UHuHeUOZzgbPNQRJ0vC3V8+H03q280vqljE
L0/Ca5bbTX9POIP6dPsMWZGEK9osaxdSu8BbzQPtvNhufO6+d3uZXYDGxt1d
Ed+N7+dWteBxgRmPvEo5VRL+h0OqtlbMBS50rwWzqZNwJT0NWQ5FFwi6cX7z
mwYJ94w0LnE86wIcVF3cHudIeO1r2xMd+i6Q8wNf2zlPwjd3/LJELF3g+khG
0u0LJFxZOYkz6J4LcHKZ0j3X2uU7F8UNerpA6fr1K+MXd/ml9fQqYS5w4Et/
7PqlXf7k14DkJBco4Qtunb1MwlWEfv39nesCw/MW/9q0Sbi32abz5TKX3Xn0
a/vpkPC6FKb5wnoXeL74oZVXl4RvfRW8RfPBBQhbJNucXUw4qDBk8d0FakaV
jWn1dvnnLl57Ne4Cz9w0Uy7v4no/i06OZRdwYB1X8tjF/2qdLt6ncoXPk+90
w3YxWg1t62B0hZJrDHOeu9hXkoKJcruCCEGQX28XN9wuex4k4gpvJIb/Hvg/
P69NcuiMK0CvO7lwtz7+83uhiroryF50XRPdxXf0tF8b67oCogu4TN7Vn9jW
Ouxi5gqK7RczBnf7a1BQ+ke+4wq0elZLLLt48knp0TI3V3DzzrspuusHK+9x
hY4gV1gtPrtfeNcvLD7NYDreFQgsHXP7dv20oTnksC97Nz8Ns9jnXf/JbkFR
x0tcgcnozFcvzV2/pjcKVV+6wlpu5Trj7rx+mdm/Nn/jCs/ydCuCz+76rWHy
L3XIFRLZghWF1Ui49YvPR5/PuYKo/qndtx4JjxM7q9C16QqY32Fmc0TCx5il
HBjZ3WBHn276lDIJZwrKjxITdAOrdV/mBYXd/bd+tOi8pBsUC7B4J58h4dED
tCP+F9wgjjfIL1Vqd//pev3LMnKDvPgjF5ZPkfCR1sWjdSQ30DWTei63u//l
n/wwWPNxg7V5vaG7J0i4JY+eA1ukGzSxqn62EiThEXFvoqRS3aCvx/0N4iPh
g67lr+9UuMHDYUe5Ui4SHqYeqjD4yw24zMtnbh4g4RXPtwy2lt1g7rzMn2Q6
Et4vet/hyB53sO6fH3pGTcKlmc2KDLjdQYBUX522e/77+mW43+m4w/tyST/d
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

         "]]}, "\"40 g/mol\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "40 g/mol", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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

         "]]}, "\"132 g/mol\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "132 g/mol", "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {0, 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox[
      "\"Speed / m s\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\\)]\\)\"", 
       TraditionalForm], 
      FormBox[
      "\"Probability density / m\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\\)]\\) \
s\"", TraditionalForm]}, FrameStyle -> Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Distribution of Speeds at 25 \[Degree]C\"", FontSize -> 34, 
       StripOnInput -> False], TraditionalForm], 
    PlotRange -> {{0, 2500}, {0, 0.0044}}, PlotRangeClipping -> True, 
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
             ImageSize -> {24, 8}], "\"4 g/mol\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"20 g/mol\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"40 g/mol\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"132 g/mol\""}}, AutoDelete -> False, 
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
 CellChangeTimes->{{3.537379125167897*^9, 3.537379142205889*^9}, 
   3.537379402462513*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Thermal", " ", "velocity", " ", "distributions"}], " ", "*)"}], 
  "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"See", " ", 
     RowBox[{"http", ":"}]}], "//", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"en", ".", "wikipedia", ".", "org"}], "/", "wiki"}], "/", 
      "Maxwell"}], "-", 
     RowBox[{"Boltzmann_distribution", "."}]}]}], " ", "*)"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Logistic", " ", "function"}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"PL", "[", "x_", "]"}], ":=", 
    RowBox[{"1", "/", 
     RowBox[{"(", 
      RowBox[{"1", "+", 
       RowBox[{"Exp", "[", 
        RowBox[{
         RowBox[{"-", "x"}], "/", "a"}], "]"}]}], ")"}]}]}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"Logistic", " ", "distribution", " ", 
     RowBox[{"(", "raw", ")"}]}], " ", "*)"}], "\n", 
   RowBox[{"Simplify", "[", 
    RowBox[{
     RowBox[{"PL", "'"}], "[", "x", "]"}], "]"}], "\n", 
   RowBox[{
    RowBox[{"pL", "[", 
     RowBox[{"x_", ",", "a_"}], "]"}], ":=", 
    RowBox[{
     RowBox[{
      RowBox[{"Exp", "[", 
       RowBox[{"x", "/", "a"}], "]"}], "/", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "+", 
         RowBox[{"Exp", "[", 
          RowBox[{"x", "/", "a"}], "]"}]}], ")"}], "^", "2"}]}], "/", "a"}]}],
    "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
    "Standard", " ", "deviation", " ", "of", " ", "logistic", " ", 
     "distribution"}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{"mu", "[", 
     RowBox[{"x_", ",", "a_"}], "]"}], ":=", 
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"x", "*", 
       RowBox[{"pL", "[", 
        RowBox[{"x", ",", "a"}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"x", ",", 
        RowBox[{"-", "Infinity"}], ",", "Infinity"}], "}"}]}], "]"}]}], "\n", 
   
   RowBox[{"Sqrt", "[", 
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"x", "-", 
          RowBox[{"mu", "[", 
           RowBox[{"x", ",", "a"}], "]"}]}], ")"}], "^", "2"}], "*", 
       RowBox[{"pL", "[", 
        RowBox[{"x", ",", "a"}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"x", ",", 
        RowBox[{"-", "Infinity"}], ",", "Infinity"}], "}"}]}], "]"}], 
    "]"}]}]}]], "Code"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   FractionBox[
    SuperscriptBox["\[ExponentialE]", 
     FractionBox["x", "a1"]], 
    RowBox[{"a1", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "+", 
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a1"]]}], ")"}], "2"]}]], ",", 
   FractionBox[
    SuperscriptBox["\[ExponentialE]", 
     FractionBox["x", "a2"]], 
    RowBox[{"a2", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "+", 
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a2"]]}], ")"}], "2"]}]], ",", 
   FractionBox[
    SuperscriptBox["\[ExponentialE]", 
     FractionBox["x", "a3"]], 
    RowBox[{"a3", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "+", 
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a3"]]}], ")"}], "2"]}]], ",", 
   FractionBox[
    SuperscriptBox["\[ExponentialE]", 
     FractionBox["x", "a4"]], 
    RowBox[{"a4", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "+", 
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a4"]]}], ")"}], "2"]}]], ",", 
   FractionBox[
    SuperscriptBox["\[ExponentialE]", 
     FractionBox["x", "a5"]], 
    RowBox[{"a5", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "+", 
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a5"]]}], ")"}], "2"]}]], ",", 
   FractionBox[
    SuperscriptBox["\[ExponentialE]", 
     FractionBox["x", "a6"]], 
    RowBox[{"a6", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "+", 
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a6"]]}], ")"}], "2"]}]], ",", 
   FractionBox[
    SuperscriptBox["\[ExponentialE]", 
     FractionBox["x", "a7"]], 
    RowBox[{"a7", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "+", 
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a7"]]}], ")"}], "2"]}]]}], "}"}]], "Output",
 CellChangeTimes->{{3.537379126681691*^9, 3.537379143588475*^9}, 
   3.537379403823532*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"SetDelayed", "::", "write"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Tag \[NoBreak]\\!\\(Integer\\)\[NoBreak] in \
\[NoBreak]\\!\\(0[\\(\\(x_, a_\\)\\)]\\)\[NoBreak] is Protected. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/message/General/write\\\", \
ButtonNote -> \\\"SetDelayed::write\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537379126734955*^9, 3.5373791435922*^9}, 
   3.53737940382964*^9}],

Cell[BoxData["$Failed"], "Output",
 CellChangeTimes->{{3.537379126681691*^9, 3.537379143588475*^9}, 
   3.53737940383258*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SqrtBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      FractionBox[
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a1"]], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "-", 
           RowBox[{"0", "[", 
            RowBox[{"x", ",", 
             RowBox[{"{", 
              RowBox[{
              "a1", ",", "a2", ",", "a3", ",", "a4", ",", "a5", ",", "a6", 
               ",", "a7"}], "}"}]}], "]"}]}], ")"}], "2"]}], 
       RowBox[{"a1", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            FractionBox["x", "a1"]]}], ")"}], "2"]}]], 
      RowBox[{"\[DifferentialD]", "x"}]}]}]], ",", 
   SqrtBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      FractionBox[
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a2"]], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "-", 
           RowBox[{"0", "[", 
            RowBox[{"x", ",", 
             RowBox[{"{", 
              RowBox[{
              "a1", ",", "a2", ",", "a3", ",", "a4", ",", "a5", ",", "a6", 
               ",", "a7"}], "}"}]}], "]"}]}], ")"}], "2"]}], 
       RowBox[{"a2", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            FractionBox["x", "a2"]]}], ")"}], "2"]}]], 
      RowBox[{"\[DifferentialD]", "x"}]}]}]], ",", 
   SqrtBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      FractionBox[
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a3"]], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "-", 
           RowBox[{"0", "[", 
            RowBox[{"x", ",", 
             RowBox[{"{", 
              RowBox[{
              "a1", ",", "a2", ",", "a3", ",", "a4", ",", "a5", ",", "a6", 
               ",", "a7"}], "}"}]}], "]"}]}], ")"}], "2"]}], 
       RowBox[{"a3", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            FractionBox["x", "a3"]]}], ")"}], "2"]}]], 
      RowBox[{"\[DifferentialD]", "x"}]}]}]], ",", 
   SqrtBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      FractionBox[
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a4"]], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "-", 
           RowBox[{"0", "[", 
            RowBox[{"x", ",", 
             RowBox[{"{", 
              RowBox[{
              "a1", ",", "a2", ",", "a3", ",", "a4", ",", "a5", ",", "a6", 
               ",", "a7"}], "}"}]}], "]"}]}], ")"}], "2"]}], 
       RowBox[{"a4", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            FractionBox["x", "a4"]]}], ")"}], "2"]}]], 
      RowBox[{"\[DifferentialD]", "x"}]}]}]], ",", 
   SqrtBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      FractionBox[
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a5"]], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "-", 
           RowBox[{"0", "[", 
            RowBox[{"x", ",", 
             RowBox[{"{", 
              RowBox[{
              "a1", ",", "a2", ",", "a3", ",", "a4", ",", "a5", ",", "a6", 
               ",", "a7"}], "}"}]}], "]"}]}], ")"}], "2"]}], 
       RowBox[{"a5", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            FractionBox["x", "a5"]]}], ")"}], "2"]}]], 
      RowBox[{"\[DifferentialD]", "x"}]}]}]], ",", 
   SqrtBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      FractionBox[
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a6"]], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "-", 
           RowBox[{"0", "[", 
            RowBox[{"x", ",", 
             RowBox[{"{", 
              RowBox[{
              "a1", ",", "a2", ",", "a3", ",", "a4", ",", "a5", ",", "a6", 
               ",", "a7"}], "}"}]}], "]"}]}], ")"}], "2"]}], 
       RowBox[{"a6", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            FractionBox["x", "a6"]]}], ")"}], "2"]}]], 
      RowBox[{"\[DifferentialD]", "x"}]}]}]], ",", 
   SqrtBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      FractionBox[
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         FractionBox["x", "a7"]], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "-", 
           RowBox[{"0", "[", 
            RowBox[{"x", ",", 
             RowBox[{"{", 
              RowBox[{
              "a1", ",", "a2", ",", "a3", ",", "a4", ",", "a5", ",", "a6", 
               ",", "a7"}], "}"}]}], "]"}]}], ")"}], "2"]}], 
       RowBox[{"a7", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            FractionBox["x", "a7"]]}], ")"}], "2"]}]], 
      RowBox[{"\[DifferentialD]", "x"}]}]}]]}], "}"}]], "Output",
 CellChangeTimes->{{3.537379126681691*^9, 3.537379143588475*^9}, 
   3.537379408854793*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "Plot", " ", "the", " ", "logistic", " ", "distribution", " ", "and", " ", 
   "the", " ", "Gaussian", " ", "distribution"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Logistic", " ", "distribution"}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"pL", "[", 
     RowBox[{"x_", ",", "sigma_", ",", "mu_"}], "]"}], ":=", 
    RowBox[{
     RowBox[{
      RowBox[{"Sech", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"x", "-", "mu"}], ")"}], "*", 
        RowBox[{
         RowBox[{"Pi", "/", 
          RowBox[{"(", 
           RowBox[{"sigma", "*", 
            RowBox[{"Sqrt", "[", "3", "]"}]}], ")"}]}], "/", "2"}]}], "]"}], 
      "^", "2"}], "*", 
     RowBox[{"Pi", "/", 
      RowBox[{"(", 
       RowBox[{"4", 
        RowBox[{"Sqrt", "[", "3", "]"}], "sigma"}], ")"}]}]}]}], "\n", 
   RowBox[{"(*", " ", "Plot", " ", "*)"}], "\n", 
   RowBox[{"sigma", ":=", "1"}], "\n", 
   RowBox[{"mu", ":=", "0"}], "\n", 
   RowBox[{"LineLegendFromTooltips", "[", 
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Tooltip", "[", 
         RowBox[{
          RowBox[{"pL", "[", 
           RowBox[{"x", ",", "sigma", ",", "mu"}], "]"}], ",", 
          "\"\<Logistic\>\""}], "]"}], ",", 
        RowBox[{"Tooltip", "[", 
         RowBox[{
          RowBox[{"pG", "[", 
           RowBox[{"x", ",", "sigma", ",", "mu"}], "]"}], ",", 
          "\"\<Gaussian\>\""}], "]"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x", ",", 
        RowBox[{
         RowBox[{"-", "5"}], "*", "sigma"}], ",", 
        RowBox[{"5", "*", "sigma"}]}], "}"}], ",", "\n", 
      RowBox[{"PlotLabel", "->", 
       RowBox[{"Style", "[", 
        RowBox[{
         RowBox[{"StringForm", "[", 
          RowBox[{
          "\"\<Logistic and Gaussian Distributions (\[Sigma]=``, \
\[Mu]=``)\>\"", ",", "sigma", ",", "mu"}], "]"}], ",", 
         RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
      RowBox[{"FrameLabel", "->", 
       RowBox[{"{", 
        RowBox[{"\"\<x / 1\>\"", ",", "\"\<Probability density / 1\>\""}], 
        "}"}]}]}], "]"}], "]"}], "\n", 
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Basic-\
LogisticGaussian.pdf\>\"", ",", "\n", 
        "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Basic-\
LogisticGaussian.png\>\""}], "}"}], ",", "%"}], "]"}], ";"}]}]}]], "Code",
 CellChangeTimes->{3.5373791183373*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
cG9t
         "]]}, "\"Logistic\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "Logistic", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
M/5hVkT833tn9P/vnf8H6EFo2w==
         "]]}, "\"Gaussian\"", TooltipStyle -> 
       "TextStyling"], Annotation[#, "Gaussian", "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {0, 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"x / 1\"", TraditionalForm], 
      FormBox["\"Probability density / 1\"", TraditionalForm]}, FrameStyle -> 
    Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
       InterpretationBox[
       "\"Logistic and Gaussian Distributions (\[Sigma]=\\!\\(TraditionalForm\
\\`1\\), \[Mu]=\\!\\(TraditionalForm\\`0\\))\"", 
        StringForm[
        "Logistic and Gaussian Distributions (\[Sigma]=``, \[Mu]=``)", 1, 0], 
        Editable -> False], FontSize -> 34, StripOnInput -> False], 
      TraditionalForm], PlotRange -> {{-5, 5}, {0., 0.4534496201400736}}, 
    PlotRangeClipping -> True, PlotRangePadding -> {
      Scaled[0.02], 
      Scaled[0.02]}],StyleBox[
    TagBox[
     GridBox[{{
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Logistic\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Gaussian\""}}, AutoDelete -> False, 
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
 CellChangeTimes->{{3.537379134408378*^9, 3.537379149142139*^9}, 
   3.537379409123698*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "Velocity", " ", "and", " ", "speed", " ", "distributions", " ", "using", 
   " ", "the", " ", "logistic", " ", "distribution", " ", "instead", " ", 
   "of", " ", "the", " ", "Gaussian", " ", "distribution"}], " ", 
  "*)"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "\"\<Maxwell\>\"", " ", "distribution", " ", "using", " ", "logistic", " ",
     "distribution", " ", "rather", " ", "than", " ", "Gaussian", " ", 
    "distribution"}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"pML", "[", 
     RowBox[{"x_", ",", "a_"}], "]"}], ":=", 
    RowBox[{
     RowBox[{"pL", "[", 
      RowBox[{"x", ",", "a", ",", "0"}], "]"}], "2", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"x", "/", "a"}], ")"}], "^", "2"}]}]}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
    "Probability", " ", "density", " ", "of", " ", "1", "D", " ", "velocity", 
     " ", "using", " ", "logistic", " ", "function"}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{"pveliL", "[", 
     RowBox[{"phi_", ",", "T_", ",", "m_"}], "]"}], ":=", 
    RowBox[{"pL", "[", 
     RowBox[{"phi", ",", 
      RowBox[{"Sqrt", "[", 
       RowBox[{"T", "/", "m"}], "]"}], ",", "0"}], "]"}]}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"Probability", " ", "density", " ", "of", " ", "speed"}], " ", 
    "*)"}], "\n", 
   RowBox[{
    RowBox[{"pspdL", "[", 
     RowBox[{"phi_", ",", "T_", ",", "m_"}], "]"}], ":=", 
    RowBox[{"pML", "[", 
     RowBox[{"phi", ",", 
      RowBox[{"Sqrt", "[", 
       RowBox[{"T", "/", "m"}], "]"}]}], "]"}]}]}]}]], "Code"],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "1", "D", " ", "velocities", " ", "with", " ", "the", " ", "logistic", " ", 
   "distribution", " ", 
   RowBox[{"vs", ".", " ", "the"}], " ", "Gaussian", " ", "distribution"}], 
  " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pveli", "[", 
         RowBox[{"phi", ",", "T", ",", "0.004"}], "]"}], ",", 
        "\"\<4 g/mol (Gaussian)\>\""}], "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pveli", "[", 
         RowBox[{"phi", ",", "T", ",", "0.040"}], "]"}], ",", 
        "\"\<40 g/mol (Gaussian)\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pveli", "[", 
         RowBox[{"phi", ",", "T", ",", "0.132"}], "]"}], ",", 
        "\"\<132 g/mol (Gaussian)\>\""}], "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pveliL", "[", 
         RowBox[{"phi", ",", "T", ",", "0.004"}], "]"}], ",", 
        "\"\<4 g/mol (Logistic)\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pveliL", "[", 
         RowBox[{"phi", ",", "T", ",", "0.040"}], "]"}], ",", 
        "\"\<40 g/mol (Logistic)\>\""}], "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pveliL", "[", 
         RowBox[{"phi", ",", "T", ",", "0.132"}], "]"}], ",", 
        "\"\<132 g/mol (Logistic)\>\""}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"phi", ",", "0", ",", "2500"}], "}"}], ",", 
    RowBox[{"PlotRange", "->", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0.0034"}], "}"}]}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Distribution of 1D Velocities at 25 \[Degree]C\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Velocity / m s\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\\)]\\)\>\"", 
       ",", "\"\<Probability density / m\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\
\\)]\\) s\>\""}], "}"}]}]}], "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Basic-VelDistCompare.\
pdf\>\"", ",", 
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Basic-VelDistCompare.\
png\>\""}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{3.53737911814552*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
8A==
         "]]}, "\"4 g/mol (Gaussian)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "4 g/mol (Gaussian)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
C14MWF8lU5I3QxIcOx473Bq8E1vyP+v7iSMJLhydmb1fuwOjt7625MKTBB1k
h6e+43QY+zUrS36BJDjkJGLqxUeHSR5J0rKVSoLIo1+aa9Em4ezO8ob9ckng
YX1Etvv7X8LFyTb5mnNJoH2I+78bYesEs/J/vHsvJQGLHn1A5YFVgqfPqR1E
vSSolCedwb4tEeKvmI9nmyXBD8rrp586Fwglh+LaVuySgNePc6nl7x9C2+ib
0oueSUCK2LE6pjVHmCheTYgLSQK+3t2zCaQZws4nEt4/KUmgyXJSfOTjFIFf
/aaFXEYS2M+qPz6rOUE4dyBS07c4CURu3oipYhgj8O9QIP2uTQK6lsYC0v6f
BIbp/q83W5Ng0mOJ66b2MGGqO+BIa3cSyPGcO+BQPEhobzhhfmYkCf76UPdM
2w0QEuMfz3JsbK/rjB1+frGXYGHb5ja9Pxnw0z0fWte7CLKqRxhbTiTD8cJY
zkP3OgibPLbRaReTgcqQ/eRh3wfC29kaPk/TZBj7XfrRZbyFQG5i+c/ANRmM
guoiM1tfEzp1T2lw5iQDjXfi/cPL1QTOEf3fbb3J4CERfOTP6xICkxQ1p/d7
MnTGRZa66JUQ1p36zEd/JMPdo9xRQePFhGEm056N0WTwvSnyj527mFAsYdkg
OZ8M38/4unrwFBKuPnSPDdmTAiuCGdy0uhxC1I6nZy4opUCwVKO97dM0wkfR
wg0SSoHDollOEVJpBBb1uoZB5RTYTFk9E1mTSggm/dDwVEuBzMbkvM53Twne
RwVvleqnQLeJ5Z+rz5MIDhfSgoUcUmBG392NUzOeoBOS3ruZkQIDP/pHzldE
Erg5sj0q2J7CL64pKSkXd8IFVq4XrF1PYdvurwhdfQKd3frnBb1UcE2+9c+i
UYpQcNh5dKY2FZqxJeLisZ2E4obUhT6BNBANz69xy/imtP4p6Mbu0DTo5KKX
kwsqUqJ2CdRJzKRBflRTfEpAgFJgagNmpPUMrBjH+TXnbyhVfeE/8O7FM+DZ
46qZ9faEkuqOE1OSvOmwGmafu+qwQ8ki4r7iCF86lDhNK137TqcUeigrlHYk
Hbwmr/FGa9IptZ8SkNwtlA4WQpQugsuW4s3bHDZjx9PhQ5endA51XdHp9dJM
6ul0sO5OcDJQXVTMCnj1h/taOhh4bT284Dqu+I7jr3KbTjpkX6AJMxeMKU4n
nyH566WDH1k8MHBqVFG2okh24Xo67OK84Pfd5afiq7Fnju0m6cDimdx7+OuQ
4tdLQUuhNunAGh9C2zz0TXG98/UFFbt0eMsrF3BCpk+R/xYdZc0+Hd65nJQn
aPYq3nF1U7B0TAf8XnfmdNJXxbls60cX3NMhPmVSoz2mS5HrdHbLhkc6WI6f
9Tr8o1NRoeHnwbLH6fD1uraqlWynomevcaWwTzpMH532x6c6FJ/epe3q802H
MHnbgrtaHYqNf7oNY/zT4SbnjszWF+2Ko4+5ctQCt88fTcxRPtauuGvP1bV/
QekweHT3LJL7pPg/yync/w==
         "]]}, "\"40 g/mol (Gaussian)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "40 g/mol (Gaussian)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
         "]]}, 
       "\"132 g/mol (Gaussian)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "132 g/mol (Gaussian)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
pkLmKxgCTFKa8fVHEgHt9xtaw+gC7D9StTM/
         "]]}, "\"4 g/mol (Logistic)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "4 g/mol (Logistic)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
wA==
         "]]}, "\"40 g/mol (Logistic)\"", TooltipStyle -> "TextStyling"],
       Annotation[#, "40 g/mol (Logistic)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
zbilEqgPG+z+ja0A9ZFvyZZ4KuF/sV3HKg==
         "]]}, 
       "\"132 g/mol (Logistic)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "132 g/mol (Logistic)", "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {0, 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox[
      "\"Velocity / m s\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\\)]\\)\"", 
       TraditionalForm], 
      FormBox[
      "\"Probability density / m\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\\)]\\) \
s\"", TraditionalForm]}, FrameStyle -> Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Distribution of 1D Velocities at 25 \[Degree]C\"", FontSize -> 34, 
       StripOnInput -> False], TraditionalForm], 
    PlotRange -> {{0, 2500}, {0, 0.0034}}, PlotRangeClipping -> True, 
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
             ImageSize -> {24, 8}], "\"4 g/mol (Gaussian)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"40 g/mol (Gaussian)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"132 g/mol (Gaussian)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"4 g/mol (Logistic)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"40 g/mol (Logistic)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"132 g/mol (Logistic)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
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
 CellChangeTimes->{{3.537379136086692*^9, 3.537379150683294*^9}, 
   3.537379410706077*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "Speeds", " ", "with", " ", "the", " ", "logistic", " ", "distribution", 
   " ", 
   RowBox[{"vs", ".", " ", "the"}], " ", "Gaussian", " ", "distribution"}], 
  " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pspd", "[", 
         RowBox[{"phi", ",", "T", ",", "0.004"}], "]"}], ",", 
        "\"\<4 g/mol (Gaussian)\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pspd", "[", 
         RowBox[{"phi", ",", "T", ",", "0.040"}], "]"}], ",", 
        "\"\<40 g/mol (Gaussian)\>\""}], "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pspd", "[", 
         RowBox[{"phi", ",", "T", ",", "0.132"}], "]"}], ",", 
        "\"\<132 g/mol (Gaussian)\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pspdL", "[", 
         RowBox[{"phi", ",", "T", ",", "0.004"}], "]"}], ",", 
        "\"\<4 g/mol (Logistic)\>\""}], "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pspdL", "[", 
         RowBox[{"phi", ",", "T", ",", "0.040"}], "]"}], ",", 
        "\"\<40 g/mol (Logistic)\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"pspdL", "[", 
         RowBox[{"phi", ",", "T", ",", "0.132"}], "]"}], ",", 
        "\"\<132 g/mol (Logistic)\>\""}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"phi", ",", "0", ",", "2500"}], "}"}], ",", " ", 
    RowBox[{"PlotRange", "->", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0.0044"}], "}"}]}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Distribution of Speeds at 25 \[Degree]C\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Speed / m s\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\\)]\\)\>\"", ",", 
       "\"\<Probability density / m\\!\\(\\*SuperscriptBox[\\(\\), \
\\(-1\\)]\\) s\>\""}], "}"}]}]}], "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Export", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Basic-\
SpeedDistCompare.pdf\>\"", ",", 
       "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Basic-\
SpeedDistCompare.png\>\""}], "}"}], ",", "%"}], "]"}], ";"}], "\n", "\n", 
  "\n"}], "\n"}], "Code",
 CellChangeTimes->{3.537379118216989*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV1nk4VP8XB3AqW8muZClKhYTspPs5lpm5RcgWIjuRSPaQ7I2xzB0jkS0T
kUQLfUOLIlGikkKJiCyVSEqq3/39dZ/Xc/+45znP+5xzFTyDbXxWcHFxUbm5
uP7/rFA3Gn59bzV6XqjAtCmzNeoWcoRc+ickf7/U8miKCHbQsvK+G/0nUuh4
dFshRQPj7GMdX/JdAfce3hWozDXBZIJ6uCh0fhg4r89YTLbGWIQQkV0tBKdj
7Kzqup2wFOcKkc++YiAa+yUwLtcTMw5scxSLkoRgY6VIf3N/7E/cWKkeXQqE
uFo+PE0+jv2XvXLSpUAGTtL2NvJ8CsPCLmzelVi9EdYaq5e4dkdj5/pLm22H
5GH8jeqdF4bxWIRnnfu472Zo3u2ctis3EbObvrcq+usWOPkrSo23OwXTDOuu
XBO1FdqefNw0vo+OfUn5MqtBVwLz6a3mHslM7KnQX/ZDURXY5c0te7ichV3O
W2vgULADuPY/uOo6wcZ8qlQTYqrVwNrcpNbjWT6msKFYjE9aA6atPuDeoYUY
8125t/WQBryJVVn2MSjBgnzr+Ud9NYF2ew3sYpdh71TuOKvu0ILo4+sya5Qu
YhZfW6+Ef9WCBB9fjUtd5ZhKVK81f5QOWA6U/RPeW4WN0+fP7aTrg0NE7JkX
iXWYveXvqYj9BsCJf9G2nHUNaxVbuee+qCGMROmOeXKuY2XnxUZsCnbDHP2R
4sjYTcy1ZpdyVDUGBq1ETX7nbexpiEFMSzACAUc37jypJkzufKkvjzRA/omm
S0+DmrEMt8r/LIcAnN6UTw1p3cMCPt1yGfE1gY7frXtx5gOsrLOJh7fDBE4Z
Pvgs7/gQ679y76rKDlMobHhEiCu2YnhIO1fYV1M42WZYSXnchm1b6rvIG0WB
u4PVrr3GHdiHNT9mdtBxGB5Iq6uM7cHcDtZ/JeZx+PfEb5YQfI69LQubW3Td
C45PRv4MFz/H+gzmFx9q7oOPbZTTtZ0vsE6/2RUub80h9nz+EC96hV1/OCWV
oW4FFjNTIR4FA5i68GWZuXwrMKhB+mnWg5hDjbaw6gpreD6Wsl9I4C328ue8
KCvQGtYsP5ZHCe+wruwT6w8bHwCRfRxlUdow1nInePOPKRvIY4/7PM8YxU57
dW9RlreF6UeJdQNLoxgmoL7Vxd4W+L4eHhINGMOa7L5sf3DPFjI2tMgLWHzE
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
         "]]}, 
       "\"4 g/mol (Gaussian)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "4 g/mol (Gaussian)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
/MxTqlxzojMkpNROjx0l4fLJeiEfU5yhz6P1nYgICXf9cnPnZL4zcD4RMpIU
J+HPD3i6B1Y4g+1+Wgmu0yRc4UHuHeUOZzgbPNQRJ0vC3V8+H03q280vqljE
L0/Ca5bbTX9POIP6dPsMWZGEK9osaxdSu8BbzQPtvNhufO6+d3uZXYDGxt1d
Ed+N7+dWteBxgRmPvEo5VRL+h0OqtlbMBS50rwWzqZNwJT0NWQ5FFwi6cX7z
mwYJ94w0LnE86wIcVF3cHudIeO1r2xMd+i6Q8wNf2zlPwjd3/LJELF3g+khG
0u0LJFxZOYkz6J4LcHKZ0j3X2uU7F8UNerpA6fr1K+MXd/ml9fQqYS5w4Et/
7PqlXf7k14DkJBco4Qtunb1MwlWEfv39nesCw/MW/9q0Sbi32abz5TKX3Xn0
a/vpkPC6FKb5wnoXeL74oZVXl4RvfRW8RfPBBQhbJNucXUw4qDBk8d0FakaV
jWn1dvnnLl57Ne4Cz9w0Uy7v4no/i06OZRdwYB1X8tjF/2qdLt6ncoXPk+90
w3YxWg1t62B0hZJrDHOeu9hXkoKJcruCCEGQX28XN9wuex4k4gpvJIb/Hvg/
P69NcuiMK0CvO7lwtz7+83uhiroryF50XRPdxXf0tF8b67oCogu4TN7Vn9jW
Ouxi5gqK7RczBnf7a1BQ+ke+4wq0elZLLLt48knp0TI3V3DzzrspuusHK+9x
hY4gV1gtPrtfeNcvLD7NYDreFQgsHXP7dv20oTnksC97Nz8Ns9jnXf/JbkFR
x0tcgcnozFcvzV2/pjcKVV+6wlpu5Trj7rx+mdm/Nn/jCs/ydCuCz+76rWHy
L3XIFRLZghWF1Ui49YvPR5/PuYKo/qndtx4JjxM7q9C16QqY32Fmc0TCx5il
HBjZ3WBHn276lDIJZwrKjxITdAOrdV/mBYXd/bd+tOi8pBsUC7B4J58h4dED
tCP+F9wgjjfIL1Vqd//pev3LMnKDvPgjF5ZPkfCR1sWjdSQ30DWTei63u//l
n/wwWPNxg7V5vaG7J0i4JY+eA1ukGzSxqn62EiThEXFvoqRS3aCvx/0N4iPh
g67lr+9UuMHDYUe5Ui4SHqYeqjD4yw24zMtnbh4g4RXPtwy2lt1g7rzMn2Q6
Et4vet/hyB53sO6fH3pGTcKlmc2KDLjdQYBUX522e/77+mW43+m4w/tyST/d
KSJOo1uoMG7qDmHipn6tY0RcspXHkPqOO6AhauAbIuJBRfujCUHuUEKf7BTf
vXufuf78V1bjDpoFzouk3fvKeMqA+9Nrd6h0i5LkryfiAabvFWY63cEmTozv
zQsi3q1W5XBizh1oRc9GfS4h4n6HIkbSBDwgiNOJqT+JiHcWnnkTEOEBU93S
H9ZJRPytsoBaQ7IH7OfiUvhiRsTrPh5s2Mj1gJ2l2o3kq0S8YHG02uGVB4zg
pYsLWkTcU5Gcbz7rAXIffYs6pYi4wLv5IGVtT2CpaHzltGGFO0w8Vl9i8YK9
+szJs75W+E2PhMZTvF4gG5aV/cbVCjdheKByW8wLPpSKJ5PtrHANSSPZITUv
OGXg2ExlboVzudEIfXLygs/fzl5RIljhTXRW1E/+8wIu6+GqM2uW+CHho81W
ad7wKu/T09NWlrjECcwmv8AbzpVbHXtmZIlrHbc8NFXpDUa6TxyELlniIYIF
Zg6fvMFpp/TGpLwlvsUrs+m71wc8bMLLJxgs8WlOLVnKPR/gqU3brL1lgbfR
e+Z3q/rCniaRFcsNM9x9rjf84vQDCD1DcTyyYoK/rmROtfb3h16WkdTnx6/g
TDHXe37QBoIja8MFcrIOftBhpdnxYCCcvcppceyuDk6vH12yjy0QtkwSiG24
Dk7D0egvyx8IK91H5uymtPHNTEGJSOVAAPO+DRmkjf96OuWnbB8I0x8191Dm
LuENHW5iad8Dweq+p/L6DS287hkzu+RgIBht5u6LwrTwl/FFO23jgRDoFnVO
nUMLr7ry49viUiDwP1N+cOTdBfzJAHqgyRgEOraa/rdOXcCT52i/rasGwbbk
4X+Uf+fxe4yJPkbFQRA1qaoz9eos/uXfRIpXeRDYjdte1Mw4i8ssqlTkvAiC
lAR2treeZ/E/naO/pluDgKyfynNc+SwelCqr+6A/CA5MSr8wrdXA04W6BAsZ
g4F43SrwQ5M6/laJ9d2GfTD8uex7oGhcFRcTtx7hdQ2Gmn+KiXTvVfGoY7Vb
6t7B4F5ityeoRBXX37GSjgkLhvQV3Omnkyr+s608XfBhMOSd8OVloVHFV3T0
7l3sDAa0JLJ4SwxwAes41ky5EFDQjdoPPBjOxeSndk4lBFZNIbtygoAzP7e/
v6AaAtF8OgH2FQT8H61Op6pOCNTyVD9u1CTgffmM5F+3Q0Duan5+vbsKnjge
wSKVHQJhjNXKzL+UcLqbwcyt9KHgcFZXa2lFHt8+6AK2zKGgmKcvefydPL5S
dcOBnTMU3NPFTqdlyOMjNBpfbh0PBSVOzaqL6vJ44yPquIN4KKzVxN3uSDqD
u489OGTkHAqlepdDOc7L4TMkT6apn6Fg7vZA73yvNG5ceJTZaTwUpkNu3RGs
lsbbZmtZtmdC4S2JXKQQL41TXP4eZtnY1fPUr/6QljR+KdSbW4ktDGy0n5xw
aJDCS5/4ioSfD4OHXyv9/UmSuMPvADXRsjD4ksdyWiBAHO8/I6RR+TwMUtda
zwSfF8c1PVvPYvVhwJPPIq/DKI7z76W5oNceBk8tErTY0sXwr4eDdTzGwuCv
UdO4do0oLqMYavqeKxzOjBh/ldgngq/6Rrre9g8H3Z5HZVozx/E3nb8eB4SG
w8e727FPG4/jqcJqvRnR4XCy0NLcNPE4rvzpj8qntHC4dEJam4KO43481ntk
K8LBzY5HNCNZCD9YB1FbI+FQ8J6Yr2YoiB/fWH0YqxEBHpTBotK9/PjaJb2u
Qq0ImP6Rrl3dzIe/zSmhadGNAL3UevoYbz78jibp1oppBPiafVpuWObFy1K+
SFxziQDDoFesDJM8OEG++IVgQQTcrLxdXz7BjRs6WXZU74uEvKEP6Z6IC6/1
uXrYgCkSJCJs6tepuXD+MO3ri4cjYbO9ZWbpLSc+QyFMiQlGwqpbqLClASce
8IaLNocQCdudX67t2HPg5Ue+EiIcI2EnP908s/EwznH8XeBJ90gIbjIrT488
jHufbmxv840EwQ5ZA3rjw7im+lPjnchISHgm6qCwxIYP2YY7OxdEwoZ9YFmz
OBvO1KRaYv4jEgYZnLfGK1hw53bF5b/DkeDkM5CUGcyC932TVE6bjARXi/io
WmMWvGCK513XaiS8uSBeIUDFgmNsm6OazFEwOyO6EGfAjNtaV3DLno2Cv7ju
UgkXE/7+oFDkvmdRcOVQwWCYPz2eKPzfHrnqKDjwzufqSTV63BJC3S1fRcHZ
zmZMby89vuY0c/Pl2ygo5Mo1Vg/djwv+qIS7Q1Hw8j/jE8FJ+3DvIo21TyzR
EBeWgBW00+LnW9ds/3JGw4Sd4MOQBFqcdaBw9CRvNAw+lj88akqLFzIzfvUT
i4aj2wM+B3/T4P+5/Vcsox4N349E/tnHR4OfPmdtlewcDXP56259cdT4hgXX
9xbPaFic6SMxW1HjbR7t2gt+0WDy5IdGlTQ1bvL0NEEzOhpUxmUj1b7twUMP
r3Ns5kcDaZj6txXvHnxoJPSjWU80eB9tbZyN3EEJD4oUTijHwLnFloeMtZto
SWe99T+IgbmkSPKG7SbS5z+rG3I+BmQeScw95d9ELM1DNhOGMXBtTbzXJmID
xVJzpRfZx4D4XDP9uvUfFBkcsnUqf5c/bdC8qbaGpq98C/tZHAPHAun6c/as
IS1hQfbYihhYH9woWGlaRfRv608tNsZATk/ZvmzVVRS6f9W8oi8GpGyknnZp
raDASFKzPHMsHGAMKb/rtYRGrpdfnuCIBU6jsRh5jSWkJrHTm8ITC3nucTop
jEtoT0f60h+xWEhbpJo6nPsbPWDqFHp1NhYy/9zj6Pu6iLziIQT3igXGGZvm
1uR55JTCc1HzVyz00y1EyKlMIU2aY0W9s7EwtHfybdH8JDrmeHTf3eVYsFHz
JS/nTiJSfuTwOao4qLpul7vFOIkOPgjLvM0YB3833xqVzP1C5jIB7M9OxoFg
9c/5j1/H0Dsb/7Z1sTgIbFRSyoofQzLZfk5wOg6yS0blT+iPoX0HH3z9KhcH
j0I1BC7/N4rKxr2iV1TjwGnMybRrdARRp7nQKpvGwbfSIkYV/mFk+9m5KsAi
DnRMGgxTp4dQN60z6QMxDt4G8l2Jqx5CxffvN5vejoNqzqeqWpeHkOEle58H
rnHwoVcuyWXfICrYsVlti4uDZ++OOARy9CNmeZtHjIlx8GMvjaxE/Q/kaXvL
wCglDl6rZjr/uPED6fTeLJ/IjIOlDs50tRd96E8F8d6B4l09bNbfJm/1Ii1r
03Gd13GQlcjGZrjWjW4dV5KwfBcH5xZcc3nLu1HQCLuTw4c4EPs+Snxi240a
zD9TxX+Ng82ufd+3x/9D0lfVjnUOxAE/TJ6wHP6GuDRFDAzX4sDZwUDHe6MT
naGjTb+xEQejqZLdPo2dSL9teMh5Kw6iQrAZoZBOFAUZdknU8SDU4s9/lb0T
USkxRXQzxUNd4CcJCZWvaEJ0pcn4ZDwcGXrRb3nuM6KZ/LLvtlg8nIr1C3Ib
/4T4C55qe5yKB5b0rZT84E/IRPBWf5psPBx8dD2C8L4DfTrat96Hx4O45812
OrOP6DlD02kz43joWRi4WVz1HnW9p7jcux4Pz4nraJ70Hi2GetT5mMfD0drv
cTyH3yMxGlmtrBvxoPj2W62C2zuUuZV/c9AhHhj0bWU5NN+ioLlIilV4PByS
PfzDjvU1mgmRn6+MigeNsePlje/bds/fME4XFw/YQt+XTf82xG8gP/okOR50
Sge5T6y2orqaIdGVvHgwT82v3hlvQauBZ16ENMTDSEPhNfJCEzLlGdrf2xwP
9HfoyvSqmlDb8wgT8dfxsPnOSrTLowmRpwa3P3+IhxtWolZs+5rQaZ0IjSO9
8aBVRxWSaNiArI8Ofi1ejgeCmuonS6FXqKMyXOjfWjz8utt2h6u1FsldlnPR
3YyHAru5BOYbtYjaL5xrlYoMvrIVYpVFL1H2uKwFYiKDf1Qjq7F6DfpeFjb7
RYQMjdecJtdLqhGuJYuEJMhA7Xv5BpVFNSoYHYh1kSSDXKxkFDNrNXLmkJU9
Kk+GWsX+LWWvKsTsPeBBUifD3a/fRC2vVaIL52X2rZmRYeDG9uw5tXJEtKld
PGRFhi8XKd8f7CtH3uFqfaI3yJDTP3XZpaMMlX3Qf2p2hwwfZ8dYoq+XIU5d
J4PXrmS4pao+covqGRo3rspOjCXD69CxCcGuYvTPgxBeSibDEWYik5RTMeLK
aLv/LokMSYI7V10OF6NLA9/ObmWQIYMjOTHN5AmqtFqdIRWSwf2ObsnoSiHy
vyOvKNtMhjQZV2dX8wKUHtkgcLmNDBw2aj8smAtQVck5hltvyaDGXvqfVms+
mpw3+pneQQaBxn0nj0jkIx0ntyDqPjJswo9oNfpHiMe75svXJTKwf7hEQQsP
kXwm1M6skoFoM98w+Owh0m14l0e7QYbwufA3ho4PURBVr6vSDhnerZefLlvL
QTNBG8ceMiSAwRvlx+MHctDLaOXbDscTYMS14NW1Ugpi2k5/5XkyAYZITmnt
FyiIaPuXMVgsAaa4Z5PCf2WgAxfrKtKkEoB4NLdsWCgDXd+PtloICaCrdswi
8mka2g5QjWW/kgBMj/XoHTeSkf7Sw2E+4wSYK1G0W3mcjAqsqOXErifAiheF
M+JqMtKG1u/IKgG4iEcrf75MQtnbGoI29xLAJNyZ/CUiEam6a1bXBieAalft
FdbrZJQ8UbjvdVgCWO1c0lE8QkbTRvQmnyMTQODYoVb0PR6Rz7T/G41PgNWZ
m4PDxvFodOmiJmPWbn6MKCJ3Iw4F39P5YfE8AX57qrp7qkajvv5np+68TIAS
XrtnV3qi0OlLzH7OdQnw/hKHZrZdFOoW+3o8vCUBOgUe7L/7MBKdnNS3q/iU
ANkMco03OSPQe6LRHtqJBBhobOE7phqKbJ4GmetNJ4DPgl4dZSwE0f2peJU5
lwAsOhLfvMJDkFr0IVf5lQQ4I0U7o9oTjOpevJu+tScRjI8sOdsEBCET6vXz
VTSJIGbKLX9VKghtXDqRT7U/EaIljbd8BwOR/Ii/RRpTIlwlP6e2UQ1EZQdV
vrVzJ8J6YzGXCFsA0r56W5qTLxFuqvi+tG73R3MPU2JIgokQzBj2tC7AH4kp
rGhuiSTCM/lPTVlrfijP6mn9KflEUBtTrsj+7wFKfs73OE43EfrMlffe2OuN
5PZo0wwYJEKV18Pvl+K9UNdFbyvRq4mQ/iDn1m9+L8Q8/J27xSwRKMs+ioZn
PVEEAzlu+U4iiIQKcHY9dEciRk1zuF0i/HkkHDVDcEdvc+a1ohwTQQrFrMX0
uiEa+Yu0J9wTQX6g5ZsFpxvysaTxNApOhArpXJGYRy7oWLFMT25YIsx6qYoT
L7qg2lVLuYXIRJiwcbNPWnZGaxH186HkRGC7N3WeVtMZOVS7kl5mJwL7k4w5
XyondOPA1KVjtYlgeUuo60WxA6ruX1GVqk+EsgZ1/947DojuGZWCRlMiGO1f
a5kVc0CFBlwCtm8SgSHRwKz6uj2apZxffdW52+83/6wl73vIRbIg8/pMIgQ8
37TjZr6D3uypINvP7/pz85RCVtFtxPWtPjTwdyKM86Zz52ncRrXu/zkWryfC
u/uMhTwPbNC/Zppzf/cmwUnx3o9qtLdQiCFpPv1YEsQoRcG83g3UI2w/WsqX
BNaexcJSe24gkQ3P7y2CSWDbr/Yiv5yE2jPJLdMiSTAd/tzhKAcJHZpoTlY+
kwRSn38+q5y1QpYvOyK1FZPgEGY9xZ1vhSoie/2IKkkgrRDnmWxuhQylft+J
UE2CEOo7dJXfLFGqBz/edzkJTGluv0XpFmjqooTcvG4SpNWoSVtwWyBlXkVR
asMk0C9wCbDJMkf9LTpsYiZJ4DV97MeRJ2aI/+CDCQ/rJFifSX2m2HMdFWUN
xB55kAT8q4aX6gOMkcalF7H2AUmwU+BuzcJpjIY24mJfByeBa+SNefGnVxHH
FY1Yx6gk8IgTbkr5aYQCGYpj3qclAVNAS3bYlSuI92VQDF9mEnhWZKZcXjdE
tdbmMS45SWDy6drD3HRDtNjMEiPwOAnkTmTmjo4bIDN392iPqt36MXbF7DH6
6M8J/ejPL5Lga1bM11IVfZTYJR594lUSCNdHjDye1kPtpwejvjYngd5lTVLe
JT2kMH42SvRzEtDUMEyc5NdFLPpskb1TSaDYOL37Z3AJlezMRkjOJQHVI5dR
7qCLSPPpm4jgxSRg1zbr999/Efnu94yQXk+CX35dQWGcWmimYSg8nCYZfrma
SSVc1kQhtrXhg/uSYehzn9H44HkkeDQx/AxDMhRzBhw/7HweGbucDx9mSQai
pNjnyYfn0Gvx0jAlvmQQLLtWQ2E9iyx7Q8NiBZPBfOF0/J5KDbQVYhU2fiIZ
WPT6Lu6/ooFkRg6HxUskw+aI2fGhTHWUneoVOqWUDPbSj1yo1NSQB+2FkDTD
ZKASvrfOn4kj7T1/5wevJgOhf578iQlHx7dLrgpfT4Z7vxlWxwMQ+rLCLFpp
lQypvttbovcxdHLs+4ePdsnw2FjlwvpdFbQ1GCHHdj8Z6sbPnBxZUEadPwiZ
11ySQd28Jn3aRRn5duXY/fJKBj62Q3NSYUrovxYbFqrwZPja/jIur00BPWk4
6nkuatePuzT3IowVkF/tx5Go2GToFrpQcXFeHklUSFUdSU6GD0eOXEF88ijw
4R8j2bxd/V5enczJckjaL4xiXZ8MU5vtd2S+SiM6b2Xap03JICxfV3f1gTTq
d5u9t9yaDD/8eeUnT0ujMHtd3K89GW6akv1lyFJo0JxrJK0nGazlQ7fjv55G
VSbtWkN9yZCpc+/VOfXTKMLIu1L4ZzIEPXc+5friFJLXHgqqHEsGT7bld0cf
S6BorPBkx+9koMuyDbmeK4aISiZxbKvJoG+/rv9aWAwpnjm4ce1PMqzE9ly5
9lQUjUk4tP/6lwy1L7ha+5pEkMoxxXtUB1Ngo9F4/hzVSTS1+bZCVjgFbkRp
bBv3CqH7vlcrVUVTQNPF60d4gBDa3DNRqSORAuw91qOip4TQAXq66rsyKVBy
8bJwToggkuDUeJGHUoC33sP87QUBVJXe9aJcNQWyEw597NzmRxgvqaZRIwV+
5LcxCVTyI+0TAS9/aKUAD1OGj6MAP3KQbXrFdnVXz5uZ2BIuXvTnuU6dgEkK
3C96JPw9gQf5Kw/WSZql7H5vUx9SYeFBZNV/9RdJKfD9C6NbAOsxVKlDaAq0
T4F/Wf0/+E8fRWt3a9qWQ1PgsUvypmELB/JdOP96T2QKXEhaqdsw5UD7nHpe
H4pJgfBa+hSDDXbE5bn2RjwxBR4wDakdUGBHSmFy70k5KfCFysy29TUbamFo
e++YlwItIvOsuvfYkFasQfuDghQIupe9fZ2DDZkk3/+QUZICTxefFH+3ZUXe
j8o6ump2/fmSdKpOjAXRiMCn4Vcp4OQ6Q502wIyiiz9/WmhIASOLsdLX8cwo
q2L+M8PrFBCzeSLw++8h1NQk0an+NQWOdIvMmLczor0Dhd2VUylwekbNYesb
PepWoRvZO5cCknalNBxG9KgwnTRnsJgCch3HaaN69yNtY16albUUGHg0Q0Wc
2IdSuxKk5WhSgcG/BY/noUN3ZH4TgvalAmvwXTmbMlqExWtrfjuQCq87/tZe
OEuLRrTpLZxZUiFtm3WAzoUGSbT7RlXxpsLdM3Z8d2eo0T+R/hQawVTYKdLk
SYmmRl9DlfIMT6TCsUraqBBpauR6duXlingqPEtNYYz13YOam25PyCmlwtu6
8Ne3JaiQ0QtDtWqDVHj5ftM8++FfTISj4jLt1VSITn3pconzL/bX+dC1Kyap
kOp/rzktdhPLkWm3X7VMhbEjB9+Nhm5gM0/xzDN2qfDphLneVNI61nAwszDY
cbdexQ8lLb51LO7uZuV/zqkgHO7vPP9kDZMXrW538UoFxjlm9e53q5jfI7E/
1WGp4JCS7b6XdwXT3xu2ly4qFTgY8tvMapaxE8RxJqPY3X5NaBefGC5j7Xw5
J9aSUsHshsCeDfISdjiD3UA+LxXsrCvX7pz4jRXFU5U+r08FsUYFjwa5Oey0
u4rep6ZdPcUywTlFs1iVuevKeGsq2KK+ODqBWaxBfFaZvT0VTnCqVkhzzmBd
r3veOnWngg+oL3XxTWHGJax3I3tTQYbzjP2jx5PYT/Jlprz+VGBxFf+UJz2J
TVq0GnaO7M7zP9F/+y5NYNsbpcNSC6nQuX1g1TRtHAsYmgrSXNqNP0THnS49
ju1/e1zEcjUV5r56LLz6MIaxJqbbxf7dnZ90hGck7Rh28nTI37l9aWA39ZLR
KWYE0yOasRfzp4EQ7piJDQxi3ZqpNS1CacDvGc0zqDaImUp2Xe8TToP9d3NF
jIt/YtZbmrn0p3b5tje5M4MGMK9kOUkbpTTQ6iE7H776A6Pyse98QEiD4lmh
UtbOPiyE9MQlBU8DToa3USE6fVicFH/dm7NpIHlTRD5XrxfLb2e4cEI/DYzw
1GV3xx5MrPzcLOFKGsTgNY+W/nVjZSn+sYbGaZCCGw9HxXRjtTfW/ws0T4NY
q1dDfyv/wz7/GyGO3EmD0eupua84vmEbMrXe2YFpsLUW9YJW7itWc6sj7HFI
GtDbvRlfGPqCuVOGEp+Fp0H19kinZewX7A/tvqeNsWmgHv7jnOvwZ2z9u8HA
YMauH2H/PREP78CeM96amshKg76CtIKljY+Yq5rn6sLDNBCOs2Qzv/cRWyvO
YaQqTIOLP7WWf1//gK36zmH8VWnwocZQ+63Re6yqkkpL5EUaMK2wf7r94x3m
PMlmJFW76wfo2V0hvsNW9JTtoCkNgmmecP10fYstHw/NsvyYBkn+Zo5pL19j
v9v5d3LG0oBqqffg3cwWrGxHlqFoIg2ufGN/xKzWgjnInecsn96tL5p0+u5k
M7aYeU+yeTEN2EjjvnzKzdiCQ63F8FYa/Il91mM+3IiV5nfcndrZXXc0Wbqo
0YjZ9Q25/aZOB9UDWT7iTxqwefV9cXvo06H0sgZzpG89Nsdh2CTAng5Nqz9r
r2m+wkou3vooypUOdy4ViVs312K2fp7fpbnTYeqOkO82oRabncpZVBVIh2Up
MY1MlZfYTN0cP/FUOjwtQzaWV15gU8RQ/9yz6UAeukNO+F2JLd23SZ3VTIcn
9+RPvQ2uxLYCLjyTv5QOS5vk07LHKjHmPIaBdv10MP0vnS5UpwJTHI1VXLZI
B9bZnqLZT2WY2rKDDkZKB/G/w55lTmXYpb361qHWu+sLbn5Xj5ZhlkKHE7nv
pQM3+3ynbl8pFkZKXVD3TAeno7nfH+qUYGQnD7oYn3SwM3lxX7e6GKMEmvB8
90sHQ8W+DVneYqws79hF29B02DzUVXx1owjrGc0pSExMh/8a4zIMux5jwjeK
zMZL00H//YdtJfpHmJRzhLNkRTqIHJJ4eCQjD1MOuhvpUZ0O5xxn1DUl8zDt
R6deMtalw3Fk50E0z8Vcx8oPy7/fxVaP7c5352B+K2Rxv4/pcCXL6oiJRw4W
QeOs1v45HbS/buVa8eZgWcflHcy70+GjIEfnpf4s7PWN2g8ho+lA6GpRmzhH
wT45Z4x8+ZUODdEcl6WfZGDfg7w3jk6nA1HN+skH5gxs9hE6+WwxHUqoqpuL
J9Kww+MtAT3b6VD3Yc3qbG0KduPmByURrgy4z+f/+/J4Asa/HT6pxJ0BIXMZ
vAE+CdhAombKRd4M+MQ5ZPuWMwEzanu9Ync8A0JfsgeY6pMxTaGmZ9VSGdBw
7Wcn5WccRvPK1/ytbMbu/jUc0wiJw5r1McZe+Qwo9vxyrFwyDlMOqL2zRcgA
wdqejzcPxWKnhqtOqF/IgJq+iKSfyVHYtLvTN8NLGcDWJZOaRBWFFTDLBFrr
ZEA7waFb914kxg/PhsKvZIAiwepTik4ExppdlPHFKgOuRP2k7TwThq2ZZrGY
e2bAqVU5iphPEFaxYtpk75MBJVrKHgXMQZh9FLe9v18G3JscuWZYEIhNvkr9
+CgkA5b1Ye3I9wDsx9GE0BlyBlSUf6MXMvTHUiv05LeTMuC6xvb43j9+mKEW
8zhTWgawB0+9as30wz55RKvJZGeA1uRvepeBB1jT99Bt9+IMEH8sMc5w0Qfz
djhXElG666cLp1l9qTemtJ/2OqU8A6L+lFVmsXtjFQoBNY0vdvMdmNItm/XE
HiV7O9G1ZYBjoNTs9QZ3LNzQcSqhf9ff+gXr06POWNzb7dyJwQwYpN+5Fn/b
GUtWjjBVGc0AXh9Z+aIlJ+wRf97nkakMKLj/tvrVQSescfZbtfR6BlC305f0
mjtibyys7IM3M2AgXMVeZ8MB+9g5J9K7nQEKC8eEDyQ7YH01dBQ/Ggp0qxwe
Vyixx1aDFAM+s1DgkPnaRN1PW2xrvU1FiJ0Caa8fJGmfscWo7+qtunJR4Ju/
dfHT2LsYs94dG14+ChTp8HI/0LmDifNQtO9JUMCHcfLWmY1bmEycyP5mSQqc
ZeYhrt69hSnurW4+LEuBc9eeKIwNW2Pnpjrk6pQoQNtTum9fz03MqnrnKMN5
CuQQg+8GjJEwG5Gob+ZaFGhKWM/psSNhdhlcMRWXKXDeUMqh+y8R8/aX3mNi
SIG9v5x/JPIQsZTLpIlCKwrE1Cs0BvhaYllNCzlbNyhQrmiGxR2zxB7Jepvo
2lAg8DBNX6mHBVZxJKlj3Y4Cq7oDdM37zLGO8TeV57wpsBEWzct15Tr2zdjg
XvoDCig/PqFwssIE6/swKDwfsFvPcc/YHKsJNln+Jy0pnAJopMf38qAxttdX
zG8smQI/Mhdf8D00wg78fq6kmE4BoyqMteKIEcZ8Q305MpMC0tr84eZJVzBe
LVNr2UcUaHUu3WlIMsSUOGIuBZRTIIk74WtrjT62xPwnM7OKAs6WNaqFOvpY
CQNxoeYFBWreSi59mtTDePfIkxfqKbBMYntWIaCH0cwO9Ji27/Z7+9pRnms6
WMOv86LuHRSQJCee8y7UxtyGyz0TvlAg9Qx155O/l7Hp7mCe9m4KDEbeZzv+
9BL2pfkUSWGUAi6MzPOWylpYRF1Klf4vCvgr6T1hKbiAqb/YQ2c3RYH/7F2d
/xy+gD0v+a/w0QIFzJbV+wW3zmMZKT7zLFsU4BztsDsyfxYzJE/gp3YocOvP
H7sCx7MYU7RevCZ1Jsz3kzsm1jUwv4ATcg/2Z0KckCLd5YMamPW9Do/Zw5lA
o/2nh9NADeO3UfiwjysTqpzT9tZNq2K9xIfHhLgzQXRnc74gSBW7ZOzSeE0g
E0SGY7z5GgGTUeehfXsqE3Zu9P7JTEfYLBZqNCKVCS7dscnVMxiWr/j78bZs
JvCJKAY+BAzjOv1aS045E5Kizz7KXVXBtrnuxT08lwnn6wQruCKUsOdsPcN1
FzLhGjqIZ60rYg5MqrLfL2UCrrL//XUbRWxkL3s3k0EmbDUPgKKBAvZuvo7b
2yITpqwl5TMvncECpoTvpRAzIWWA/Q5dpxymMhbXUHEzE8SvMDQKmchhpb03
rKbuZkIdy0Ut/L4slth28LGReyZcLcspv9MkjYUx6lgRvXb9+JWgN3RdGvM2
iue2882Etci4jKANKezGJHtccFAmaC1yjIuqSGFyB/k8quIygd3vyXuDp6cw
kStWsk0JmaBznB4V05zCjmXlzX1IzgQuNla5ZxYSGI2UCHGUkgn77vxotOUX
x7oMpC+yFmWChlIGR0G7CPaG4kTLW5IJG0L4xXOYCFY7Xt0o+iwT2Ho+PN6u
OInluinLqVZnAv2NRZLdY2HsfoY6j0NzJjRfVVdOqDiOWY8F93i1ZcKz1uLb
JwjHMZNT7+JD32aCGE9hme47IUyt8RJddkcmdIyzZihNCmKso1cWOnp359Uw
sNOtIYDRSaQW9fbvzqdl+Xv5MD+26dxHGh/czfdYwemVHz82QmfxfWs8E56K
N/y4EsGHlYvZNIsv7ertEj58/+MxLLVu9oz6n918NdyPdYO4MT9txycm/zJB
ti7wfKjWUUz3vmdC+IEsmMnYMY7e4cQUaXb2PWTOgvWBlzfOzHFg/MmB3jUc
WZApmSP26xc7tvgy6uaEYBZECCPWK1ts2PeLLH3/RLKA7PAs8ignG9Y0kKTN
IZkFT1SHNtdUWLHYPdkKZ1WyoHXyzAmVXGbsoFZj85BqFhwIJYpRFRzCwsiD
F701syByu63nOjcT5ifEb1l5JQsG322N9mEM2NZdmNY2zYLqC7a6alP0mHuV
pfM0MQuuxfKVUufvxxzOPgwTcMiCQ13i0QFadNhsdDNrvWsWfGMZT+yUocVs
uocpxj5ZIICJfMwQocGsbgmWx0ZkAfV/Uo2Hlamxn8/UVMTjs2CU+kxEouEe
zOQP8fWblCw45ndgXcKTCtMPz+vdfpQFdwWWV4+/3yZ8+tpKSivOArOG6sZ3
ulsEraNjc3IVWeDtKDP+bHqToF58nNq2MQuWVslGPXp/CATCTY68j1kwt7z6
kffPKkGuI1+srzcLah6YNT7sWSZImP9CLBNZ8JRxYIV25jfh+IKwgeZKFhyx
zWezP7VIOOZ369aDPdnAIBQQ/0tujsDOUuj1nCkbAu5lDAmYThO+N5kvMHBn
Q7eTfIrU8gQhw4GdZHUyG2LCLDbamscJ5vwfu5/LZsNP/5bZlZZRgsCXAK2D
kA2GyWEt6kvDhLEHSg1Wl7JBxkt0KPXiEOGx5KL0C+NseJ5fbGmXPEC4M1iQ
f/BmNkgVnEq586OPcCrW7AjRMRuI33gSZi2+Eyrn26kYI7LB3cfv1QWWbwQl
bcXJF7nZsJhvqd4Z8IXQ+DT/M/FVNlyPbpDYf/ID4Swj2wvGb9mQ23hnfEzn
DcEv8RPvzZ5s8Fq80PD85WtCLXdESF1fNkjX3zG9e/I1QUpsj9Hd4Wz4TkvQ
5mJqIxw7v7Dybj4bOvg5rUZpWwieTTePtNDkQOv+762WXPUEriD1jnt0OcA6
FMwnY1BHqD4v4H9kfw5cl6zoF054RVj81D/pwJADY9TdXisCtQTrAYMaPtYc
OPg7r/yR2wuC3qbqVR++HPCVYl3/N1VBmK/nYxAVyIFT7jnXF20qCFH+2w3f
BHNgOVi9QWOmnPBm/0thCeEc4BHIC63fKCMQOKXW+iRyoPCg6AxyKyWIyPEm
KSrnwJ7QD+FFQYUEKrvNzmXDHChN/uijX5ZNeGWs8SrFKAf4/IakeHqzCK7q
MXkqxjnglnjXPXRfFmGGS9A58HoOfDGqojx2phC6Wy+wsxFzIPuc1Xn1qDRC
yZG0qzL2OWD0UlyWPSmRcPW1Qr9DeA6Y2lRtnC6KIJQecxmfq8+BtiCBBcZT
roTy5pzlPr6HcMCnsU6xQZew+Tn0On3EQ8hU9+H/S3WCkPqNr1Fs7iEMW2uo
iJK3VEJymrFr2rmQZX+Pn9q4S6X2P16O9y9yYfZA4Y+a6HwV9T2npsWP5sFS
oATnXS1PFevo28qj3HlwJtZHYdLOQyXiSEFEOk8eNEVyJ3imu6t8keYTpxfI
AyU/erMNWjcVUyKL7a+TeQDBPaueIs4qzq2rczln8oDXsDLRZNROpSC44Te7
Xh7kcslEP+Ygqrxn+avaoZ8HKUr66aM+ViqzmQrkIMM8cOj5RTo2baki87xM
ZvlqHhRPH+Nrfmih0vAr1+mLeR40Y50j1I+vq/ScD12NsM0D8buVGw28V1Q2
u1rPqtnlgcG0O7PZXUMVXkuq5A37PHiZ33twsN5A5Ya7h7yNUx4ot3sZfXTS
V1ksvOt21jMPjtbrL+ry6qqwnSl8u+WVByXyqYlMYjoq8s1jnFU+eeDTPU4f
wq+t4t1rViPonwfuFjtrt09eUsm+mb6/LyAPqAredpxTuKjS8rvbOD4oD+gt
+7eYdLRUxn3YijRD8uDdcKupn90Flf0HdDd2QvOAtJg1aZKkqfI/dS17Rw==

         "]]}, "\"40 g/mol (Gaussian)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "40 g/mol (Gaussian)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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

         "]]}, "\"132 g/mol (Gaussian)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "132 g/mol (Gaussian)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
KLc=
         "]]}, "\"4 g/mol (Logistic)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "4 g/mol (Logistic)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
L+j+kjJHwnw+h8O+k8BPREvOmtscjZp0ZdAukMD0SPPGMo05kn5rW861TILJ
+4doSl8R0HLlg9GLayT4UupamXeagMx9BKRSyYvBPeE/yoEVU6RELvJd6EQx
iA6+UfrwwBjZxjvIzbAWwzL9Ou39YGMUc/x+TA57MRwS4FooNzRGfWc5hQ5y
F8MYGUWVBY0xMrFkdJrjL4ZAyYMnrnkZIa/2tUWiVDFYLXib0WkYovvhz1eY
rhXDm4tBevT8+ug14z+FXu09vm1rtRS1PlrIP5cSplsM1/7lacXM6iHxp5Xi
q/rF0DOgo9p8Vw89nyN59pkVw/35GlGlk3roo2rkWoxTMWS1DShknbmONgfa
VRRdiqGU3oklnOE64jAny9hwLYYw9jGNvF+6yNrPX9resxgc/3xeUqvTRT9L
bviqBBRDY4JLRpqiLjoqVfJy62YxVAlGUb49qYukW7/8VxNUDDvMs+RiB3VR
4IhpPU9IMQwpHXzl1KeDCm1yDoyGFoOSvDWXao0OalsZMkgOK4YrrAL86lk6
aDboaKlaRDEw2Mzc9QjUQQcOaW3sRhbDqNYNy3ZzHfQ/jUDOAA==
         "]]}, 
       "\"40 g/mol (Logistic)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "40 g/mol (Logistic)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVV3c8198XRqEyMiKaNtk7633fR4RKZBTJ3uMjyl6Rvffes+yE4mvPhpCQ
VWSkzBAqQj+/v+7red17znnO83rufd3DauqgaUFCREQkeoSI6P/rEyG56dHW
E3ikieBCUvCA3HtqXUgKW8CF7vNnP34fgXTUituMwv7gB1KQ4NVfhgquxzvu
WpJAIO/dIgblVnT2/gDR1bBjsAxlZJS971B8HHVcTBk1NFjdlGR8+REF6T2h
WbWkAwu94hUd+S9IntCtS+fOAF3jdFRBCvNo3+dr7uUwJrCfyLXl6FxG9TFH
FvXTz4L2SVWDgJgN5JzHJuJfdgGEe5kqbpRto9Tx3CatKRbINZqXSBXfRa6m
VcbfLNmguUTblYrvH9Jebj3qscYOWpKohl2ZBBd1fl9M4c4J8eK+HSuCpPiP
oB/rwmE88KJS6SJDLgXeS32Q2EnLCyPxegc/eU7ipSlU0nfS+UBI8fopHyda
3KKE/7FXmSBER/SJlfox4KzM2XTkZ4ThotdMvX/laTx2ssj81pQw/GYznrv5
ixm/b/ni2JylKLgpBDoeHbqAT/I26/HziUEgZUXC6xoWXHWtq9xlTQymXEQy
i06w4bzuw7eOuUtAlQJTXdskB/4tbDNVIEwKvNqfJmox8uG31f4uud6Uhl9H
59yudvDjXXRHsDZaGWi4pk885yGI52fQzWimy4LSgfPlPlIR3KBC5JJ7GQJq
vVP2sRPiuO1Cnf6M5RVQ4/GWrPTF8PyeRlKyt1fgC5f3H4NShI+Xt1by8ikA
ud1xiopxHFd58JrIeU0BrgYxmy6wyeNcuyOFZO5XgcuXFD4VK+CzFL9W+MJU
IHLTiPYV7TXcSOfFWtymCmi+eCS49/Ea/jnf+edvg2sg4kF0cCLzOj4ivfm7
U/Q6ZLSNGToJqOI9Vusk+p9vgJxEwGKVmTpe3bnEFCmkDnnH7j5bItfC25sd
2H4taUJwnKdY7t+7uJ/Ze/ZLLFqg0j9aO22nh6PjQpz6t7VgRVODnf6zHt6o
/YO7o1ULxHhHWUSa7uEvlgkC0YnaoJ4/yxDlaYCXMNtKcaE7MMJxQnDD2RiP
czFXuxN3F8x/tIYo15rhnsmZfSSdd+EW6RcG1lkz3LxuWPXZ1l2oPcfEUXDS
HJfcUbxxTFcPHmoILqbZmOMT3pwqDRfuwXcE9zmYLXC2wG/yF8r1ISVhq9nE
whKnKLrQ3jOpD8+fqklRRFniW913wO2kAcxcX3VWqrXEX5G/RgMPDYAhqvub
PbEVbhfxVNZf2hA6kiSfmSdb4bXx1hLfXhlBg8ZTJ5FSazyrJrc2/o8RxM7k
L4T1WOMKtitpFxmMIe0/HzmrJWucP4KDuVfJGGI1ukIreWzwg97E05ylxkD4
MPTOLMcGfzgprPO3wxgSitdpRxtt8O+rvckfPhkDzSw1e++oDT5ATcr4iMoE
toeV6mWobfGCWy6nRh1NoKuRcprDxRZnMqHVrggzAd79Zde8KFs88kFFQkC+
CbD49HRmF9nirvHzdMLDJlD497ff2WFbXGX4Nm3YZVN4Xn6a8SKfHd70deOW
0S1TUPLA6vJxO1xkOypWwsYU2rjD2p9q2eFnGF+dnE03BSka0W+Snnb4io4k
teyBKTT6u8Y6ttvh4hOJiYmMZuCJLerUfrDDffQ3z/wQNIN7GtxZfjN2OLVJ
FXeekRlgSSanav/Z4XfmqCt33cwg2eyA4hw1Ac+xsBfXjjWD0TdOlNTnCLiw
La88ebsZTH8In4+TJODuK6GvjcfNgCJv9SmHAgFvv//9ZsOGGcQJuyspqBNw
TadCPXs2czii5svMZUnA07dJZl7JmMM8Y5nusiMBn3MzsWLRMoetf7xhyIuA
O3tfcB4KMAeRq/z7sdEEvOnAe5c/0xwyP16yiUsh4KSPP/kF15qDKL/CabZc
Aq52RIZ8utcc6EqvFCoUE/DkoNQo6XlzaOgUrfr1jIBPkf+mT9g3B+drSlOy
dQScO/x2+gqDBXjMtQ3TtxDw+mi6pzlKFhAW3tHxqIeAE9E+ENgxtIAPdtoM
9AME/FrC+xpNNwt47yfxTe4jAY9nEJQpj7GAMv3Cxb1xAj6REtlGWmwBqmNW
I1pTBJz9zLKSUZsF+J/5z+LKLAEnZF7rqx+zgJrPAlpv5wl47YViLboNC+Bf
zddfXCDg+7lkE3bHLaF/jetKwTIBV2K3MO5mtYQcg/nu36sEPLqo89sFGUvg
66It/75GwEe52ezdNS3B4OpQg9MGAWcp9dv8YGsJN3SFGzJ/EnBr/i8efAGW
8PDdrpPZJgF/XokRBWVYAsvxppo3h3hXODN4qsYStLLzlPoO8ZWaXUqpXksw
PGr798EhDpe4mxD31RKYKjXy6w7zDdXVMS/vWYKyLhFVzmG9czKMuYoMVoBn
u1JfWifg5k3OXNkCVmA7+Nfzzg8CXo6Gyn9ftQJ0lpKHZ4WAb7eJiGkYWoHj
sNJK9iIBRwqx/5W6WoG4hEFO4zcCHtz9Az8aYwX/yRCf8Z0j4P3KN18ZPLWC
hNFhiaUvBPx0T5lqXasV7Fnd7dv/RMCNVU8M0YxZQaftl8aGUQJe3G9913bd
CnofuU6yDhHw9Vuvv3Qeswanoklq8X4CLj3EaXme1Rqk3joJ/HxDwHtGZx8O
aBxiZftSl2YCTqcnv3PJ1hrifbheyR36497nHN8Af2vo1cq6VlNFwFem9SMl
a6xB4XoEWXU+AadeGinKPGUD4rf6PlMHHNZXKvQnE7IBj1LbllKPQz0LHhg5
XrMBKRffi+sOBNxVn5JZ8ZENPPn7edzr3qEf++Ujl7/bgIjJF9eXgof3h++k
zW0SW3g2tZ3RzHbIJ/Tz1dZztsD/mY7fjfHQD/Ju/+I1bOHmP/pd0n07vKKm
/KFMoy1It3Sef/7KDlei8VQv/GgLB1MRDrb1dvg0QZmfet0WgmofbEyV2OGn
uGbnZzjsYISmemQ/wg73Tj19NyzaDvw+OrOI3LTDVX388TETApS/P2d9t8sW
/zaufu6KNwEUrWwbFattcT/J8ztlyQRoi3q3/jfHFq9dq6v2fUeA7qzHfz94
2uJnTVc5uSXswdUKPyYlaIsvKelSuh67D9dltek6Im3wMBrBcfpnDqAXRS9/
Qcgary/97tzw2gE2P3CHjzJb4wuKeTQm0w5QSCxE733UGi+QO8ExeswRFMmd
DMLGrXDiBz73OGQcgZmc9U23vxXeMm7W05LpCCXu/gUqg5a4VJlw8abJA4i7
NN8kZ2OB86v1mBmsPIRZ+wBTtVhTnBA69bl+5yHYcug//epmipd3/Lx9itwJ
jJ1G6gKMTHGBy2dV3rE6AcFPKGdS0BQXZCHwS+s4wamdlsXj/Sa4yE+q7VMd
TlAjdTstnNoEl0zWCO5NcT70h3c+t7gR7jpg8Y+7yBmcpcNeFpMZ4S9PeLoH
VDuDfJKqlOq4IX7ZN99Wps8ZWkuMfv19ZIhLWW+qFZO4gF+l7l/yXgNcRibp
dKC9C3QxiPAy2evj+NRYsayCK0QXlp6c7b2L22qodevecoXz5gNPdgvv4old
nTMuBq4g++nmqqzPXXyhtPJMlZsrvFpD5NKCd/F4t8BIjnJXaN/hzGSJ18W/
0gg7UjG4QVQjo1eDiQ4eqhBy+cs3N6gV6pkIZLmNV7/c09rbdIMKb5Hs8X1t
/POlh47MxO6gdlf2te4nbVyExqBE66w7fL/8BBtJ1sYnPouefaPuDv1WBxJ9
J7VxAdepg6p6dxgTp0ovPK6FDxZLvPIP94DNGxa92ec08NcyrFdakj3Af7qw
lJNYA2/qpWzZyfcAmbXklffzt/An63MvHBs94MtyqHr0s1u4p1R8keGKB/y5
e9+2SvEWzvrmR6CMmifI/FM1XltSwx2/P1X4SesFHb/tXOemb+AWHgmtAhe8
IHB2U8ql+gauR+Era8PrBQWfeteUA2/gikJ3xKaveEFeeITpM54bOJPbUfZ+
Jy/YXJEx83O+jreRmZCUfvQCMsGS07unr+Enuc60m6R5w1/du6caIpVwfk7M
uuiJN9j9UZ5vMFXCr3MYn1ys8YZ6yeSUf1JKeDDbEwPHfm/QjEkiaH27iu9d
EN19dMQHrCLnrc4pXsWXTl8Xy7T3gQwersk1CkW867hn0Yj8IzgeotTs3SOP
zx7LUj2j/ghU9wzjzYrl8X/kbZsG+o/AbFo8NTBYHpchI7sy7/oI8lRUSJwV
5PHnJPFTm2WPgP4S3/K/1sNn+G/JaVpGX1BS1E+jC8Fx99XxsBtLvhDAFJz3
9KssbkzhFFvxyxdO3fx63ee5LF54KvhdCLEfiPfIXCx+JItHil4cXKTyg7ZT
T13+MsviBvc1vlRw+QHpw27OSG0Z/GD+xY6Erh+UDCrSbYxJ4fDxkaBSox/Y
f3/YV3dWEhc3fyfi1u4HFfVmF3V+SuA8m6clil/7wcdF+irsrQROQ/tc9sSw
HwhtJyxOuUngM6pzKv0rflDOXXrHckwc9+9SNrtz4THQV96VFnoihnfX0KRa
Pn4MVsON+WsPRHDBL1T27iGPgcT0ct9dDRE89QTFlfCox7Cdr5CwJyyC25qQ
rlSkPQbDqYmUpXVhnPrkLr79/DGs3pFgNXISxnVt574HzD6GWvnQobajQvgS
y8vLeQr+8DdtG+ij+HAt1RrKmmv+sPGQJ6tPlw9vcqua6VL3h15XxyPzHHx4
dH9pxMI9f4itscjgaeHFxbxzvgg5+0PUaszUz61LuPdoaEhLoT+cjM2+weDE
g1NH3xv9RBoAt5nTX3dVcOKUjlvtDygDINWI5kuQHyd+XDOqnJw+ACwb7UVy
tTjxo4ytj8VYAqAFLRyd2uXAd7PY+CNkAuC6Fzu1/c3DeaZi0U/GIQDi9Nq3
b5Gw419j/O0GXAIgQoj2of4EGz7z4OwdS+/DeNqXUXXVbPhniZt88WEBwGvA
oq9nzoYPNld9XCwIgLVIxZQr71jxlj433rSxACjpGnNje8qCNz2jYRD6EgDj
Z+buzwew4P/Flfzrmg+AO3cC1NeMWfDa25+G138GQL0AU8vHsyx46STyVaEK
BENyI66WSxfx5FXS4d/ygcDK3d69wHUet6dK9LlTFgh6kouXax4x4wMH31O8
ngeC+2PcqO4GMy66LludWxcIBhP3ic4zM+N/Bue+LXUGglme8Z/jL5jwwFSx
W76fAyHE+NqmzsZpPJ19iK2YKgi25BykRLwY8f1T3FgffRBU/2Av3L/JiBuT
een8ZA6C4pNDHKysjDjnIlukHFcQvMmlXLd9w4BXVT7cHkBBoP1OuvrPGQb8
tTTdmx2HIJDQmsHd39PjvHyWsxdcg6D20xfV+0/p8chzDXsK3kGQ3LhNUe1L
j2v+MxGJDg0C7tu/rFlE6PGprufpbHlBMHsx/GZYCh2+pa5hf2MwCBYmloVO
PaTFWS1j6bLEg0H95fb5f7XUOBO13xUl2WCgG9wjZXxAjdO8dHi4Jh8MJD8E
S5oFqPEDUvVBefVgcK3ujG0opsIniqjiv9kEg5D5nPWNIko8cT6cVjgnGGDW
gG+47gQeEeUpP14UDAX69/gfep/A/SVsH/iXB0NRwX/JMfIncMegax+G/wuG
2NCDVMW+4/hNzmNxHsPBkCRiquu1dAwnswii6TweAk2PXSmuyJLj+5QuQKAJ
AY+UjgFjcnJ8q9bckeF0CDD/ZctaGyLDZ48qDlhxhMAF+qDnd++T4a2FJLGU
eAiQdw5tKxWT4u5ffU/ecQ6BCg2viS6ho/iymSf14lQIbLS/U0kPIcZ1i8/Q
OM2HwPHQm28HjYnxrpUG2v3lEBAmQt6GMsR4psvfU7Q7IfDz0ul+wg8iXDXE
+6w0fSiQO15v0NQjwitLH/GEKYcC2WtM1ObxATqzdoGXXi0UWALMEouwAxQs
1sqXpR0KHm9p2J1395Fh0z/B5yahMKKvQ9npso9O9vtJjHuFwnpvhRe50x5y
3PC/cqkqFDxzGVMEQnbRZwl2xZqXoRAh9qviiOouUvHsvIo1h0JW8H1qPdpd
xHLk6DWNnlD4oL3wKCBrB304FaTu8TUUzLVw7fLGP0hUKkT/LVMYsB1QMLtS
/0bbjyJcbR6HAR/JawEN8i30avDbU/+QMND5KvlXe3ITpXJdGc+ICoOw+pfh
lTWbSKb/j2x/WhhIj/KrGptsIr/zlsRi1WHgqkzKUd72E1E2QeTebBhQHzxx
1YneQFMnM5sZFsOgheRfva3NBnpm9vuH4FoYvIuibHiruIE0KSo1TP6GQZU9
ea713jpK1Tt7+hV9OFjH579ndlhHHDvbeTGK4eD1VGgkpfMH+qWqMVR8PRwa
ffZIKv1/oNe55Uc7boXDncgT89eu/EC2KmZWW/rhIPneP4e6cxVVpQzw33U5
jK8akHnWs4LkJMvq2J6Ew4uONz32G0tI28m47wV5BAwc8whRTv6OGnx0TmlR
R0BL+Z7MntF3xBKqdm/9VAQY0Oyy8fF+R8uZcou8bBFAJPDJYrP1G/J/xUSa
KxcBZwJsyWk35tFz5g9y4Q8iQPZgUjTf+iti5HgTwO0eAd4fdbIfS39F3oKt
PV2PIiBM63bYuxNfkYpChe6/iAjgKIy5nFE5h6YJYc7OTyJg/b3nMM3fWUTd
Jl9u+CkCIngYROKfzCDnHqnNvzMRcMc5/eCZzwyaGBaSSVuIADeqinDe2zPo
yeL5N0PbEXDK5E25KOkMwuh351RoIuHPVtNZD5tpRLCsPit2NRL8as/dsA6c
Qm8p2SPIn0VC0VvP9x2GEyiR6yOx+ItIUM73ErfknEDGEOJu3BgJF5xndgJW
xtEvp2WL/15HwrbXejmv9zhi+1QDdtORMOJx/vbxvDHkXaL4q582CjQMchgu
E40i5c5fhL+noyDzGLUJVf8IopssnuO+EAU9tWHH1TNHUDEN1Qc/3iiozhza
oJEZQR/dPpaJKkRBFWfqETfPj0hQydIk2TkKjutIrtNQD6MdI6axDs8o4Dvb
8+Ty7BDq8uhRW/OLAqrfbY+bXg4hvQpBOZWoKPD1kI6dNB5CIad+M+4WRUG/
w90Rq/8G0fRsSK/BaBQ0LB5Bfzw/oATfksucMtHQSvXlg75rP/qp/rvzI0SD
ckSK0JRAP9JkuXorWDka+pgjuY5/60O07dPW37WjYY589cNt3T4UQ8KUXuIQ
De8/5bvmKvaiiKDgPYGiaBiZnLSvl+lBS7eHQ6fKomEM6T7m2HuLrnOxMcRU
R8P+vbf27C1v0fHXzQLrrdHAZ80ePazwFoUc2zasnoiG/uqG+i+336CACLN2
SZoYuPdfkcPjhFdo9t7zm98ZY4DzgHAuwOAVusL/bzzlfAy8prabPMLzChH3
pf/8wxsDKkdeHH/U0o18qQfZG6/GgLKPXLrERhfyioNg3CsGnsNX6RZCJ3JK
OX9D5VvM4XzvdI3xRRtSOXquZHwlBq4NTmSWRbWhcw/OkNttxsD669MRmZZt
yKwoYkaJKBZONH/fjmJuQ5S+oVk2VLEwM+QgIULeigxF/RmeccfCUTMTLvx9
E3pj/bjrN28sGBrX/maJaEKiOX5OIBgLxbkt/nnKTYic0vfDB/FY0Dg5d9aj
oxFVzXtFbcnHwoMZcfN7rQ2IJM2FVEY/Fvay6EpbhusR4b1zrb9RLNy+/V/E
Qlo9GiF1NntnGgvXqgOnM4zqUdnDh+36NrGwXzP9O22lDmmrOvj4usYCje1X
0kHKOvTkn/V2V2wsvAnfK+KzeIGuW+rPq3fHQsRC5fUJ+2pkxSHNb/wmFuyA
2HtNsRoFzjI4Ob473H+9c8vwXDVqMXxPFPchFkS/xM5e7X2ORHSunBucjIXf
kR/nuYWfIyYVHi3tX7Ew/bEyJJm8CkmQkaab78QCSaN+1OTrZ0iza2baeS8W
Ct9fzuR9/AxFQsb9JJI42Dvo4EzarkRE0tThI9RxYPw3LTFkvgJ9v7TVpssd
BxzU/dxvpsvQ0YUBchveOOgWeUVVkl+GWJ5UqHkIHMZbXMunsyhDemxWn9PE
4iA6uEbKa7kU9Z+Z+D2Bx0GfLt0t/4MS9JKiTdBANw465hWzH8gVo8DViEyT
sDhwx5ovptAUoeVgyR81kXGg27t0L3yy8ND/MzhZbBx4dNcP/y4tRCxaknOl
yXHQWfp+T065EDXVT1/aKoiD2p/8chpBBWg7QKIuuCUOSgPGzasZ85H++elj
4+1xoHbwren1Uh7qehmux9cdB7ndIa5KrXkofvHL/vt3cTBupsvnbZOHBNXD
FZnH48DxT/9sRUcusjzz5UPZZhxMOc9N1VHnoL6aMPaDX3HAxmeVJdiZjcRv
irvc2o0D5R2PfT33bETiF8a0TRQPNPPvl/q+ZqGceTEjRB0PLVRv1X90Z6Kx
qtCVAZ54UI0r1619mo6uKYuS/zKIB+F4wyNLU8nI1Lph/aRJPPBfn778tjQZ
eYddmbhkHg+Z9r+2zrslo6p3mhUGtvFAkZK+xU6bjE7fctLqdo2HYW75P0HX
k9C8bm1OYkw8XGA0yXrzIQEdeMiFVcbHw7+iEu/wwgTElNH18E1SPDwbI42q
dktAqpPDV/cy4qH8E0ONyMUEVGOyvWxWHA9H48lyhx7Go8e2klJi7fEgknY9
YoEvDqVHtLDe7IoHnX+jPU+OxqHaciUKq9fxEMe0PNk8GYsWftyZSu+Lh49m
5y03Y2ORupNbIMlEPOzuTZv1/YpB573rBz78jAfj5XXn+NYo9F+UjI0jRwLQ
hs2W3OoMQ9T76Y2e3Anw7HpljmVYGDIl/KUK4k2A3QJD3331MHTiRlN1mnAC
mPwSiy2ZCkX3jqG9DrkECMwvD/lMHIr2/eVjGG4ngDwb10q7YTDS/Jk3c1E3
AZ6Q4MWW/MHoiQmJOO+9BCgZ0ivx2g1CatA5hkwSIC63LvtnShDK2Vdks7ZP
AK8ria93RgORvLvKi4agBODifqOcYxeAkr8Xk3eHJkDGXFjPGB6Alu4c13sf
kQBNk0xUzqcCULxEz8FcXAKI8qw69bb4o7mfN1SoshNAYb40e/W0PwqyV/9k
9DIBtIlPr2Kf/NBb0zvEpN8ToPbjt9NP5H2QdUWgocZSApAY84n/3PFGZH+q
G7NWEyBGqMh9pdobXYk66Sq5lQBaxPWbX7m8UVPdmyUr4kQgu459rmf0QlWU
ssM9ZxOh49kQefwpD6SmYyNy+mIiEPEHVR4ddUereSnRZmyJcG/Oio4q3R3x
Xt5S2eNJhAOmoYfjrO6owKSiWUAyERD989/SUm4o+eXFp7G3EkHiXdnztUcu
SJxY7eikViJQyi0qnrvugoZueJtc0kkElt+FUW8ZXBDNzNjZDoNEiEkNtc6r
dEbhFPGxm7aJsP6G6gjnNyfkY3zU807QIb+jqV897R4i8xOLqucaEkG4jPTu
mxgH9OLzlrxwcyJMj1x8KqzsgMieEV1WbEsE4vLUaPTvPirWYmIlvEqECMeL
2lcf3EcrmcrbjYOJcL2NL3VE3x65CD3JurecCMwiq+ofbtmhV8TV8Q4/EsHR
SKh1idYOMQ03hwRsJMKLNZXJhCFb1OD+8UHZ70Sg82M5Fatriw7ajyr9PZIE
ab6no6hsbFCwttmP9HNJYFEY+5y6wAqNcjnMVV5MAoYu+YpYghXi2fEc62BL
gjnRLtUYSSvUkxXfscSTBMfOl5w8eGeJTn5vT5aRSALV57fuBuxZoFQPFnzi
ZhKonJlxuuJkjkqyJ2OYfZPgSQCp+osqE6SoWhfj4J8EkefbGgmBJmh6Jzam
OygJ6kTvCcTrmiDG24oxDyKTQI5vbp6NxAQFUJRFv01LglOl0qVIzxgZuLtH
edQmwa+J99z/ZAzRH07NqPd1SaDUvhAiu2aAEof4ojgbk2A7Jc9MvNAA9Qh+
ifzQngTvLbPUtGkM0OX5q5GX3ieBmpKvwNmNe4hWkz5ifDEJHrxpnVUcuovK
/62EC60mgS1rlIt7/F2kUvEqPGg9Cd54+j+8qXkXPTrmGS7yOwmamrKdPg7p
ouWW6bCwo8kQtMsyJzqlg7r5KkOlLyZDTXAE0QT1HeRBei04TTsZVK3FflwZ
0URqxH9/fNFJPvTfbkDbU03EsV+uw3UvGeRV6DmqPDTRwBbNpRqTZAj24hOe
uaCJuL+Oveu9nwwO4uadhPsa6GOHNS1RWDLEO2c6KLLeQqUtZzyVIpNBKRLT
6f2pjvwaemcjY5Jh/+dq9FCBOuKvFq5lTk6Ghe/3+zmPqaOAvD93xAqSYYAR
830yfhOJ+IVmWjYnw+zyN9Po7BuIzFuGtKItGcqXxj5d1ruBPrut2G92JoME
vL4RxngDhTrcwv16kuFOdVrF+bjr6Ish02za6GF/Ah/Sp6OuoSismLtvIxki
53mMvAuV0eLu62oxrhR4EkV2WlBOET18pFMjfykFeMXObBpSKaJd4u816vwp
8FLFxvLvlAI6cZzshZ1oCrAKTiGnAAXEf1qxrgClQGtYurnihyvIUaytkV4n
BWoFrvbm+sqjPy/Vm1j1UoBavqTwnI48eizzpUnIIAXSP+EvtwXlUbz8QfMN
sxSQeEIs1vQFUI26XFuAQwrU2Vk3B1wF9MuuvmszJAV4SvjaU68g9GhNuZs4
IgUYohZ+uu1hiNxptPtkdAo4jtws/fMSQ0yev17xJaZAnE7G9zEBDEmHir81
y00BzYs9RKtscsi7sKpvqP4wXreEX+SSDDoyWTxSs5gCXI9EdESzJNGILNns
kdUUqHb7E6liLomK081WtdZToLFMinOVTxKp6V44uvUrBQRJZHc+NUmg1KEE
EfGjqfCRffMW77w44u95FFl7IRVMnghGWKiJoQOezylH2VLhJnWzcud5MfQh
RLpAmzMVRPYGB9JXRZHr1a3/tvhS4YSI8eG3WBS1t9l8F5dOBX6oVDcfEUF3
6rSvvNBKhZhptbwRT2HEw1h9k1QnFah0029e0xBGf51P3r2tlwoC+z6cHDzC
KFe0x2HbOBXqjbXTzlUKoeUKPEvifiqERrVaiTgJIr9C3j8vQlPBjD9d1YiV
H5XEEVW+bE6FOZKRsDvEPEjQXVajvy0VJG4Gtde94Ua1hq5b852pUHnt8tus
WG7Uwrciw9BzyN+O2GWTlRsNdY++dhpJBVpNVprC61xof6dyRngtFbb+zTYx
13Ag/+nFQJWfqaCI9b2S8+dAx15z8Bhvp4LugErYoAYHoktMvx/zNxUWRiIp
NH+yI27B4L+r5GmwxPtbO1CKHWmYGjCUsaSBA7EI69gYKxpRSa3vYE+Drxuv
DCorWZG+0NC9Ca402BlPq/weyIos91TyjwukQdK4+oavKCvyShYXspZOA7PK
EQHBeBZU1ENxjVMzDUgfhboEdF9AO6IN3jkBacBUVmR2J/gMqrfqC30anAad
617a/SpnkHvmdOKzsDQwiPFSGqY4g/6Qkle0xqQBdVIgc1ACM/o9pjX5JSMN
Lo2WR+mUMKHtR6sYS20arFzQtn2+yohqa4iu89SlQdQdr8+u9YzIeYH+jnBD
Gvx5mQd1AYxoS0PmPrSlwa7RH7fCs4xokyMk27g3DYzaPxnQaTCgjR6Wf7lf
0+BHjeCwxgd6VPVPjKLkexoob541Vy6gR47iyqefL6XB8klG06cu9Gg9y16o
fT0NYv40juafpUdrjg1GM3tpcPRTj4M9gQ6tMmq3sTKkg/z9NzbBLLRo0TTk
cf7VdBhkI099nkaFfj60Tl1RSYdPwnRPD9So0J7/tWeSqukQR9quTk5KhWgK
KCZ7NNOBoMfOouhEiaTmYqQ2jdKheqw1RVqXAoWapa4peKbDqy9rJ+KuHEfx
Th5k0T7pcJWXpbKb5DjKDNA7P+aXDkef95Smdx5DVQXnbhBC0kFA7pXjReVj
aHQu90liYjp027er2NwmR1zmJQbzlemg2kYjVRNFioSdw52FqtOBQ7aqW1qH
FMkE2kV4vEiHb4bv9a+xkiK1QoH/qJrSwULktPrBy6PI9evzU5JvD/mVOcWl
LxxB3eYN74Ln0kElUcjrsRkJMrd4J83DlAGJVpdVs4z+YSz7YQvSZzOgInJx
2pfhHzaZqJJy40IG5NfwtdP0HmB3urq37nMcYvqmY5dlDzAV9rZnL4QzoIPz
OpEt6z4mMFPLqXAtA9ilfhWfpvyLLbk7DWurZkDhO/dS7t5d7AmNaIClegbM
pXdz9EfuYizwbDrsdgZoXrAnHT+5i9HllGQMmGSAbO+T2rZzO9gv/WxaQ88M
uPd0dazm1m+seku/zcEnA2rKKI9HMf/GHCLPOjz2y4DkzL5zC7O/sIXG1N7C
4AyYT1ERvuj2C/t0JiFkOT4Dtmp8rR2LtrG2sZB997IMyPLyX8pn2sLCtB8s
JnzOAE/Xz8zLGhtY7Ov9/O9fMsCJ6t6GK+cGliwTri87lwHMiQEWzjvrWCFL
wfvZxcP6xeX5rfnrWOvK8AuR3xkQreZLtbG1hm0HSvm/p82Ergl2dQqvVWzv
d5csO0MmJNx926IltIqR2GlsuzJlwgDX1IjB1xWMRsPW+sLFTLA+eUbj2a0V
jO98ppo9fyb4ltY9pxNdxkxe/DtDoZwJowOs2YqMi5g1T+Sw4fVMsDrX+r7n
4wJ2P4MpuvpmJiw7lB37lbSAeT8WIdbTzgRu1zISCaYFLOWm2fdik0xoO/36
PA/Hd6xv/lWNkncmsGW5QqjuPCbNGK3q/zwT/novsbBcmsV+0vzJyqrNBM2j
pdbu+zNYOYXpWn1dJsRPMklKD85gF4gl49eaM0Enpdp33XsGO7oyOarfkwmi
DTXnz45OYwPtAmaX5zKhPUQug0P2CxbelFKr+S0TGtt2mcjWpzCFOmKy+4uZ
cMHkWGxG0RT2svxjceFaJmTzNdd/opvCMlJ8ftDuHep3hvuP//ZnzNK+z2Pl
VBa47UlPHp+YwFisL78jZ8oCUZYPHLZpE9i4ad459rNZkGOnomdxdwJT1XVp
vcuaBYU/Znq4Po1jogrnSV8LZMFBhS9n5fwYts9kH5unlAWZU+zlmQyjWGIX
5dM77lkQp/qUjXJsCAulUjcx9cqCBzc9K3lLhjDvO3Fn7z/Kgibxpdg6zyHM
fIEhNigwC4Iv+2kwXRzCxCkvetTGZkHjtgPFBGEQG9ISuUFXkgUaz16wh579
gL3KdCK9UJ4FWpf+mz69OYA1zL9ovfTssF5LwTjZuwEs301GXP5FFtCEtB75
5zWAPcxQOO/YngV69GKJfl3vMbq522t941nAWjYrkPGoDyPjTy0Z/5wFNUwh
5uNSfdiu84TZ/Jcs2HGj3mvc7MVmyYzG9uazoEzp7HVru17sOa91O9/PLMCC
linETd9htx56JoSdyAY67uwEXcJbLIY45/JV2WxYIRIyebzYjfVzPtuLR9kw
+5ZiAZ53Y5TXW9un5bMhvOOXVqxHNxYa/+WGt0o2nH73m32cohvzY2cxrrmd
DVK6vPbLkl2Y49W8UFbHbJhmPXP3a1EHVmnz/KaDUza0+/CQHrh0YCtR7XTN
rtmwIWSgGq/UgVmPzGTq+mSDtNtgL+diO2ZixfY8JjwbEoVOcI2KtWOaYQXj
+4XZMKC7vdvR1IrFVtRk3yjOBouUvG4Ru1as/0OnWVpZNqi4hHk8ONOKXT/z
dVW8OhsqBznU7nm1YAplHCSE1mzInkx5mqPUjIn3FfFOjGdDbXpumRhxI8ZA
W+z1kjoH7AWmpN/svMTImpPG3tHmgNDYuk9Kx0vsl3WAxMypHLCWFZtbiniJ
jbUZrlGczYHL/4K4mVleYhmODGYm3Dnwl8784wO1FxjrgP91SsiBY5dtNqg7
ajA6b8enrAo5wG4x3R4fX4OR8BgevayUA+YNzBqhZjXYV1/pFhPVHFgKJzh2
kdVgT4XWRep0D/PXP80206zGBGIMmE0f5MDxOp6TBvtV2AXZG65uzjnAakf4
6j9chVF/lxqKdMsBLpns/BPlVdg6OhVV55MDUy/KxeX0q7CaHz1EVOE54Lx8
U+W8/zNMWk1qoS4/Bwyd7cwML1dgV6no66iGc4Dh+yVblwslmF9i/wWL0Rw4
oRDd9vtzMdZwNjy4aSIH5ntoVTkyizFhXuI7djM5EHEvid3lXDF2Tnlt682P
HIhWaah+xfEU82yzYO44mgt1Xn/lWjSLMKZAhT57slx4POtbeuFsEfZCmfUx
87Fc6Hk73HTyayG23v95wZEiF3aC1f9kuRVilpNa9RfpcmHJpPnllaICTGNX
XsfnYi5EnK9IcWfOx340X6S4xJoL0XheluxSHhb5eL9lmC0XHniMRXg05mGv
jv3Hxc+VC4LfCZdMjPIwudPCvyb4c+Gy0fE7zeW5GI/4hSQpmVyY5NLeuvpf
NkZ0f3dwUzsXyD6GBJ2kT8cadRUbU+4c5jvOv8A/kIa5KkQXyOrmwvUEmbvb
UWnYMhObc8C9XCiVaE33o0jDRjqvMdCb5sI5Sus/GtSpWDlzmo6oQy50yTQX
uoskY1ZH5/ARx1xg+9xRE/AnCWNb4+fxfJgLn1p9/VjakrCUrrY/7S65oBCz
EnJcIwnzd1hI0/DOBdf6D5EPPBIxne7Lnx3DcqFwr+HAci4eo6t63HUqIhd0
Cu96f6+Ox3rT35XXR+aCKEGE/at/PHbF0ciHKDYXGGau7KlyxGP8Z0MuxCbn
QseE858GQhxG8mDE+FlBLihmD86T0Mdiledc5lebcyFU6dhV/XsR2JV3FWku
rbkwq4iK25gjsBGPbzf32w7789Jebx8Lxw5GdF5SduWCuZ2LXpJuOKYWJxPC
15MLLM0PgnWMwrA1UqJLNiO5UFya+Zw+NAQLrJWaXB/NhfFBK/ts9RCMyexB
nPv44fnTeXJVp0MwaJvdCfmcC0fO5p40LwnGYj27e57M5oLfqxzSpcEgTHgt
nPD1Ry5sHIuLM8cCsa6sThbCei4UcViPvacMxHRV94Y3N3LhbVW91bPPAZhf
iT12ZPvQf+8MKF/7BGADZreo2f7mAs375VqZbn/McYyhyog8D6y0l77ctH6M
PW/P3Zy4mAdcojcPZtd9sCUDqAhgzYPeUbHo1XwfjGP3iyU/ex78UjeJ6rjt
gyWLXpzw4coDilbjys5mb8yzIKuNRSAPzIXjHiwle2GKQelRljJ5MLPbe+sM
wQPzYZVRPimXB1RqKTozlzywl83jRPVYHoxJUNpoL7hjPL+YnI/L5wEf6eB/
l63cMSqrFL1y5Tw4rk1p30lww0ZUErl/ah/yQ0Djl+SCnZwXm0m/kwfN99uM
wMAFU3k8lK6gmwfCRzVn4zldsIb/6KiT7uXBS6mx1IU6ZyyHN27rsmke6D5t
VBGcc8KsKaPbfRzyYH6zpmhJ8yG2+z7k3vHwPEhUX0y+fM4BoxRmnEmKyIMC
7Uu+DgP3sYuxhZZsUXkgbvYw2CjoPqZ4q/2BbGwevPda3TfesMeiB3ZD7JPz
wDSkvPe/DwSM7YN97Yf8PPBNNafVrLbFxEX2pA0LD/WgHWhSeGCLKceFty4V
5YFfvHzYkLAtRtB42nOkJA+mYnMjXj+3wV5+mJ6WeJYH2RYbfGMN1ti1QS2q
9MY8CP3+bsNwwRLTF52N52o+1AeXfRZcZYndj3dkqmnJg/jIVClJD0ssXjOK
vbc9D04+2YrkprTEPg++kj54nQeV94t2hKQsMMchaUvT4Tzguf0v6/VTMyx1
+GIr72oeXM3sOsExaYy9uXfG49mPPNhhfVDWV2uM/Zk9JSa+ngeRDx9FjEYa
Yzobx59im3kgdqLS7Rgyxhipt6Jv7eRBQ0L2WuQ1IyxR+Y2hK2k+HHnGTLlM
aoB19Xcw/SXLBznRv/7ubfrY1u3mQd9j+fCd2661zEsf0zKvVgqjyIfnsTsm
+5v3MLrHmYKZtPmw2PKbnH1FD4tpcDxoP58PSos7EiI7uliLvF290sV8cBDN
e2fTrIv9eGPx8B1LPugzULCK+OtiaqN634bZ82F4VqvFkkoXo9xS7P9+6XB/
d1fnGq8OFi7AnE0lmQ9zxHZPBr1vY8G57dhdtXxI9Tl7sd1bE7vHwL5/oJ4P
89UYSYOqJiYcHthUqJEPVRZ+RkLnNbFxJ2XZde18kL39IDC8VQPjV+6TCrmX
DxnyWyenj2tgQ6tjYi+s88F1lQwdWKljxaYym3q2+dDZqqNpxKiOeY9mVBMR
8kHnzXvyxG41jKvdUETVIR/6GTX7HbjUMM/Er4JzLvnAo8Wj+HJDFWORXb9E
G5APiKSAqKn8Orb9TGPxZWA+yDvIKZhaXcd6OGqK9YPz4UMfq00T23XMidqV
uzgsH7aSy84HZVzDXs385cBj86ExY8JCMkkFsw8lZ7HPygePnbOMaU+VsIaP
Fxjf1uXD+dkvlFcwBYxRuZX/c0M+sL3e2sOnr2AP640U1przgRC4E3UQeAXj
y8h1ZOjKh6YWIqLMIXks05jtnclAPgidWR1wCQTsz4eOGeehfLgh80U9SRww
bQWzPyEjh/1ZcngSenGMiquQs/JzPjy6H0PdmoGwR8ucfrsL+dBrJlh5Rl8O
m9B/lUy1kg8dAwUxi4OymGS/ZQXLWj7ouSqVq6nKYmtVTyeUtvNhOVPuoERJ
BjN2vSSRQFwA+vKcVXd0pTAFYoElvjMFYHLZQODdvDgWzvwkPP18ATiOVAof
OItjAyIX+Y6zFoAB1+6bWDJxTN+UlvCNuwD0NOn/5AmLYc6d26u5EgVg88qk
5mKOCNbw6X70SekCYFDpeP8HF8GItr4LPpIrAEPbS4WDs8JYFMeEwz2FArhg
k51pICiMPQlq2WDQKADrzGo/0zoBbCXrcnygdgHIdhuMTzIKYKIvq0Q3dQqg
gqLdrcGDH2v5lu80YFgAP3hzhNSv8WGjyiHb4YQCwAbfMhJTX8IuGBMl7zgU
gKbwKdPsYB7M3N1D0tqpAMomPrcykPBg68V2blc9C6AvmajwNjE3Jtn+9XSt
TwEc8J13IAriwrzHDerZHh/qwTk4eI2CC+vYGNGNCyyA4Y/ML9kTObFjJ27t
/AspgKeKuTf8LnJi/wNJRePr
         "]]}, "\"132 g/mol (Logistic)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "132 g/mol (Logistic)", "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {0, 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox[
      "\"Speed / m s\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\\)]\\)\"", 
       TraditionalForm], 
      FormBox[
      "\"Probability density / m\\!\\(\\*SuperscriptBox[\\(\\), \\(-1\\)]\\) \
s\"", TraditionalForm]}, FrameStyle -> Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Distribution of Speeds at 25 \[Degree]C\"", FontSize -> 34, 
       StripOnInput -> False], TraditionalForm], 
    PlotRange -> {{0, 2500}, {0, 0.0044}}, PlotRangeClipping -> True, 
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
             ImageSize -> {24, 8}], "\"4 g/mol (Gaussian)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"40 g/mol (Gaussian)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"132 g/mol (Gaussian)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"4 g/mol (Logistic)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"40 g/mol (Logistic)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"132 g/mol (Logistic)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
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
 CellChangeTimes->{{3.537379139208259*^9, 3.537379152374867*^9}, 
   3.537379412850094*^9}]
}, Open  ]]
},
WindowSize->{1200, 913},
WindowMargins->{{144, Automatic}, {Automatic, 0}},
Magnification:>FEPrivate`If[
  FEPrivate`Equal[FEPrivate`$VersionNumber, 6.], 0.75, 0.75 Inherited],
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
Cell[1235, 30, 1035, 24, 61, "Input"],
Cell[2273, 56, 109, 2, 23, "Input"],
Cell[2385, 60, 6697, 167, 411, "Code"],
Cell[9085, 229, 1330, 33, 48, "Input"],
Cell[10418, 264, 6155, 149, 495, "Code"],
Cell[16576, 415, 443, 14, 35, "Input"],
Cell[17022, 431, 2688, 84, 184, "Code"],
Cell[19713, 517, 133, 3, 23, "Input"],
Cell[CellGroupData[{
Cell[19871, 524, 1863, 49, 86, "Code"],
Cell[21737, 575, 50727, 869, 613, "Output"]
}, Open  ]],
Cell[72479, 1447, 111, 2, 23, "Input"],
Cell[CellGroupData[{
Cell[72615, 1453, 1866, 50, 86, "Code"],
Cell[74484, 1505, 59849, 1019, 613, "Output"]
}, Open  ]],
Cell[134348, 2527, 443, 14, 35, "Input"],
Cell[CellGroupData[{
Cell[134816, 2545, 1914, 62, 125, "Code"],
Cell[136733, 2609, 2091, 67, 56, "Output"],
Cell[138827, 2678, 546, 11, 18, "Message"],
Cell[139376, 2691, 125, 2, 23, "Output"],
Cell[139504, 2695, 5962, 179, 190, "Output"]
}, Open  ]],
Cell[145481, 2877, 196, 4, 23, "Input"],
Cell[CellGroupData[{
Cell[145702, 2885, 2387, 68, 154, "Code"],
Cell[148092, 2955, 31484, 540, 613, "Output"]
}, Open  ]],
Cell[179591, 3498, 284, 6, 23, "Input"],
Cell[179878, 3506, 1324, 37, 103, "Code"],
Cell[181205, 3545, 251, 6, 23, "Input"],
Cell[CellGroupData[{
Cell[181481, 3555, 2333, 60, 112, "Code"],
Cell[183817, 3617, 69533, 1189, 613, "Output"]
}, Open  ]],
Cell[253365, 4809, 232, 6, 23, "Input"],
Cell[CellGroupData[{
Cell[253622, 4819, 2367, 62, 151, "Code"],
Cell[255992, 4883, 82846, 1407, 613, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature svpOA#sYXkMUHAwhyuX@yZS9 *)
