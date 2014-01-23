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
NotebookDataLength[    734575,      16883]
NotebookOptionsPosition[    721670,      16529]
NotebookOutlinePosition[    722026,      16545]
CellTagsIndexPosition[    721983,      16542]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Create", " ", "plots", " ", "of", " ", "thermodynamic", " ", 
    RowBox[{"functions", "."}]}], " ", "*)"}], "\n", 
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
    RowBox[{"References", ":", "\n", 
     RowBox[{"1.", " ", 
      RowBox[{"KayeLabyOnline2005", ":", " ", 
       RowBox[{"\"\<Tables of Physical & Chemical Constants\>\"", " ", 
        RowBox[{"(", 
         RowBox[{"16", "th", " ", "edition", " ", "1995"}], ")"}]}]}]}]}], 
    ",", " ", 
    RowBox[{
     RowBox[{"Kaye", " ", "&"}], " ", "Laby", " ", 
     RowBox[{"Online", ".", " ", "Version"}], " ", "1.0"}], ",", " ", 
    RowBox[{"www", ".", "kayelaby", ".", "npl", ".", "co", ".", "uk"}], ",", 
    " ", 
    RowBox[{"2005.", "\n", "2.", " ", 
     RowBox[{"Larminie2003", ":", " ", 
      RowBox[{
       RowBox[{"J", ".", " ", "Larminie"}], " ", "and", " ", 
       RowBox[{"A", ".", " ", "Dicks"}]}]}]}], ",", " ", 
    RowBox[{"Fuel", " ", "Cell", " ", "Systems", " ", "Explained"}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"New", " ", 
       RowBox[{"York", ":", " ", 
        RowBox[{"John", " ", "Wiley"}]}]}], " ", "&"}], " ", "Sons"}], ",", 
    " ", 
    RowBox[{"2003.", "\n", " ", "3.", " ", 
     RowBox[{"McBride2002", ":", " ", 
      RowBox[{"B", ".", "J", ".", " ", "McBride"}]}]}], ",", " ", 
    RowBox[{"M", ".", "J", ".", " ", "Zehe"}], ",", " ", 
    RowBox[{"and", " ", 
     RowBox[{"S", ".", " ", "Gordon"}]}], ",", " ", 
    RowBox[{
     RowBox[{
     "\"\<NASA Glenn Coefficients for Calculating Thermodynamic Properties of \
Individual Species,\>\"", " ", "NASA", " ", "report", " ", "TP"}], "-", 
     "2002", "-", "211556"}], ",", " ", 
    RowBox[{"2002.", "\n", " ", "4.", " ", 
     RowBox[{"Moran2004", ":", " ", 
      RowBox[{
       RowBox[{"M", ".", "J", ".", " ", "Moran"}], " ", "and", " ", 
       RowBox[{"H", ".", "N", ".", "Shapiro"}]}]}]}], ",", " ", 
    RowBox[{
    "Fundamentals", " ", "of", " ", "Engineering", " ", "Thermodynamics"}], 
    ",", " ", 
    RowBox[{"5", "th", " ", 
     RowBox[{"ed", ".", " ", "Hoboken"}]}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"NJ", ":", " ", 
       RowBox[{"John", " ", "Wiley"}]}], " ", "&"}], " ", "Sons"}], ",", " ", 
    
    RowBox[{"Inc", "."}], ",", " ", 
    RowBox[{"2004.", "\n", " ", "5.", " ", 
     RowBox[{"Moran2008", ":", " ", 
      RowBox[{
       RowBox[{"M", ".", "J", ".", " ", "Moran"}], " ", "and", " ", 
       RowBox[{"H", ".", "N", ".", "Shapiro"}]}]}]}], ",", " ", 
    RowBox[{
    "Fundamentals", " ", "of", " ", "Engineering", " ", "Thermodynamics"}], 
    ",", " ", 
    RowBox[{"6", "th", " ", 
     RowBox[{"ed", ".", " ", "Hoboken"}]}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"NJ", ":", " ", 
       RowBox[{"John", " ", "Wiley"}]}], " ", "&"}], " ", "Sons"}], ",", " ", 
    
    RowBox[{"Inc", "."}], ",", " ", 
    RowBox[{"2008.", "\n", " ", "6.", " ", 
     RowBox[{"NIST2009", ":", " ", 
      RowBox[{
      "National", " ", "Institute", " ", "of", " ", "Standards", " ", "and", 
       " ", "Technology", " ", 
       RowBox[{"(", "NIST", ")"}]}]}]}], ",", " ", 
    "\"\<Fundamental Physical Constants --- Complete Listing\>\"", ",", " ", 
    RowBox[{
     RowBox[{"http", ":"}], "//", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"physics", ".", "nist", ".", "gov"}], "/", "cuu"}], "/", 
        "Constants"}], "/", "Table"}], "/", 
      RowBox[{"allascii", ".", "txt"}]}]}], ",", " ", 
    RowBox[{"accessed", " ", "June", " ", "26", " ", "2009."}]}], "\n", 
   "*)"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Default", " ", "plot", " ", "options"}], " ", "*)"}]], "Input"],

Cell[BoxData[{
 RowBox[{
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
     "]"}], ";"}], " ", 
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
     RowBox[{"matplotlib", "."}]}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"10", "/", "2"}], "/", "11"}], ":", " ", 
    RowBox[{
    "ImageSize", " ", "needs", " ", "to", " ", "be", " ", "large", " ", 
     "enough", " ", "so", " ", "that", " ", "the", " ", "PNGs", " ", "are", 
     " ", "exported", " ", "with", " ", "sufficient", " ", 
     RowBox[{"quality", "."}]}]}], " ", "*)"}]}]}], "Code",
 CellChangeTimes->{{3.537377375050237*^9, 3.537377375241129*^9}, {
   3.537377549614291*^9, 3.537377552990481*^9}, {3.537377725801997*^9, 
   3.537377753215471*^9}, 3.537377787482589*^9, {3.537377900280408*^9, 
   3.537377909709724*^9}, {3.537377951970176*^9, 3.537377954976703*^9}, {
   3.537378079020434*^9, 3.537378079353635*^9}, {3.537378320738255*^9, 
   3.537378340579532*^9}, 3.537378987557321*^9}],

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
 CellChangeTimes->{
  3.537377614326987*^9, 3.537377835354812*^9, {3.537378106198414*^9, 
   3.53737816139043*^9}, 3.53737820364699*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "Units", " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"See", " ", 
    RowBox[{"FCSys", "/", 
     RowBox[{"Units", ".", "mo", "."}]}]}], " ", "*)"}]}]], "Input"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Us", ":=", "1"}], ";"}], " ", 
  RowBox[{"(*", " ", "second", " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Um", ":=", "1*^-3"}], ";"}], " ", 
  RowBox[{"(*", " ", "meter", " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"US", ":=", "1*^3"}], ";"}], " ", 
  RowBox[{"(*", " ", "siemen", " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"UWb", ":=", "1*^-3"}], ";"}], " ", 
  RowBox[{"(*", " ", "weber", " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"UC", ":=", 
    RowBox[{"UWb", "*", "US"}]}], ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"coulomb", ";", " ", 
    RowBox[{"C", " ", 
     RowBox[{"can", "'"}], "t", " ", "be", " ", "used", " ", "because", " ", 
     "it", " ", "is", " ", "a", " ", "protected", " ", "symbol", " ", "in", 
     " ", 
     RowBox[{"Mathematica", "."}]}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"UV", ":=", 
    RowBox[{"UWb", "/", "Us"}]}], ";"}], " ", 
  RowBox[{"(*", " ", "volt", " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"UJ", ":=", 
    RowBox[{"UV", "*", "UC"}]}], ";"}], " ", 
  RowBox[{"(*", " ", "joule", " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Umol", ":=", 
    RowBox[{"96485.3399", "UC"}]}], ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"mol", ";", " ", 
    RowBox[{"from", " ", "\"\<Faraday constant,\>\"", " ", "NIST2009"}]}], 
   " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"meminus", ":=", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"10973731.568527", "/", "Um"}], ")"}], "*", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"25812.807557", "/", 
        RowBox[{"(", 
         RowBox[{"299792458", "Pi", "*", "1*^-7"}], ")"}]}], ")"}], "^", 
      "2"}], "*", "Us", "*", 
     RowBox[{"UWb", "/", 
      RowBox[{"(", 
       RowBox[{"483597.891*^9", "Um", "*", "299792458"}], ")"}]}]}]}], ";"}], 
  " ", 
  RowBox[{"(*", " ", 
   RowBox[{"specific", " ", "mass", " ", "of", " ", "electrons"}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"kB", ":=", "meminus"}], ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"Boltzmann", " ", "constant"}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"R", ":=", "meminus"}], ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"gas", " ", "constant"}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"UK", ":=", 
    RowBox[{"1.3806504*^-23", "*", "25812.807557", "*", "483597.891*^9", 
     RowBox[{"UV", "/", 
      RowBox[{"(", 
       RowBox[{"2", "kB"}], ")"}]}]}]}], ";"}], " ", 
  RowBox[{"(*", " ", "kelvin", " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"USv", ":=", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"Um", "/", "Us"}], ")"}], "^", "2"}]}], ";"}], " ", 
  RowBox[{"(*", " ", "Sv", " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Ukg", ":=", 
    RowBox[{"UJ", "/", "USv"}]}], ";"}], " ", 
  RowBox[{"(*", " ", "kg", " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"UPa", ":=", 
    RowBox[{"UJ", "/", 
     RowBox[{"Um", "^", "3"}]}]}], ";"}], " ", 
  RowBox[{"(*", " ", "Pa", " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"UkPa", ":=", 
    RowBox[{"1000", "UPa"}]}], ";"}], " ", 
  RowBox[{"(*", " ", "kPa", " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Ubar", ":=", 
    RowBox[{"100", "UkPa"}]}], ";"}], " ", 
  RowBox[{"(*", " ", "bar", " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Uatm", ":=", 
    RowBox[{"101325", "UPa"}]}], ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"atm", ";", " ", 
    RowBox[{"value", " ", "from", " ", 
     RowBox[{"\"\<standard atmosphere,\>\"", " ", "[", 
      RowBox[{"NIST", " ", "2009"}], "]"}]}]}], " ", "*)"}]}]}], "Code"],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Dummy", " ", "variables"}], " ", "*)"}]], "Input"],

Cell[BoxData[{
 RowBox[{"a", ":=", 
  RowBox[{"{", 
   RowBox[{
   "a1", ",", "a2", ",", "a3", ",", "a4", ",", "a5", ",", "a6", ",", "a7"}], 
   "}"}]}], "\n", 
 RowBox[{"b", ":=", 
  RowBox[{"{", 
   RowBox[{"b1", ",", "b2"}], "}"}]}]}], "Code"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "McBride2002", " ", "gas", " ", "data", " ", "for", " ", "e\[Null]"}], 
    "-", " ", 
    RowBox[{
    "over", " ", "the", " ", "lower", " ", "temperature", " ", "range", " ", 
     RowBox[{"(", 
      RowBox[{"200", " ", "K", " ", "to", " ", "1000", " ", "K"}], ")"}]}]}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Note", ":", "  ", 
     RowBox[{
     "The", " ", "numbers", " ", "for", " ", "hf0", " ", "and", " ", 
      "Deltah0eminus", " ", "are", " ", "from", " ", "Modelica"}]}], ",", " ", 
    RowBox[{
    "where", " ", "the", " ", "values", " ", "from", " ", "McBride", " ", 
     "et", " ", 
     RowBox[{"al", ".", " ", "have"}], " ", "been", " ", "divided", " ", "by",
      " ", "the", " ", "specific", " ", 
     RowBox[{"mass", ".", "  ", "Here"}]}], ",", " ", 
    RowBox[{
     RowBox[{
     "where", " ", "R", " ", "is", " ", "interpreted", " ", "as", " ", "the", 
      " ", "specific", " ", "mass", " ", "of", " ", "e"}], "-"}], ",", " ", 
    RowBox[{
     RowBox[{
     "hf0", " ", "and", " ", "Deltah0", " ", "are", " ", "specific", " ", 
      "energies", " ", "of", " ", "the", " ", "species", " ", "on", " ", 
      "the", " ", "mass", " ", "basis", " ", "of", " ", "e"}], "-", " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"not", " ", "of", " ", "the", " ", "species", " ", "itself"}], 
       ")"}], "."}]}]}], " ", "*)"}]}]], "Input",
 CellChangeTimes->{{3.537512001890216*^9, 3.537512068587951*^9}, {
  3.53751245337573*^9, 3.537512686237394*^9}}],

Cell[BoxData[{
 RowBox[{
  RowBox[{"meminus", ":=", 
   RowBox[{"5.48579903*^-7", 
    RowBox[{"Ukg", "/", "Umol"}]}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "Mass", " ", "per", " ", "unit", " ", "number", " ", "of", " ", 
    "particles"}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"aeminus", ":=", 
   RowBox[{"{", 
    RowBox[{
    "0", ",", "0", ",", "2.5", ",", "0", ",", "0", ",", "0", ",", "0"}], 
    "}"}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Sv", "^", "2"}], ",", " ", 
      RowBox[{"Sv", "^", "1"}], ",", " ", "1", ",", " ", 
      RowBox[{"Sv", "^", 
       RowBox[{"-", "1"}]}], ",", " ", 
      RowBox[{"Sv", "^", 
       RowBox[{"-", "2"}]}], ",", " ", 
      RowBox[{"Sv", "^", 
       RowBox[{"-", "3"}]}], ",", " ", 
      RowBox[{"Sv", "^", 
       RowBox[{"-", "4"}]}]}], "}"}], ";", " ", 
    RowBox[{
    "Coefficients", " ", "for", " ", "dimensionless", " ", "heat", " ", 
     "capacity", " ", 
     RowBox[{"(", 
      RowBox[{
      "molar", " ", "heat", " ", "capacity", " ", "per", " ", "gas", " ", 
       "constant"}], ")"}], " ", "at", " ", "1", " ", "bar"}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"beminus", ":=", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"-", "745.375"}], "UK"}], ",", 
      RowBox[{"-", "11.72081224"}]}], "}"}], "-", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"aeminus", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"aeminus", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], "}"}], 
     RowBox[{"Log", "[", "UK", "]"}]}]}]}], "  ", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"Sv", ",", " ", "1"}], "}"}], ";", " ", 
    RowBox[{
    "Integration", " ", "constants", " ", "for", " ", "enthalpy", " ", "and", 
     " ", "entropy"}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"hf0eminus", ":=", 
   RowBox[{"0", "USv", "*", 
    RowBox[{"meminus", "/", "R"}]}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "Enthalpy", " ", "of", " ", "formation", " ", "at", " ", "298.15", " ", 
    "K"}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"Deltah0eminus", ":=", 
   RowBox[{"11297220270.20738", "USv", "*", 
    RowBox[{"meminus", "/", "R"}]}]}], 
  RowBox[{"(*", " ", 
   RowBox[{
   "Enthalpy", " ", "at", " ", "298", " ", "K", " ", "minus", " ", "the", " ",
     "enthalpy", " ", "at", " ", "0", " ", "K"}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Units", " ", "and", " ", "descriptions", " ", "are", " ", "the", " ", 
    "same", " ", "for", " ", "the", " ", "other", " ", "species", " ", 
    RowBox[{"below", "."}]}], " ", "*)"}]}]}], "Code",
 CellChangeTimes->{{3.537511364301081*^9, 3.53751136570554*^9}, {
  3.537511943559867*^9, 3.53751194637292*^9}, {3.537512442401361*^9, 
  3.537512446667623*^9}, {3.537512693889352*^9, 3.537512697228336*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "McBride2002", " ", "gas", " ", "data", " ", "for", " ", "H", " ", "over", 
   " ", "the", " ", "lower", " ", "temperature", " ", "range", " ", 
   RowBox[{"(", 
    RowBox[{"200", " ", "to", " ", "1000", " ", "K"}], ")"}]}], " ", 
  "*)"}]], "Input"],

Cell[BoxData[{
 RowBox[{"mH", ":=", 
  RowBox[{"0.00100794", 
   RowBox[{"Ukg", "/", "Umol"}]}]}], "\n", 
 RowBox[{"aH", ":=", 
  RowBox[{"{", 
   RowBox[{
   "0", ",", "0", ",", "2.5", ",", "0", ",", "0", ",", "0", ",", "0"}], 
   "}"}]}], "\n", 
 RowBox[{
  RowBox[{"bH", ":=", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"25473.70801", "UK"}], ",", 
      RowBox[{"-", "0.446682853"}]}], "}"}], "-", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"aH", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"aH", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], "}"}], 
     RowBox[{"Log", "[", "UK", "]"}]}]}]}], " "}], "\n", 
 RowBox[{"hf0H", ":=", 
  RowBox[{"216281552.4733615", "USv", "*", 
   RowBox[{"mH", "/", "R"}]}]}], "\n", 
 RowBox[{"Deltah0H", ":=", 
  RowBox[{"6148608.052066591", "USv", "*", 
   RowBox[{"mH", "/", "R"}]}]}]}], "Code",
 CellChangeTimes->{{3.537511353127289*^9, 3.537511360948537*^9}, {
  3.53751194849258*^9, 3.537511951067097*^9}, {3.537512699422948*^9, 
  3.537512708664138*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{"McBride2002", " ", "gas", " ", "data", " ", "for", " ", "H"}], 
   "+", " ", 
   RowBox[{
   "over", " ", "the", " ", "lower", " ", "temperature", " ", "range", " ", 
    RowBox[{"(", 
     RowBox[{"200", " ", "to", " ", "1000", " ", "K"}], ")"}]}]}], " ", 
  "*)"}]], "Input"],

Cell[BoxData[{
 RowBox[{"mHplus", ":=", 
  RowBox[{"0.0010073914", 
   RowBox[{"Ukg", "/", "Umol"}]}]}], "\n", 
 RowBox[{"aHplus", ":=", 
  RowBox[{"{", 
   RowBox[{
   "0", ",", "0", ",", "2.5", ",", "0", ",", "0", ",", "0", ",", "0"}], 
   "}"}]}], "\n", 
 RowBox[{
  RowBox[{"bHplus", ":=", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"184021.4877", "UK"}], ",", 
      RowBox[{"-", "1.140646644"}]}], "}"}], "-", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"aHplus", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"aHplus", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], "}"}], 
     RowBox[{"Log", "[", "UK", "]"}]}]}]}], " "}], "\n", 
 RowBox[{"hf0Hplus", ":=", 
  RowBox[{"1524974233.450872", "USv", "*", 
   RowBox[{"mHplus", "/", "R"}]}]}], "\n", 
 RowBox[{"Deltah0Hplus", ":=", 
  RowBox[{"6151956.429248851", "USv", "*", 
   RowBox[{"mHplus", "/", "R"}]}]}]}], "Code",
 CellChangeTimes->{{3.537511334896462*^9, 3.537511339355286*^9}, {
  3.537511369370456*^9, 3.537511370522667*^9}, {3.537511874722262*^9, 
  3.537511878741826*^9}, {3.537511924452392*^9, 3.537511953644538*^9}, {
  3.537512711508929*^9, 3.537512720563849*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{
   "McBride2002", " ", "gas", " ", "data", " ", "for", " ", "H\[Null]"}], "-",
    " ", 
   RowBox[{
   "over", " ", "the", " ", "lower", " ", "temperature", " ", "range", " ", 
    RowBox[{"(", 
     RowBox[{"200", " ", "to", " ", "1000", " ", "K"}], ")"}]}]}], " ", 
  "*)"}]], "Input"],

Cell[BoxData[{
 RowBox[{"mHminus", ":=", 
  RowBox[{"0.0010084886", 
   RowBox[{"Ukg", "/", "Umol"}]}]}], "\n", 
 RowBox[{"aHminus", ":=", 
  RowBox[{"{", 
   RowBox[{
   "0", ",", "0", ",", "2.5", ",", "0", ",", "0", ",", "0", ",", "0"}], 
   "}"}]}], "\n", 
 RowBox[{
  RowBox[{"bHminus", ":=", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"15976.15494", "UK"}], ",", 
      RowBox[{"-", "1.139013868"}]}], "}"}], "-", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"aHminus", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"aHminus", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], "}"}], 
     RowBox[{"Log", "[", "UK", "]"}]}]}]}], " "}], "\n", 
 RowBox[{"hf0Hminus", ":=", 
  RowBox[{"137861080.4326395", "USv", "*", 
   RowBox[{"mHminus", "/", "R"}]}]}], "\n", 
 RowBox[{"Deltah0Hminus", ":=", 
  RowBox[{"6145263.317800519", "USv", "*", 
   RowBox[{"mHminus", "/", "R"}]}]}]}], "Code",
 CellChangeTimes->{{3.537511371712135*^9, 3.537511372672413*^9}, {
  3.537511958254569*^9, 3.537511969065485*^9}, {3.53751272370601*^9, 
  3.537512732105175*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "McBride2002", " ", "gas", " ", "data", " ", "for", " ", "H\[Null]2", " ", 
   "over", " ", "the", " ", "lower", " ", "temperature", " ", "range", " ", 
   RowBox[{"(", 
    RowBox[{"200", " ", "to", " ", "1000", " ", "K"}], ")"}]}], " ", 
  "*)"}]], "Input"],

Cell[BoxData[{
 RowBox[{"mH2", ":=", 
  RowBox[{"0.001501588", 
   RowBox[{"Ukg", "/", "Umol"}]}]}], "\n", 
 RowBox[{"aH2", ":=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"40783.2321", 
     RowBox[{"UK", "^", "2"}]}], ",", 
    RowBox[{
     RowBox[{"-", "800.918604"}], "UK"}], ",", "8.21470201", ",", 
    RowBox[{
     RowBox[{"-", "0.01269714457"}], "/", "UK"}], ",", 
    RowBox[{"1.753605076*^-5", "/", 
     RowBox[{"UK", "^", "2"}]}], ",", 
    RowBox[{
     RowBox[{"-", "1.20286027*^-8"}], "/", 
     RowBox[{"UK", "^", "3"}]}], ",", 
    RowBox[{"3.36809349*^-12", "/", 
     RowBox[{"UK", "^", "4"}]}]}], "}"}]}], "\n", 
 RowBox[{"bH2", ":=", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"2682.484665", "UK"}], ",", 
     RowBox[{"-", "30.43788844"}]}], "}"}], "-", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"aH2", "[", 
       RowBox[{"[", "2", "]"}], "]"}], ",", 
      RowBox[{"aH2", "[", 
       RowBox[{"[", "3", "]"}], "]"}]}], "}"}], 
    RowBox[{"Log", "[", "UK", "]"}]}]}]}], "\n", 
 RowBox[{"hf0H2", ":=", 
  RowBox[{"0", "USv", "*", 
   RowBox[{"mH2", "/", "R"}]}]}], "\n", 
 RowBox[{"Deltah0H2", ":=", 
  RowBox[{"4200697.46215052", "USv", "*", 
   RowBox[{"mH2", "/", "R"}]}]}]}], "Code",
 CellChangeTimes->{{3.537511374826991*^9, 3.537511378681309*^9}, {
  3.53751197101077*^9, 3.537511975013818*^9}, {3.537512734089459*^9, 
  3.537512742485626*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "McBride2002", " ", "gas", " ", "data", " ", "for", " ", "H\[Null]2O", " ", 
   "over", " ", "the", " ", "lower", " ", "temperature", " ", "range", " ", 
   RowBox[{"(", 
    RowBox[{"200", " ", "to", " ", "1000", " ", "K"}], ")"}]}], " ", 
  "*)"}]], "Input"],

Cell[BoxData[{
 RowBox[{"mH2O", ":=", 
  RowBox[{"0.01801528", 
   RowBox[{"Ukg", "/", "Umol"}]}]}], "\n", 
 RowBox[{"aH2O", ":=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "39479.6083"}], 
     RowBox[{"UK", "^", "2"}]}], ",", 
    RowBox[{"575.573102", "UK"}], ",", "0.931782653", ",", 
    RowBox[{"0.00722271286", "/", "UK"}], ",", 
    RowBox[{
     RowBox[{"-", "7.34255737*^-6"}], "/", 
     RowBox[{"UK", "^", "2"}]}], ",", 
    RowBox[{"4.95504349*^-9", "/", 
     RowBox[{"UK", "^", "3"}]}], ",", 
    RowBox[{
     RowBox[{"-", "1.336933246*^-12"}], "/", 
     RowBox[{"UK", "^", "4"}]}]}], "}"}]}], "\n", 
 RowBox[{
  RowBox[{"bH2O", ":=", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"-", "33039.7431"}], "UK"}], ",", "17.24205775"}], "}"}], "-", 
    
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"aH2O", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"aH2O", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], "}"}], 
     RowBox[{"Log", "[", "UK", "]"}]}]}]}], " "}], "\n", 
 RowBox[{"hf0H2O", ":=", 
  RowBox[{
   RowBox[{"-", "13423382.8172529"}], "USv", "*", 
   RowBox[{"mH2O", "/", "R"}]}]}], "\n", 
 RowBox[{"Deltah0H2O", ":=", 
  RowBox[{"549760.647628014", "USv", "*", 
   RowBox[{"mH2O", "/", "R"}]}]}]}], "Code",
 CellChangeTimes->{{3.537511376076102*^9, 3.537511377556666*^9}, {
  3.537511977888771*^9, 3.53751198122473*^9}, {3.537512744588256*^9, 
  3.537512751231081*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "McBride2002", " ", "liquid", " ", "data", " ", "for", " ", "H\[Null]2O", 
   " ", "over", " ", "the", " ", "lower", " ", "temperature", " ", "range", 
   " ", 
   RowBox[{"(", 
    RowBox[{"273.15", " ", "to", " ", "373.15", " ", "K"}], ")"}]}], " ", 
  "*)"}]], "Input"],

Cell[BoxData[{
 RowBox[{"aH2Ol", ":=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"1.326371304*^9", 
     RowBox[{"UK", "^", "2"}]}], ",", 
    RowBox[{
     RowBox[{"-", "2.448295388*^7"}], "UK"}], ",", "1.879428776*^5", ",", 
    RowBox[{
     RowBox[{"-", "7.678995050*^2"}], "/", "UK"}], ",", 
    RowBox[{"1.761556813", "/", 
     RowBox[{"UK", "^", "2"}]}], " ", ",", 
    RowBox[{
     RowBox[{"-", "2.151167128*^-3"}], "/", 
     RowBox[{"UK", "^", "3"}]}], ",", 
    RowBox[{"1.092570813*^-6", "/", 
     RowBox[{"UK", "^", "4"}]}]}], "}"}]}], "\n", 
 RowBox[{
  RowBox[{"bH2Ol", ":=", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"1.101760476*^8", "UK"}], ",", 
      RowBox[{"-", "9.779700970*^5"}]}], "}"}], "-", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"aH2Ol", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"aH2Ol", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], "}"}], 
     RowBox[{"Log", "[", "UK", "]"}]}]}]}], " "}], "\n", 
 RowBox[{"hf0H2Ol", ":=", 
  RowBox[{
   RowBox[{"-", "285830.000"}], "USv", "*", 
   RowBox[{"mH2O", "/", "R"}]}]}], "\n", 
 RowBox[{"Deltah0H2Ol", ":=", 
  RowBox[{"13278.000", "USv", "*", 
   RowBox[{"mH2O", "/", "R"}]}]}]}], "Code",
 CellChangeTimes->{{3.537511383541587*^9, 3.53751138458595*^9}, {
  3.537511984298839*^9, 3.53751198632918*^9}, {3.53751275353303*^9, 
  3.537512757506139*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{
   "McBride2002", " ", "gas", " ", "data", " ", "for", " ", "H\[Null]3O"}], 
   "+", " ", 
   RowBox[{
   "over", " ", "the", " ", "lower", " ", "temperature", " ", "range", " ", 
    RowBox[{"(", 
     RowBox[{"200", " ", "to", " ", "1000", " ", "K"}], ")"}]}]}], " ", 
  "*)"}]], "Input"],

Cell[BoxData[{
 RowBox[{"mH3Oplus", ":=", 
  RowBox[{"0.0190226714", 
   RowBox[{"Ukg", "/", "Umol"}]}]}], "\n", 
 RowBox[{"aH3Oplus", ":=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "64476.4015"}], 
     RowBox[{"UK", "^", "2"}]}], ",", 
    RowBox[{"1181.817922", "UK"}], ",", 
    RowBox[{"-", "3.80189306"}], ",", 
    RowBox[{"0.02220628313", "/", "UK"}], ",", 
    RowBox[{
     RowBox[{"-", "2.445343237*^-5"}], "/", 
     RowBox[{"UK", "^", "2"}]}], ",", 
    RowBox[{"1.573297747*^-8", "/", 
     RowBox[{"UK", "^", "3"}]}], ",", 
    RowBox[{
     RowBox[{"-", "4.15883641*^-12"}], "/", 
     RowBox[{"UK", "^", "4"}]}]}], "}"}]}], "\n", 
 RowBox[{
  RowBox[{"bH3Oplus", ":=", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"65306.1332", "UK"}], ",", "42.8272313"}], "}"}], "-", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"aH3Oplus", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"aH3Oplus", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], "}"}], 
     RowBox[{"Log", "[", "UK", "]"}]}]}]}], " "}], "\n", 
 RowBox[{"hf0H3Oplus", ":=", 
  RowBox[{"31436173.57549476", "USv", "*", 
   RowBox[{"mH3Oplus", "/", "R"}]}]}], "\n", 
 RowBox[{"Deltah0H3Oplus", ":=", 
  RowBox[{"6148608.052066591", "USv", "*", 
   RowBox[{"mH3Oplus", "/", "R"}]}]}]}], "Code",
 CellChangeTimes->{{3.537511385724592*^9, 3.53751141152243*^9}, {
  3.537511989171919*^9, 3.537511991021124*^9}, {3.537512759662301*^9, 
  3.537512769064382*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "McBride2002", " ", "gas", " ", "data", " ", "for", " ", "O2", " ", "over", 
   " ", "the", " ", "lower", " ", "temperature", " ", "range", " ", 
   RowBox[{"(", 
    RowBox[{"200", " ", "to", " ", "1000", " ", "K"}], ")"}]}], " ", 
  "*)"}]], "Input"],

Cell[BoxData[{
 RowBox[{"mO2", ":=", 
  RowBox[{"0.0319988", 
   RowBox[{"Ukg", "/", "Umol"}]}]}], "\n", 
 RowBox[{"aO2", ":=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "34255.6342"}], 
     RowBox[{"UK", "^", "2"}]}], ",", 
    RowBox[{"484.700097", "UK"}], ",", "1.119010961", ",", 
    RowBox[{"0.00429388924", "/", "UK"}], ",", 
    RowBox[{
     RowBox[{"-", "6.83630052*^-7"}], "/", 
     RowBox[{"UK", "^", "2"}]}], ",", 
    RowBox[{
     RowBox[{"-", "2.0233727*^-9"}], "/", 
     RowBox[{"UK", "^", "3"}]}], ",", 
    RowBox[{"1.039040018*^-12", "/", 
     RowBox[{"UK", "^", "4"}]}]}], "}"}]}], "\n", 
 RowBox[{
  RowBox[{"bO2", ":=", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"-", "3391.45487"}], "UK"}], ",", "18.4969947"}], "}"}], "-", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"aO2", "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", 
       RowBox[{"aO2", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], "}"}], 
     RowBox[{"Log", "[", "UK", "]"}]}]}]}], " "}], "\n", 
 RowBox[{"hf0O2", ":=", 
  RowBox[{"0", "USv", "*", 
   RowBox[{"mO2", "/", "R"}]}]}], "\n", 
 RowBox[{"Deltah0O2", ":=", 
  RowBox[{"271263.422378339", "USv", "*", 
   RowBox[{"mO2", "/", "R"}]}]}]}], "Code",
 CellChangeTimes->{{3.537377955381645*^9, 3.537377959530904*^9}, {
  3.537511390222537*^9, 3.537511390980102*^9}, {3.537511993981854*^9, 
  3.537511997009704*^9}, {3.537512771168651*^9, 3.537512779933164*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Heat", " ", "capacity", " ", "functions", " ", "at", " ", "1", " ", "bar",
     " ", "from", " ", "McBride2002"}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"Each", " ", "is", " ", 
    RowBox[{"dimensionless", ".", " ", "T"}], " ", "is", " ", "temperature", 
    " ", "times", " ", "number", " ", "per", " ", "unit", " ", 
    RowBox[{"mass", "--"}], "the", " ", "square", " ", "of", " ", "thermal", 
    " ", 
    RowBox[{"velocity", "."}]}], " ", "*)"}]}]], "Input"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"cp0", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"a", "[", 
     RowBox[{"[", "1", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "2"}]}]}], "+", 
   RowBox[{
    RowBox[{"a", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{"a", "[", 
    RowBox[{"[", "3", "]"}], "]"}], "+", 
   RowBox[{
    RowBox[{"a", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"a", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{"T", "^", "2"}]}], "+", 
   RowBox[{
    RowBox[{"a", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{"T", "^", "3"}]}], "+", 
   RowBox[{
    RowBox[{"a", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{"T", "^", "4"}]}]}]}], "\n", 
 RowBox[{
  RowBox[{"cp0eminus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "1", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "2"}]}]}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{"aeminus", "[", 
    RowBox[{"[", "3", "]"}], "]"}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{"T", "^", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{"T", "^", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{"T", "^", "4"}]}]}]}], "\n", 
 RowBox[{
  RowBox[{"cp0H", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "1", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "2"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{"aH", "[", 
    RowBox[{"[", "3", "]"}], "]"}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{"T", "^", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{"T", "^", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{"T", "^", "4"}]}]}]}], "\n", 
 RowBox[{
  RowBox[{"cp0Hplus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "1", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "2"}]}]}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{"aHplus", "[", 
    RowBox[{"[", "3", "]"}], "]"}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{"T", "^", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{"T", "^", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{"T", "^", "4"}]}]}]}], "\n", 
 RowBox[{
  RowBox[{"cp0Hminus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "1", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "2"}]}]}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{"aHminus", "[", 
    RowBox[{"[", "3", "]"}], "]"}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{"T", "^", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{"T", "^", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{"T", "^", "4"}]}]}]}], "\n", 
 RowBox[{
  RowBox[{"cp0H2", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "1", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "2"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{"aH2", "[", 
    RowBox[{"[", "3", "]"}], "]"}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{"T", "^", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{"T", "^", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{"T", "^", "4"}]}]}]}], "\n", 
 RowBox[{
  RowBox[{"cp0H2O", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "1", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "2"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{"aH2O", "[", 
    RowBox[{"[", "3", "]"}], "]"}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{"T", "^", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{"T", "^", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{"T", "^", "4"}]}]}]}], "\n", 
 RowBox[{
  RowBox[{"cp0H2Ol", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "1", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "2"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{"aH2Ol", "[", 
    RowBox[{"[", "3", "]"}], "]"}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{"T", "^", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{"T", "^", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{"T", "^", "4"}]}]}]}], "\n", 
 RowBox[{
  RowBox[{"cp0H3Oplus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "1", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "2"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{"aH3Oplus", "[", 
    RowBox[{"[", "3", "]"}], "]"}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{"T", "^", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{"T", "^", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{"T", "^", "4"}]}]}]}], "\n", 
 RowBox[{
  RowBox[{"cp0O2", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "1", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "2"}]}]}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{"aO2", "[", 
    RowBox[{"[", "3", "]"}], "]"}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{"T", "^", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{"T", "^", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{"T", "^", "4"}]}]}]}]}], "Code"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Entropy", " ", "functions", " ", "at", " ", "1", " ", "bar"}], 
   " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"Each", " ", "is", " ", 
    RowBox[{"dimensionless", "."}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"**", "What"}], " ", "is", " ", "the", " ", "reference", " ", 
    "temperature", " ", "and", " ", "the", " ", "offset", " ", "of", " ", 
    RowBox[{"integration", "?", "  ", "See"}], " ", "enthalpy", " ", 
    RowBox[{"below", "."}]}], " ", "*)"}]}]], "Input"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"s0", "[", "T_", "]"}], ":=", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"cp0", "[", "T", "]"}], "/", "T"}], ",", "T"}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"s0eminus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aeminus", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "/", "2"}]}], "-", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "3", "]"}], "]"}], "*", 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], " ", "+", 
   RowBox[{"beminus", "[", 
    RowBox[{"[", "2", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"s0H", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aH", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "/", "2"}]}], "-", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "3", "]"}], "]"}], "*", 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{"bH", "[", 
    RowBox[{"[", "2", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"s0Hplus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aHplus", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "/", "2"}]}], "-", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "3", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{"bHplus", "[", 
    RowBox[{"[", "2", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"s0Hminus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aHminus", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "/", "2"}]}], "-", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "3", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{"bHminus", "[", 
    RowBox[{"[", "2", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"s0H2", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aH2", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "/", "2"}]}], "-", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "3", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{"bH2", "[", 
    RowBox[{"[", "2", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"s0H2O", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aH2O", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "/", "2"}]}], "-", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "3", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{"bH2O", "[", 
    RowBox[{"[", "2", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"s0H2Ol", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aH2Ol", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "/", "2"}]}], "-", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "3", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{"bH2Ol", "[", 
    RowBox[{"[", "2", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"s0H3Oplus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aH3Oplus", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "/", "2"}]}], "-", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "3", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{"bH3Oplus", "[", 
    RowBox[{"[", "2", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"s0O2", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aO2", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "/", "2"}]}], "-", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "3", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "4", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{"bO2", "[", 
    RowBox[{"[", "2", "]"}], "]"}]}]}]}], "Code"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Enthalpy", " ", "functions", " ", "at", " ", "1", " ", "bar"}], 
   " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"Each", " ", "is", " ", "in", " ", 
    RowBox[{"K", "."}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"In", " ", "the", " ", "following", " ", "equations"}], ",", " ", 
    
    RowBox[{
     RowBox[{
     "the", " ", "lower", " ", "limits", " ", "of", " ", "the", " ", 
      "integrals", " ", "are", " ", "T"}], "=", 
     RowBox[{"298.15", 
      RowBox[{"K", "--"}], "\n", "the", " ", "temperature", " ", "at", " ", 
      "which", " ", "McBride2002", " ", "sets", " ", "the", " ", "enthalpy", 
      " ", "to", " ", "be", " ", "equal", " ", "to", " ", "the", " ", 
      "enthalpy", " ", "of", " ", 
      RowBox[{"formation", "."}]}]}]}], " ", "*)"}]}]], "Input"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"h0", "[", "T_", "]"}], ":=", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"cp0", "[", "T", "]"}], ",", "T"}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"h0eminus", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"cp0eminus", "[", "Tint", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"Tint", ",", 
        RowBox[{"298.15", "UK"}], ",", "T"}], "}"}]}], "]"}], "+", 
    RowBox[{"hf0eminus", "[", 
     RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"h0H", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"cp0H", "[", "Tint", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"Tint", ",", 
        RowBox[{"298.15", "UK"}], ",", "T"}], "}"}]}], "]"}], "+", 
    RowBox[{"hf0H", "[", 
     RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"h0Hplus", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"cp0Hplus", "[", "Tint", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"Tint", ",", 
        RowBox[{"298.15", "UK"}], ",", "T"}], "}"}]}], "]"}], "+", 
    RowBox[{"hf0Hplus", "[", 
     RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"h0Hminus", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"cp0Hminus", "[", "Tint", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"Tint", ",", 
        RowBox[{"298.15", "UK"}], ",", "T"}], "}"}]}], "]"}], "+", 
    RowBox[{"hf0Hminus", "[", 
     RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"h0H2", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"cp0H2", "[", "Tint", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"Tint", ",", 
        RowBox[{"298.15", "UK"}], ",", "T"}], "}"}]}], "]"}], "+", 
    RowBox[{"hf0H2", "[", 
     RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"h0H2O", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"cp0H2O", "[", "Tint", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"Tint", ",", 
        RowBox[{"298.15", "UK"}], ",", "T"}], "}"}]}], "]"}], "+", 
    RowBox[{"hf0H2O", "[", 
     RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"h0H2Ol", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"cp0H2Ol", "[", "Tint", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"Tint", ",", 
        RowBox[{"298.15", "UK"}], ",", "T"}], "}"}]}], "]"}], "+", 
    RowBox[{"hf0H2Ol", "[", 
     RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"h0H3Oplus", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"cp0H3Oplus", "[", "Tint", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"Tint", ",", 
        RowBox[{"298.15", "UK"}], ",", "T"}], "}"}]}], "]"}], "+", 
    RowBox[{"hf0H3Oplus", "[", 
     RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"h0O2", "[", "T_", "]"}], ":=", 
   RowBox[{"Expand", "[", 
    RowBox[{
     RowBox[{"Integrate", "[", 
      RowBox[{
       RowBox[{"cp0O2", "[", "Tint", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"Tint", ",", 
         RowBox[{"298.15", "UK"}], ",", "T"}], "}"}]}], "]"}], "+", 
     RowBox[{"hf0O2", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"**", "The"}], " ", "results", " ", "above", " ", "and", " ", 
    "below", " ", 
    RowBox[{"don", "'"}], "t", " ", "match", " ", "for", " ", "H2O", " ", 
    "liquid", " ", "or", " ", 
    RowBox[{"gas", ".", "  ", 
     RowBox[{"Why", "?"}]}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"For", " ", "computational", " ", "efficiency"}], ",", " ", 
    RowBox[{
     RowBox[{
     "the", " ", "lower", " ", "limits", " ", "of", " ", "the", " ", 
      "integrals", " ", "are", " ", "pre"}], "-", 
     RowBox[{"subtracted", " ", "from", " ", "hf0"}]}], ",", " ", 
    RowBox[{
    "and", " ", "the", " ", "results", " ", "are", " ", "saved", " ", "as", 
     " ", 
     RowBox[{
      RowBox[{"b", "[", 
       RowBox[{"[", "2", "]"}], "]"}], ".", "  ", "That"}], " ", "allows", 
     " ", "the", " ", "equations", " ", "to", " ", "be", " ", "\n", "written",
      " ", "in", " ", "the", " ", "following", " ", "equivalent", " ", 
     RowBox[{"form", "--"}], "McBride2002"}], ",", " ", 
    RowBox[{"p", ".", " ", "2"}], ",", " ", 
    RowBox[{"eq", ".", " ", "3."}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"h0eminus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aeminus", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "3", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "4", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{
    RowBox[{"aeminus", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "5"}], "/", "5"}]}], "+", 
   RowBox[{"beminus", "[", 
    RowBox[{"[", "1", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"h0H", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aH", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "3", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "4", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{
    RowBox[{"aH", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "5"}], "/", "5"}]}], "+", 
   RowBox[{"bH", "[", 
    RowBox[{"[", "1", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"h0Hplus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aHplus", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "3", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "4", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{
    RowBox[{"aHplus", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "5"}], "/", "5"}]}], "+", 
   RowBox[{"bHplus", "[", 
    RowBox[{"[", "1", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"h0Hminus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aHminus", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "3", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "4", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{
    RowBox[{"aHminus", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "5"}], "/", "5"}]}], "+", 
   RowBox[{"bHminus", "[", 
    RowBox[{"[", "1", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"h0H2", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aH2", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "3", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "4", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{
    RowBox[{"aH2", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "5"}], "/", "5"}]}], "+", 
   RowBox[{"bH2", "[", 
    RowBox[{"[", "1", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"h0H2O", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aH2O", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "3", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "4", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{
    RowBox[{"aH2O", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "5"}], "/", "5"}]}], "+", 
   RowBox[{"bH2O", "[", 
    RowBox[{"[", "1", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"h0H2Ol", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aH2Ol", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "3", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "4", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{
    RowBox[{"aH2Ol", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "5"}], "/", "5"}]}], "+", 
   RowBox[{"bH2Ol", "[", 
    RowBox[{"[", "1", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"h0H3Oplus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aH3Oplus", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "3", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "4", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{
    RowBox[{"aH3Oplus", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "5"}], "/", "5"}]}], "+", 
   RowBox[{"bH3Oplus", "[", 
    RowBox[{"[", "1", "]"}], "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"h0O2", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"aO2", "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], 
    RowBox[{"T", "^", 
     RowBox[{"-", "1"}]}]}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "2", "]"}], "]"}], 
    RowBox[{"Log", "[", "T", "]"}]}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "3", "]"}], "]"}], "T"}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "4", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "2"}], "/", "2"}]}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "5", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "3"}], "/", "3"}]}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "6", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "4"}], "/", "4"}]}], "+", 
   RowBox[{
    RowBox[{"aO2", "[", 
     RowBox[{"[", "7", "]"}], "]"}], 
    RowBox[{
     RowBox[{"T", "^", "5"}], "/", "5"}]}], "+", 
   RowBox[{"bO2", "[", 
    RowBox[{"[", "1", "]"}], "]"}]}]}]}], "Code",
 CellChangeTimes->{{3.53753260893223*^9, 3.537532610095823*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Gibbs", " ", "functions", " ", "at", " ", "1", " ", "bar"}], " ", 
   "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"Each", " ", "is", " ", "in", " ", 
    RowBox[{"K", "."}]}], " ", "*)"}]}]], "Input"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"g0", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"h0", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"g0eminus", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"h0eminus", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0eminus", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"g0H", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"h0H", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0H", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"g0Hplus", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"h0Hplus", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0Hplus", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"g0Hminus", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"h0Hminus", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0Hminus", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"g0H2", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"h0H2", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0H2", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"g0H2O", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"h0H2O", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0H2O", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"g0H2Ol", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"h0H2Ol", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0H2Ol", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"g0H3Oplus", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"h0H3Oplus", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0H3Oplus", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"g0O2", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"h0O2", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0O2", "[", "T", "]"}]}]}], "]"}]}]}], "Code"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Internal", " ", "energy", " ", "functions", " ", "at", " ", "1", " ", 
    "bar"}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"Each", " ", "is", " ", "in", " ", 
    RowBox[{"K", ".", " ", "These"}], " ", "functions", " ", "assume", " ", 
    RowBox[{"IG", "."}]}], " ", "*)"}]}]], "Input"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"u0", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{"h0", "[", "T", "]"}], "-", "T"}]}], "\n", 
 RowBox[{
  RowBox[{"u0eminus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{"h0eminus", "[", "T", "]"}], "-", "T"}]}], "\n", 
 RowBox[{
  RowBox[{"u0H", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{"h0H", "[", "T", "]"}], "-", "T"}]}], "\n", 
 RowBox[{
  RowBox[{"u0Hplus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{"h0Hplus", "[", "T", "]"}], "-", "T"}]}], "\n", 
 RowBox[{
  RowBox[{"u0Hminus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{"h0Hminus", "[", "T", "]"}], "-", "T"}]}], "\n", 
 RowBox[{
  RowBox[{"u0H2", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{"h0H2", "[", "T", "]"}], "-", "T"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"u0H2O", "[", "T_", "]"}], ":=", 
   RowBox[{
    RowBox[{"h0H2O", "[", "T", "]"}], "-", "T"}]}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
   "This", " ", "is", " ", "not", " ", "correct", " ", "since", " ", "H2Ol", 
    " ", "is", " ", "definitely", " ", "not", " ", "an", " ", 
    RowBox[{"IG", "."}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"u0H2Ol", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{"h0H2Ol", "[", "T", "]"}], "-", "T"}]}], "\n", 
 RowBox[{
  RowBox[{"u0H3Oplus", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{"h0H3Oplus", "[", "T", "]"}], "-", "T"}]}], "\n", 
 RowBox[{
  RowBox[{"u0O2", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{"h0O2", "[", "T", "]"}], "-", "T"}]}]}], "Code"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Helmholtz", " ", "functions", " ", "at", " ", "1", " ", "bar"}], 
   " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"Each", " ", "is", " ", "in", " ", 
    RowBox[{"K", "."}]}], " ", "*)"}]}]], "Input"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"a0", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"u0", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"a0eminus", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"u0eminus", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0eminus", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"a0H", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"u0H", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0H", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"a0Hplus", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"u0Hplus", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0Hplus", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"a0Hminus", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"u0Hminus", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0Hminus", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"a0H2", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"u0H2", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0H2", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"a0H2O", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"u0H2O", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0H2O", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"a0H2Ol", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"u0H2Ol", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0H2Ol", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"a0H3Oplus", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"u0H3Oplus", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0H3Oplus", "[", "T", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"a0O2", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"u0O2", "[", "T", "]"}], "-", 
    RowBox[{"T", "*", 
     RowBox[{"s0O2", "[", "T", "]"}]}]}], "]"}]}]}], "Code"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"List", " ", "the", " ", "thermodynamic", " ", 
    RowBox[{"functions", "."}]}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], "\n", 
   RowBox[{"s0", "[", "T", "]"}], "\n", 
   RowBox[{"h0", "[", "T", "]"}], "\n", 
   RowBox[{"g0", "[", "T", "]"}], "\n", 
   RowBox[{"a0", "[", "T", "]"}], "\n", 
   RowBox[{"u0", "[", "T", "]"}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}]}]], "Output",
 CellChangeTimes->{3.537127855750182*^9, 3.537376156777533*^9, 
  3.537377378717077*^9, 3.537377559417112*^9, 3.537377642106677*^9, 
  3.537377733062772*^9, 3.537377769621519*^9, 3.537377804711898*^9, 
  3.537377842804994*^9, 3.537377913341293*^9, 3.537378111387762*^9, 
  3.537378143646067*^9, 3.537378173882939*^9, 3.53737820777038*^9, 
  3.53737832249013*^9, 3.537378990256028*^9, 3.537480232727249*^9, 
  3.537511397338007*^9, 3.53751209293077*^9, 3.53751278564663*^9, 
  3.537736600559014*^9, 3.538177325764646*^9, 3.539267370545768*^9, 
  3.539629516399886*^9, 3.540300054839053*^9, 3.551289519936739*^9, 
  3.553196296171802*^9, 3.553539567597661*^9, 3.554812055771957*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   FractionBox["a1", 
    RowBox[{"2", " ", 
     SuperscriptBox["T", "2"]}]]}], "-", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  FractionBox[
   RowBox[{"a5", " ", 
    SuperscriptBox["T", "2"]}], "2"], "+", 
  FractionBox[
   RowBox[{"a6", " ", 
    SuperscriptBox["T", "3"]}], "3"], "+", 
  FractionBox[
   RowBox[{"a7", " ", 
    SuperscriptBox["T", "4"]}], "4"], "+", 
  RowBox[{"a3", " ", 
   RowBox[{"Log", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{3.537127855750182*^9, 3.537376156777533*^9, 
  3.537377378717077*^9, 3.537377559417112*^9, 3.537377642106677*^9, 
  3.537377733062772*^9, 3.537377769621519*^9, 3.537377804711898*^9, 
  3.537377842804994*^9, 3.537377913341293*^9, 3.537378111387762*^9, 
  3.537378143646067*^9, 3.537378173882939*^9, 3.53737820777038*^9, 
  3.53737832249013*^9, 3.537378990256028*^9, 3.537480232727249*^9, 
  3.537511397338007*^9, 3.53751209293077*^9, 3.53751278564663*^9, 
  3.537736600559014*^9, 3.538177325764646*^9, 3.539267370545768*^9, 
  3.539629516399886*^9, 3.540300054839053*^9, 3.551289519936739*^9, 
  3.553196296171802*^9, 3.553539567597661*^9, 3.554812055842064*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   FractionBox["a1", "T"]}], "+", 
  RowBox[{"a3", " ", "T"}], "+", 
  FractionBox[
   RowBox[{"a4", " ", 
    SuperscriptBox["T", "2"]}], "2"], "+", 
  FractionBox[
   RowBox[{"a5", " ", 
    SuperscriptBox["T", "3"]}], "3"], "+", 
  FractionBox[
   RowBox[{"a6", " ", 
    SuperscriptBox["T", "4"]}], "4"], "+", 
  FractionBox[
   RowBox[{"a7", " ", 
    SuperscriptBox["T", "5"]}], "5"], "+", 
  RowBox[{"a2", " ", 
   RowBox[{"Log", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{3.537127855750182*^9, 3.537376156777533*^9, 
  3.537377378717077*^9, 3.537377559417112*^9, 3.537377642106677*^9, 
  3.537377733062772*^9, 3.537377769621519*^9, 3.537377804711898*^9, 
  3.537377842804994*^9, 3.537377913341293*^9, 3.537378111387762*^9, 
  3.537378143646067*^9, 3.537378173882939*^9, 3.53737820777038*^9, 
  3.53737832249013*^9, 3.537378990256028*^9, 3.537480232727249*^9, 
  3.537511397338007*^9, 3.53751209293077*^9, 3.53751278564663*^9, 
  3.537736600559014*^9, 3.538177325764646*^9, 3.539267370545768*^9, 
  3.539629516399886*^9, 3.540300054839053*^9, 3.551289519936739*^9, 
  3.553196296171802*^9, 3.553539567597661*^9, 3.554812055845719*^9}],

Cell[BoxData[
 RowBox[{"a2", "-", 
  FractionBox["a1", 
   RowBox[{"2", " ", "T"}]], "+", 
  RowBox[{"a3", " ", "T"}], "-", 
  FractionBox[
   RowBox[{"a4", " ", 
    SuperscriptBox["T", "2"]}], "2"], "-", 
  FractionBox[
   RowBox[{"a5", " ", 
    SuperscriptBox["T", "3"]}], "6"], "-", 
  FractionBox[
   RowBox[{"a6", " ", 
    SuperscriptBox["T", "4"]}], "12"], "-", 
  FractionBox[
   RowBox[{"a7", " ", 
    SuperscriptBox["T", "5"]}], "20"], "+", 
  RowBox[{"a2", " ", 
   RowBox[{"Log", "[", "T", "]"}]}], "-", 
  RowBox[{"a3", " ", "T", " ", 
   RowBox[{"Log", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{3.537127855750182*^9, 3.537376156777533*^9, 
  3.537377378717077*^9, 3.537377559417112*^9, 3.537377642106677*^9, 
  3.537377733062772*^9, 3.537377769621519*^9, 3.537377804711898*^9, 
  3.537377842804994*^9, 3.537377913341293*^9, 3.537378111387762*^9, 
  3.537378143646067*^9, 3.537378173882939*^9, 3.53737820777038*^9, 
  3.53737832249013*^9, 3.537378990256028*^9, 3.537480232727249*^9, 
  3.537511397338007*^9, 3.53751209293077*^9, 3.53751278564663*^9, 
  3.537736600559014*^9, 3.538177325764646*^9, 3.539267370545768*^9, 
  3.539629516399886*^9, 3.540300054839053*^9, 3.551289519936739*^9, 
  3.553196296171802*^9, 3.553539567597661*^9, 3.554812055847916*^9}],

Cell[BoxData[
 RowBox[{"a2", "-", 
  FractionBox["a1", 
   RowBox[{"2", " ", "T"}]], "-", "T", "+", 
  RowBox[{"a3", " ", "T"}], "-", 
  FractionBox[
   RowBox[{"a4", " ", 
    SuperscriptBox["T", "2"]}], "2"], "-", 
  FractionBox[
   RowBox[{"a5", " ", 
    SuperscriptBox["T", "3"]}], "6"], "-", 
  FractionBox[
   RowBox[{"a6", " ", 
    SuperscriptBox["T", "4"]}], "12"], "-", 
  FractionBox[
   RowBox[{"a7", " ", 
    SuperscriptBox["T", "5"]}], "20"], "+", 
  RowBox[{"a2", " ", 
   RowBox[{"Log", "[", "T", "]"}]}], "-", 
  RowBox[{"a3", " ", "T", " ", 
   RowBox[{"Log", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{3.537127855750182*^9, 3.537376156777533*^9, 
  3.537377378717077*^9, 3.537377559417112*^9, 3.537377642106677*^9, 
  3.537377733062772*^9, 3.537377769621519*^9, 3.537377804711898*^9, 
  3.537377842804994*^9, 3.537377913341293*^9, 3.537378111387762*^9, 
  3.537378143646067*^9, 3.537378173882939*^9, 3.53737820777038*^9, 
  3.53737832249013*^9, 3.537378990256028*^9, 3.537480232727249*^9, 
  3.537511397338007*^9, 3.53751209293077*^9, 3.53751278564663*^9, 
  3.537736600559014*^9, 3.538177325764646*^9, 3.539267370545768*^9, 
  3.539629516399886*^9, 3.540300054839053*^9, 3.551289519936739*^9, 
  3.553196296171802*^9, 3.553539567597661*^9, 3.55481205585035*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   FractionBox["a1", "T"]}], "-", "T", "+", 
  RowBox[{"a3", " ", "T"}], "+", 
  FractionBox[
   RowBox[{"a4", " ", 
    SuperscriptBox["T", "2"]}], "2"], "+", 
  FractionBox[
   RowBox[{"a5", " ", 
    SuperscriptBox["T", "3"]}], "3"], "+", 
  FractionBox[
   RowBox[{"a6", " ", 
    SuperscriptBox["T", "4"]}], "4"], "+", 
  FractionBox[
   RowBox[{"a7", " ", 
    SuperscriptBox["T", "5"]}], "5"], "+", 
  RowBox[{"a2", " ", 
   RowBox[{"Log", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{3.537127855750182*^9, 3.537376156777533*^9, 
  3.537377378717077*^9, 3.537377559417112*^9, 3.537377642106677*^9, 
  3.537377733062772*^9, 3.537377769621519*^9, 3.537377804711898*^9, 
  3.537377842804994*^9, 3.537377913341293*^9, 3.537378111387762*^9, 
  3.537378143646067*^9, 3.537378173882939*^9, 3.53737820777038*^9, 
  3.53737832249013*^9, 3.537378990256028*^9, 3.537480232727249*^9, 
  3.537511397338007*^9, 3.53751209293077*^9, 3.53751278564663*^9, 
  3.537736600559014*^9, 3.538177325764646*^9, 3.539267370545768*^9, 
  3.539629516399886*^9, 3.540300054839053*^9, 3.551289519936739*^9, 
  3.553196296171802*^9, 3.553539567597661*^9, 3.554812055852587*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Heat", " ", "capacity", " ", "at", " ", "1", " ", "bar", " ", 
   RowBox[{"vs", ".", " ", "temperature"}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"cp0eminus", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", " ", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\>\""}], 
       "]"}], ",", " ", "\n", "    ", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"cp0H", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", " ", "\"\<H\>\""}], "]"}], ",",
       " ", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"cp0Hplus", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", " ", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\>\""}], 
       "]"}], ",", " ", "\n", "    ", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"cp0Hminus", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", " ", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(-\\)]\\)\>\""}], 
       "]"}], ",", " ", "\n", "    ", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"cp0H2", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", " ", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\>\""}], "]"}], 
      ",", " ", "\n", "    ", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"cp0H2O", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", " ", "\n", "     ", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\>\""}], "]"}], ",", " ", "\n", "    ", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"cp0H3Oplus", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", " ", "\n", "     ", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\>\""}], "]"}], 
      ",", " ", "\n", "    ", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"cp0O2", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", " ", 
        "\"\<\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\>\""}], 
       "]"}]}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"T", ",", " ", "200", ",", " ", "1000"}], "}"}], ",", " ", "\n", 
    "   ", 
    RowBox[{"PlotLabel", " ", "->", " ", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Heat Capacity at 1 bar\>\"", ",", " ", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", " ", "\n", "   ", 
    RowBox[{"FrameLabel", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Temperature / K\>\"", ",", " ", "\"\<Heat capacity / 1\>\""}], 
      "}"}]}]}], "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Export", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-HeatCap1.pdf\>\
\"", ",", " ", "\n", "    ", 
       "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-HeatCap1.png\
\>\""}], "}"}], ",", " ", "%"}], "]"}], ";"}], " "}], "\n", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"cp0H2Ol", "[", 
     RowBox[{"T", "*", "UK"}], "]"}], "}"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"T", ",", " ", "273.15", ",", " ", "373.15"}], "}"}], ",", " ", 
   "\n", "  ", 
   RowBox[{"PlotLabel", " ", "->", " ", "\n", "   ", 
    RowBox[{"Style", "[", "\n", "    ", 
     RowBox[{
     "\"\<Heat Capacity of \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \\((\[Null]l)\\)]\\) \
at 1 atm\>\"", ",", " ", "\n", "    ", 
      RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", " ", 
   RowBox[{"FrameLabel", " ", "->", " ", 
    RowBox[{"{", 
     RowBox[{
     "\"\<Temperature / K\>\"", ",", " ", "\"\<Heat capacity / 1\>\""}], 
     "}"}]}]}], "]"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Export", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-HeatCap2.pdf\>\
\"", ",", " ", "\n", "    ", 
       "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-HeatCap2.png\
\>\""}], "}"}], ",", " ", "%"}], "]"}], ";"}], " "}]}], "Code",
 CellChangeTimes->{{3.537377590444571*^9, 3.537377622832237*^9}, {
   3.537377835391184*^9, 3.537377835416963*^9}, {3.537378766052865*^9, 
   3.537378785159643*^9}, {3.537378875917663*^9, 3.537378876175215*^9}, {
   3.537378978990376*^9, 3.537378979160655*^9}, 3.553548023367806*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQ7WFrq8TAkOnAAAYsDn13+pztfyP4V6sfpNR9y4Lz
S5p9mRzFc+H8i8mCH14K58P5t7rrnH2aC+D8EK/IPUcnFsL5uqXxsUZ9RXB+
f8sp7YPzi+H8LbUnzwWtKYHzLR5/nnl9WSmc76rbPKluWxmcv/Gx7WaJLeVw
/v3mnhVb11TA+dM5HE6X7KqE89f9lBNT31YF5/udT+r7fawazt/QZ3X70qUa
OL9wl23A3DO1cP6eU0s/dd6ug/PT3C33Zt6oh/N9r8y4ZVraAOef+HnPYcdv
BL/4qpW1SWUjnJ+k7OnjyNgE5zeq5350b0DiK9xmuPAHwT/W/VvtZXMznG+1
1vDhb8YWOP+zg9Sm+V0Ifu9Jn7dHBFrh/HCOqXse9yL4qTv7F00WbYPzFyss
kLGdguAfqvnFkCHQDuerebP/UZ6O4O88r9l9U6QDzp947J+BwlwEf0bxy6wE
mU6Ef0Tl+JVmIvjrNFlPlSh0wfncXxglD85D8NcYbKybp94N5+slrfL7uxbB
f+C5c1Oodg+cf31xla79ZgT/7+ZAGyWjXjifZWfR1rZ1CH6AgZtrjWkfnH8m
Vj8zezOCb8sesGHrTwR/3YaC7//t++F8AKDS0k4=
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(e\[Null]\), \(-\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQ7WFrq8TAkOnAAAYsDn13+pztfyP4V6sfpNR9y4Lz
S5p9mRzFc+H8i8mCH14K58P5t7rrnH2aC+D8EK/IPUcnFsL5uqXxsUZ9RXB+
f8sp7YPzi+H8LbUnzwWtKYHzLR5/nnl9WSmc76rbPKluWxmcv/Gx7WaJLeVw
/v3mnhVb11TA+dM5HE6X7KqE89f9lBNT31YF5/udT+r7fawazt/QZ3X70qUa
OL9wl23A3DO1cP6eU0s/dd6ug/PT3C33Zt6oh/N9r8y4ZVraAOef+HnPYcdv
BL/4qpW1SWUjnJ+k7OnjyNgE5zeq5350b0DiK9xmuPAHwT/W/VvtZXMznG+1
1vDhb8YWOP+zg9Sm+V0Ifu9Jn7dHBFrh/HCOqXse9yL4qTv7F00WbYPzFyss
kLGdguAfqvnFkCHQDuerebP/UZ6O4O88r9l9U6QDzp947J+BwlwEf0bxy6wE
mU6Ef0Tl+JVmIvjrNFlPlSh0wfncXxglD85D8NcYbKybp94N5+slrfL7uxbB
f+C5c1Oodg+cf31xla79ZgT/7+ZAGyWjXjifZWfR1rZ1CH6AgZtrjWkfnH8m
Vj8zezOCb8sesGHrTwR/3YaC7//t++F8AKDS0k4=
         "]]}, "\"H\"", TooltipStyle -> 
       "TextStyling"], Annotation[#, "H", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQ7WFrq8TAkOnAAAYsDn13+pztfyP4V6sfpNR9y4Lz
S5p9mRzFc+H8i8mCH14K58P5t7rrnH2aC+D8EK/IPUcnFsL5uqXxsUZ9RXB+
f8sp7YPzi+H8LbUnzwWtKYHzLR5/nnl9WSmc76rbPKluWxmcv/Gx7WaJLeVw
/v3mnhVb11TA+dM5HE6X7KqE89f9lBNT31YF5/udT+r7fawazt/QZ3X70qUa
OL9wl23A3DO1cP6eU0s/dd6ug/PT3C33Zt6oh/N9r8y4ZVraAOef+HnPYcdv
BL/4qpW1SWUjnJ+k7OnjyNgE5zeq5350b0DiK9xmuPAHwT/W/VvtZXMznG+1
1vDhb8YWOP+zg9Sm+V0Ifu9Jn7dHBFrh/HCOqXse9yL4qTv7F00WbYPzFyss
kLGdguAfqvnFkCHQDuerebP/UZ6O4O88r9l9U6QDzp947J+BwlwEf0bxy6wE
mU6Ef0Tl+JVmIvjrNFlPlSh0wfncXxglD85D8NcYbKybp94N5+slrfL7uxbB
f+C5c1Oodg+cf31xla79ZgT/7+ZAGyWjXjifZWfR1rZ1CH6AgZtrjWkfnH8m
Vj8zezOCb8sesGHrTwR/3YaC7//t++F8AKDS0k4=
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(H\[Null]\), \(+\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQ7WFrq8TAkOnAAAYsDn13+pztfyP4V6sfpNR9y4Lz
S5p9mRzFc+H8i8mCH14K58P5t7rrnH2aC+D8EK/IPUcnFsL5uqXxsUZ9RXB+
f8sp7YPzi+H8LbUnzwWtKYHzLR5/nnl9WSmc76rbPKluWxmcv/Gx7WaJLeVw
/v3mnhVb11TA+dM5HE6X7KqE89f9lBNT31YF5/udT+r7fawazt/QZ3X70qUa
OL9wl23A3DO1cP6eU0s/dd6ug/PT3C33Zt6oh/N9r8y4ZVraAOef+HnPYcdv
BL/4qpW1SWUjnJ+k7OnjyNgE5zeq5350b0DiK9xmuPAHwT/W/VvtZXMznG+1
1vDhb8YWOP+zg9Sm+V0Ifu9Jn7dHBFrh/HCOqXse9yL4qTv7F00WbYPzFyss
kLGdguAfqvnFkCHQDuerebP/UZ6O4O88r9l9U6QDzp947J+BwlwEf0bxy6wE
mU6Ef0Tl+JVmIvjrNFlPlSh0wfncXxglD85D8NcYbKybp94N5+slrfL7uxbB
f+C5c1Oodg+cf31xla79ZgT/7+ZAGyWjXjifZWfR1rZ1CH6AgZtrjWkfnH8m
Vj8zezOCb8sesGHrTwR/3YaC7//t++F8AKDS0k4=
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(-\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(H\[Null]\), \(-\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
/h/CYaEx
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SubscriptBox[\(H\[Null]\), \(2\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
Nnr+
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, 
       "\!\(\*SubscriptBox[\(H\[Null]\), \(2\)]\)\!\(\*SubscriptBox[\(\[Null]\
\[Null]O\[Null]\), \((\[Null]g)\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        GrayLevel[0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
438vOtH3eO6dmKT9Pxqo3nk=
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, 
       "\!\(\*SubscriptBox[\(H\[Null]\), \(3\)]\)\!\(\*SuperscriptBox[\(\
\[Null]O\), \(+\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1: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
UPius+YddWGx8PvESgl2ppSZKbQy+A9PVILF
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SubscriptBox[\(O\[Null]\), \(2\)]\)", 
       "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {200., 2.6}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Temperature / K\"", TraditionalForm], 
      FormBox["\"Heat capacity / 1\"", TraditionalForm]}, FrameStyle -> 
    Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Heat Capacity at 1 bar\"", FontSize -> 34, StripOnInput -> False], 
      TraditionalForm], PlotRange -> {{200, 1000}, {2.5, 6.642440234620157}}, 
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
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"H\""}}, AutoDelete -> False, 
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
            "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(-\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\""}}, AutoDelete -> False, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\""}}, 
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
 CellChangeTimes->{{3.537127831197962*^9, 3.537127856367744*^9}, {
   3.537376130486159*^9, 3.53737615748563*^9}, 3.537377379388266*^9, 
   3.537377560065645*^9, 3.53737764276412*^9, 3.537377733677009*^9, 
   3.537377770263504*^9, 3.537377805392373*^9, 3.537377843454421*^9, 
   3.537377914604165*^9, 3.537378112629188*^9, 3.537378144277819*^9, 
   3.537378174524812*^9, 3.537378208467796*^9, 3.537378323164527*^9, 
   3.537378770617508*^9, {3.537378879628391*^9, 3.537378898323461*^9}, 
   3.537378958994421*^9, 3.537378991000464*^9, 3.537480201983978*^9, 
   3.537480233331773*^9, 3.537511398498262*^9, 3.53751209355855*^9, 
   3.537512786309113*^9, 3.537736568067606*^9, 3.537736601203751*^9, 
   3.538177290135049*^9, 3.538177326516318*^9, 3.539267335784469*^9, 
   3.539267371208397*^9, 3.539629483404051*^9, 3.539629517155375*^9, 
   3.540300015629983*^9, 3.540300055621075*^9, 3.543309189536479*^9, 
   3.543574031428214*^9, 3.551289486850819*^9, 3.551289520617402*^9, 
   3.553196261952338*^9, 3.553196296853544*^9, 3.553539534767156*^9, 
   3.553539568337623*^9, 3.55481202164913*^9, 3.554812056364227*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1: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
KPmH8+eD/f3Id9v2H3l9tXeXzjDa3aV/k9MbQvqLYZnHpr/IA52neCxGkG+x
Tx85auKduU7/ob49hT/J1YZ9q4PH0O4d9J2snxlSmM+zm9pfO3SQjeqlSnQm
kltarreTTQfLKnO5/jzcRl5hPPVNziQ4I70V9by68jODl8wpntNCDu2tlrsh
QPbo8/hA5szwV1EUJDOX65rIRxeLL0qDWWss4IiDG4yuCSHeW61GcpLw37XJ
09B/u9J78iMNqbMxojA7oJ5ctqYseuYMxP82Ca7c451wEZapiasj1zzOTr8g
Bg9U1ZI/r7Ioj5yJ+r6avSa3B36vmjYL7WVfX5G7Ys69PgOnVJyB+z43fQyX
QLtNSw2Z5b9z6IQk2vcnv5TC9zWxcd45qL/UAea/Xzj5OMxZIgSLsCbNODoX
7dWHXpDF5G/OnihFLmkzhiWsbGUOwxxdFixzLladMw8+deI5WT53qfY43BJh
Cys3tOqHSaP95Sx4oYy6VagMLJRdTdZeVmc7wvXUQ7Cezx7HfbLIt3oNbJJV
ujGEjXqujVVhv+fVdv+FSwIaYK2IloBdcnBgLqw23DvcA3PSomAFn/HDW+Vh
gUB43rtpgl/hlmuO8Kxl8y5sUsD+BOjDIjnqc1rglmBZeIrM0muuinCOAMxz
1ka1EfZQGnhGHhlZf89RCev9tg3+6+tnUAezHtXDPe/3ldsqo77WCrjT/LT1
c67NHsCf78XVW85H/NYsuEH25vonsEfpTbg28n4bowJ/ToWrR5/6FcMco6tw
ud/7P0tUka/lClzU2Lk/n+uKa3Ce5cBELTX45w04I29yRCbMcc2Ab8iJi6mp
o316AZxyXj4xHWamlsFx41ryCgvQ3+4VHLXd7M6VBdx6PsHhH+y152nABX3w
0eUbi+Jh1odJWK8DBbuWzVqIeNZz4GCFQy8uwC382vDOC+ccRBZhPcRWwZ47
MzdP0cR6zo2AXT4++nEMZmZnwGusa3bzaOF69qmDzZV6jo7AHjxsXC9GF/8T
CtFGf9uV8OKJQhf/wpy+ffD8zyppPTrob/ARZq/UV9+qi3yd03F9znm4PK8T
5nRbwVNjfCo+L0b/SY/gX7bXO2qXIP+lJ7j+u4vyttvqY77zufdPm0pFfzUs
I+UEv+Vtn/zEAP1Vf8GFj2QV85eivhEz3K85aosyNI0wPvMyfDue0c2EPapH
4KTgDRbpxuhvWIz7/9CCJK94E/SXc8Pz4odt+UFZU8RPfgOv3fktNh1uGbLF
82VBls7zfDN4mc0bcvOiGo16c8Tb4PuObGn/18rFAuv/YRDOCZDc+AVuMTyF
59epe17RvZaIn5nbQNbVGR8SXIH8gQvwfLziqCB6AeaovYGFgq1VJa1Rf21o
M9YjP8ZN2Qbr0fruI/mc3sKyZbYYr5uB5223gWf4AXv0d+/uJDu6nkidtAb5
dR9/JZeE3i0Oh1P4Y7rIMcX/euMcEC9uVTd5mXGUQ74T6j/S3kO+bFou1euC
+FKX+3H/bvqmG7webrg6QN59RHj16Hru/t0aJFs/WX9Y0I37fC7H+2nI/G+n
0gbM57DEGNl+uUKWxybk++7AR++73Qc/l32COb5B/OSLeXFvXTej/nOxeF82
yE4bWbsF8d93CpLdhwfM7bzRf+01vH99bz/7YOKHfHsT8b7mTN3GJxcInzy/
kHzVTFHyCsy5z6dJLt/boia9G/OL52jhe36ng/2cIMQP3qdLjni0NGnGHuSP
PmtIjt0prDVpP8ZH6uF8klmb495xGP3Dozfj/PPgCM+OI1iPWSe9yO+uOlwf
gJm6MB/yWOBAD98xjG8M2obv0TP1D6icQPv807txnnApTdgZjvbX1sdwvml/
1fDvAvK3aN4kP3iREno4Gu0bIm7j+3jeLhnBi6hf8NtdfI89PsNn7iXsb8/t
HPITZedBo1jU88q5iLxx+yfxo4mot9byNc4zAz/sp6Vh/Ovj+N6nOF85JJrr
23r4+0nG+k1JktdR39kefN8rKWn8qngD++Xlge97racrQ41vor61W/H3GkXp
lOv+dxG/dZoSOctyzXBdHvKzY5zI5bGFV2IqUf+dI4/IPF9Olog9Rb43Bfh+
xsxf+/k87BH2E9/LHhUOzI14hvx2m57j/NqkFcupxviOrQ2IPzfjrG8N8i38
he9fiSlX9xu8Qzyvt/PpPByUHu74uQP5b9ReJt93EFj1nC+I4q3JfShLv/d3
nL0bpEQucXTrYrOZyMlpXhwLOLZFRZ7er0t8tmj4kFl6alcV6Pdd08KqxBNk
Tm6aqBKbmShxPSDjJtoPrMhSpudlucyhsCrEr7AzUGEzj7+rd2d0IZ5Pbrkq
vV+yvsYeEQjG88Zxlzo9j9uu35mpQub4JPFq0PMgR5TX1gY2l69cyGa+jYk8
6NhOLpnlfkaTnnf3xeoNzsB8V2y16f4Rrlikm4n+ip89dOm8Vb+v/2cN4ids
itCj/RUrn8H/E/55YlSfzhtd9lMiYY7QP34Dur4fto6J9wbje0qAGHnfRp5u
uT7Etw5VJa/NMikx/o3+73+tI4valGzbMwBHb71PPn6kuKJzDFb5sN+Qzfj/
LthTIbwH30slpI3oefHhg5eZCJml/1OV/PzJuGMpzBx4qUdWjLHULp5O5sxO
tyc3G7zvy50B59ccJ1sdG/BNnYV4ht19ZBkJHdcj0oi37soLYzbzamkOY6IB
n3RLNaH3zUHm7UuuTa/nkYNLanxdFiJe52glea7Z96jARbB60zeyj5V8R5oW
+u+xWmhK57k1l04J6KFdT6CEvNBnX109g/acS9/N2MyRm/zeHibw2eYx8rvu
SyM/YMZPS3QZnW+335PnNUO7n9gS8rOAH8F65ogXkHaC7HnAfU7SclhyhrI5
necf/cicvwLzM91lSOZn7V+WDzMnv6wmZxyO2f7KGv2zh/aSh0+8fjzBFvEP
TXxJXlnl7nAW5kT+/UJOEejpklyFeCuHBsgWZ6aIaq+GZfVkLei8URNzvQRm
ue/WJf8QVjRYaQdHl1uTje1yXzXCzHsFT3JUlOlmL3t4SUIw+X9r5f5v
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{280., 9.06},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameLabel->{
    FormBox["\"Temperature / K\"", TraditionalForm], 
    FormBox["\"Heat capacity / 1\"", TraditionalForm]},
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotLabel->FormBox[
    StyleBox[
    "\"Heat Capacity of \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \\((\[Null]l)\\)]\\) \
at 1 atm\"", FontSize -> 34, StripOnInput -> False], TraditionalForm],
  PlotRange->{{273.15, 373.15}, {9.058171328157187, 9.161567732706317}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.537127831197962*^9, 3.537127856367744*^9}, {
   3.537376130486159*^9, 3.53737615748563*^9}, 3.537377379388266*^9, 
   3.537377560065645*^9, 3.53737764276412*^9, 3.537377733677009*^9, 
   3.537377770263504*^9, 3.537377805392373*^9, 3.537377843454421*^9, 
   3.537377914604165*^9, 3.537378112629188*^9, 3.537378144277819*^9, 
   3.537378174524812*^9, 3.537378208467796*^9, 3.537378323164527*^9, 
   3.537378770617508*^9, {3.537378879628391*^9, 3.537378898323461*^9}, 
   3.537378958994421*^9, 3.537378991000464*^9, 3.537480201983978*^9, 
   3.537480233331773*^9, 3.537511398498262*^9, 3.53751209355855*^9, 
   3.537512786309113*^9, 3.537736568067606*^9, 3.537736601203751*^9, 
   3.538177290135049*^9, 3.538177326516318*^9, 3.539267335784469*^9, 
   3.539267371208397*^9, 3.539629483404051*^9, 3.539629517155375*^9, 
   3.540300015629983*^9, 3.540300055621075*^9, 3.543309189536479*^9, 
   3.543574031428214*^9, 3.551289486850819*^9, 3.551289520617402*^9, 
   3.553196261952338*^9, 3.553196296853544*^9, 3.553539534767156*^9, 
   3.553539568337623*^9, 3.55481202164913*^9, 3.554812058099775*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Entropy", " ", "at", " ", "1", " ", "bar", " ", 
   RowBox[{"vs", ".", " ", "temperature"}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"s0eminus", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\>\""}], 
       "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"s0H", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", "\"\<H\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"s0Hplus", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\>\""}], 
       "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"s0Hminus", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(-\\)]\\)\>\""}], 
       "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"s0H2", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\>\""}], "]"}], 
      ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"s0H2O", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"s0H3Oplus", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\>\""}], "]"}], 
      ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"s0O2", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\>\""}], 
       "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"T", ",", "200", ",", "1000"}], "}"}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Entropy at 1 bar\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Entropy / 1\>\""}], 
      "}"}]}]}], "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Entropy1.pdf\>\
\"", ",", 
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Entropy1.png\>\
\""}], "}"}], ",", "%"}], "]"}], ";"}], "\n", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"s0H2Ol", "[", 
    RowBox[{"T", "*", "UK"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "273.15", ",", "373.15"}], "}"}], ",", "\n", 
   RowBox[{"PlotLabel", "->", 
    RowBox[{"Style", "[", 
     RowBox[{
     "\"\<Entropy of \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \\((\[Null]l)\\)]\\) \
at 1 atm\>\"", ",", 
      RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
   RowBox[{"FrameLabel", "->", 
    RowBox[{"{", 
     RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Entropy / 1\>\""}], 
     "}"}]}]}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Entropy2.pdf\>\
\"", ",", 
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Entropy2.png\>\
\""}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{{3.537377613736793*^9, 3.537377613850136*^9}, {
   3.537377835429229*^9, 3.537377835455928*^9}, 3.553548016224095*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVz30w1AkYB/BdL9lC7Fo/YisR1ngJJy/Vtl8aR0eddpLpRYWUTcprkZew
S8Tuj97omrwkHZUdLSrRRCMhanVEmG5dN0J1cd1lWS+398cz3/nMPDPP91kX
eooXrkahUHao5v/05XDMKRQ+pjog5x1VcL26fEyHtPiQu54ZkccquFuCeMx6
PT4ou6wnjp9TcJ1iji2LWKvySA8nrljBNaksnHy9lY/D0lvGgV0K7iedMWlp
Kh/pTaLaQ/azXPGIeBtXyUdBdebbsqlZbn+y/Eja9+MImKEV/XxCyY0X7FDz
NIqC3K5a3fb0Irc3jD41YXAK4+2ShQMiCoby0rb5C6JBad3XUt5Gxe6f9jY/
L4yBscdYua2aOuwTDgU7i2Mx+PTr2JNVGiCFXbatpXHo8Gkxj3TXRH1q5yve
vXjQJl6y6duWwf3Dt2sDtxOAv4Ip7zdowdtecDHtwWlU+U35Dqyn4f4HTp1x
/RlE1I8diVyi4XdBflXDvUQ88jp5gNqzHEU0vIx/nISCvJ5W04oVkMyuIawf
nAVN70zxmjBt7HwdKla2J8OMWV0VZauDWvGm4TdvUtDx6PN007gOYh5zAm50
pyLAQyfe8ZIumrsq/84dTkOVs5/le++VOOrj8YQ/eE7138hh548rsaOveGhj
Qjp8IwWB8QV66Jh9j0fKdNgl5Y/VGOsjrn/TZpekDLBZ0RZZIfoItdju70nN
RKL+nqvuEn1kWEdN+6RnYnfvomPvN5XNhimy+UyY6aYuerrS0Z6ntJoQCNDX
eZcVnULHphqnUSVVCGOZBYPTTMc3mEhLLwihiDJgVCzRIer0/9Kmn4WyDKND
a8FAEO1K8weRyrU2S2/PMhDeSN68ZJgN9lbt61qNDFSYlbE4l7MxOHfNqmWa
gWcpc5QI/fNoSZCutmEbwMpPa96i6Dymul+NfgoxQONrm7x3zBywh+5UVl81
QGH7oqPZjRz8eSui6+YrAxTHTRw/zMpFW07/aC+ViQzDNXrm13LRYWdav+wH
JiQ2ml3xZhcA2TnLfceY0P6Huqq15AK6hUmTnCIm7jneTyuxzkOEQj3ZsosJ
h9A7Oxdq8rDlKs2frWRCvr1RGmibj5Tk4CZttiEGKs7ac+vyUVYZtncwyBAL
dbu2mDuLcMI8/2WNwBAajbEN2RIRErX/df9aY4gAxx+9UzaKcSQ0UZ86bIju
4A38yDoxhEHqNvs1CBiHRTTdaBDjs9sLP4YmgbCIcl3ZQzHG2bEhnSrPxRpI
XZrFoDwWhrtpEWDnzMwttIlhNyWTMVYQEEqf5he8Ve0b/brxhR4BjlZAbcOs
GPJBeFuZEsjRyVUbV6rua6R3DKvcR3+222RRjHn+6NZCFoETLJfZNDUSvg4M
zfnVBH5xMvby1SYxXnhwRmZG4Pt++W9DLBI6rh4JiVYEvEJWWemuJaGYT7C1
tyYgOspL5K4jIZuf7htVeX1MG+uWJYmqdxKqnw0BXnZVeJQDiTLeyWcsOwIl
eaMPSx1J5DgMMHpVnigwWfHGmQSrRLQny55A+vV8iasbicSDkw+/OBDoLntO
4XuQOOB5ub98AwGj24u865tJuIxcHAt0JBB6162yh0Ni/czHyeVOBCS10TNL
XFX/vVf+eKLyf+pOG7U=
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(e\[Null]\), \(-\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVzns01HkABfBJltZj06o8EmbK2GEeX5ZCyUVJUTGbI2s7hbSG7SGU92Kk
Yfj99FCUR7KiVmI8Wq12aT1qGo8kWu2pHNse6rSt6hDTtPvbP+655/PHPeey
ww+JI7VYLNY2Jv+3r7s7h8WSIIg/qW9TwoOXcvOKMV0JjOcP3ms9z8P6YPHS
5sUSBGu0DX1LeXCI/VYnykqCG/0lJpIKHsyrT74Y2CCB9Mo7cXU1Dy8N/lJU
pElQo5yu1lHwQP1BeXuoJZBENSgPKnl4mPJsX/pMNNiOnZf+nOMhXrpNy9Pk
AB64BBlZh9rhfsSSf6aMD2G6y+9143U7jMnTvf2lh3HstxkrqcYOO7eGtHef
jEVaZUjxc397CBL27HakjkCwsJSnPGUPOltp31kRB55NYWLCmD2a0+72i+vi
kWRoPG+5kg+Xibclo5cT0EvNisS7+NgkkJ5Kbz0KNtciq7CIj8YJ9ybT5mMI
7DDLdVbx8VSaX9tSl4jnVWqdC//ycW4R7sXfTMKKo19dZDsLUD9nudy2NRlz
I5ogTqQA2wfCKXVPCjx26ZmvOSdAA+X2eGgoFRLP0LrcHgFib7oHlKnSIGdP
qLjTArQrq9/kPk7H+FNH16GVQuzf7HpL8uh7pLFNfG19hNg2XDzmnJCBT/9G
97HDQtyZe4Kf1Bno28GtaiwWIu6h2zqnpEz4sYs9V94SInzVFn/PBVmIW6Gv
PjohRKbtgenNGVkYT9nj660jQqb1Y9bghyz0llheT7EVoUeu5k5JpWC/d/7l
1FYR3K45jKsXZMNbPe2SFC3CW5grKvKy8aVyyoWfL0LBXf9XXUbHoTscsye6
ToTgRUXtEwXHceJlvKjnrgiRbfSl08ty4KeITHsyKUKV9UUL9zM5EMvOhpVp
EdxOnWdFGZ2AQc03FWuNCLh+uh9WnTuBR+0RAbWWBG0DPPnvS2XgdnzdOWpP
cLLnI7Euk2HYMU9vxJWgOG4qeq9FLlQxkYOVPgSZyywXc0py0T88o/1aTFDP
+0QZb52HOs2O8YV7CfTfLTDrLM9DfzQ19CGGoI40ppfbytGq29jamkggDL+6
XXNNDjvRm+jZbIJnW9oUQfb5SI7q9SGFBKNVyQKPpnxov/U9uKqUQNMUuJ7j
WIA1nz9QmtYQaLcdacmpL0Cyv4B7pZEggPhsSnWm4MT5rPRVO4Fqt0gS00Qh
9SnhbOwlMI2I+rmshcLZ0fEXsYwjoioNB29QGDnt31DBeP6IscKpnYKFS6CD
mvEXstl5TReFy5tWGyjuEGQrfs0vHGH2AyE2VkoCd92AhpY5CsMemJpREcgM
crUm1RSa9Yy2ru4jGF5ye6f5Rwrm+2prAhl/Z+E0l65FQ1jkFFLH+LyDqZev
Po3l9b1FYf0EM6HPHoxZ0LAM3pBwb4DAK8yMa2hFY0zWd+k944L94kQPNo1B
Gb/PZpBgdWyXxQ82NHQ6Qk0zGItzaiMPCGlsLJfLnO4TlMvHb1QQGhseVpeG
MZ4qNNcbcqTBiT19jWKccSG/fs1aGm6VL7onGasudrMkrjTemAX1LRsiMLn8
UXxhHY3ajjP3vRiH/7i2us+dxj7dq0OHGNc3HJ7914P5v7dosJTxf6ZdJws=

         "]]}, "\"H\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "H", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV0Hs0VAkABvDLVjrJokk0LJPCzJjHJSoy+Tx6KNnJttt2VqcaZUyxeU4v
pqlBhnFvpHeaynI6No5HqpHOxsqpWRt5xI62wjkKvVOS0t794zvf+f33nW+e
bFfkdnOCINYy+b9XSSSuBKFAROisji5fLoKNKx1NFgrMnHWqQL6Yi4ANkbOv
WCsgtRN3flzChVeifFqsiwKVg38+mhvABbskf7h1mQJpDc7sn4K5GJk5WK1P
V+B8v2P8tQguqIdUSOCEAjK1Kd9FzkXX/ifbVB92gL16RHHsOBcpmrXmQfbx
aJEe6G4b4+J+tO3rIdYuDD9MvSoL58GUqwoJ1yQgoZfzdOFpHtav3lh/Oz8R
SoNm8/EhHoSpmzd5U0lwd2x+vU/MB51h9GzQJ8NVUhfovpuPK+l370VeTkGS
m6Sh1cDHkoF3p7pLU3GrdN6Y+Xs+lgs1BaqrSrCXrQgL8vZE1YCkxuHKbqzu
CZEOxnrisUZ3qfbyHjy64XZvzVlPnJiOv1Lq9mI2lS5vv++JinHnOR5X9+Ht
S4/vOswEiGiVURPN+7EkwadvcKEAlZR/b3t7GmQbM5P9owVIrJNIi1rSkeFn
VdidJ0C9seSttlcF01gUoakTIGal301FzwEo/YKse/oFWNt50uSbqob5tJ06
rpUQd8Yf4fqEGs1y6Q6ZrxDJXf5LffYeRKhf4/R7G4WQzQ8LDzI7hLiFvo0e
aiEOesS/Wak+BNNRrfXoRcacXqLt8yHcqlqlFDQJ0Zw74T6k0YBtsyUz5KkQ
/uVefRNmGQhgORF8CxHegV2tz8mAoJ9F/MsVIe9u+Ismm0wQz4+5O4aJsGH6
sfqBvEyov9F/UMaIsN1AXzxql4VQIx1KZ4pQzDnvJCnMwlnuhpyRCyI0pn0i
Ym0OwyZmYCrnpgjuayw+zz9xGJfy38jNTCIYWnm5/8zORujJx2FbRkXIb54k
OUXZuJi+7GGUjRgnk4d2bHHSouDVqHyUJ8ZBO2dr11NaFDbY36eCxajgTTWm
cHIgZRm116PEsBw1m9twLgfHX6yIK0sR4zJZpTrnkYttHjofZ0oMkaws4kt5
LiKU3xbpS8V4Emao/tFTh5fPrq+3vSlGd/E+YWCNDsTkjeKxTjG+1KwLcPXO
Q0xAW1T/sBhTDEm1WRV5UP7cqDUjSEjJFcvTfCl4iYq/Lrck0bJJrNhZQ2Hv
yO3Ms3YkHKJjbxTVUjg6oIwwMo6OvWDVdo1Cu76P9ZHxpyRWtU89BYfQwcIf
5pDgZo99+tJEoXidYdcMexIZ1X/ojjygUND7Mnu3AwmJhbSydpxC25qu8O8d
SWTP1Jo/m6BQNaekPI1xp23jevYkBfsEiWUZ4zgnn3GVOQ3+hbv1U5xInPZy
CF5lSWNWXdS4gfGHX550mJxoOEZ39Mx3JhG8da67lQuNB4WyaesY58VE7gmc
R6OlsIFUMV6Q2OT0mxsN85bX+3sYR2Zd2h4vooEyznOdC4lzuX3X9CQN/z5/
oo7x0BH2jHZvGi7pXNunjNVndBWLFtNYVH6AF8Rh/jp/m1D40XjlNkz+yti+
dDLyzFIaJS083zOMZb8vLvlbQmMrK3DRHcYVlQljXwOZ/XF8n/eM/wPQqRBN

         "]]}, "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(H\[Null]\), \(+\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVzms0lAkAxvEx26J0IyJNGgqDubwGgzLNEwotpVmdttpK45IRK6K72XFJ
w/C+aiusXEpsFyaXFJp06uCUnW7KKnW62VPUOq0KGdG+++E5//P79tjKEqRR
TAaDEULv/waKxXYMhhyxa4a6L4g48O0MmN9rJAdnwd7jYi8OfNZLzS/NkiOO
PbPnrjcHronbDWMWyqEbOv3qgw8H1pVH3t1bJkehboLF9ePg/fQ39WWpcmgH
9Ql5azggn5F+knE5FOrmY8PbOeg+8DJSMRIL0brOuB0FHCRnhDCXW8ajf9OW
3qovHDyIMP13YE4CDPvDmr1CnNCrVvgFZ+xE7ptvA1OLnRC2aoO2/UgijrbJ
ZHHvnMBL2bpZSCbB16HyUyjhDCqz0+VG2S4sCyzy/brHGZdSb9+VVieDJFht
lS3O8Or7VNRTlYJndQz942FnrOBlHFVc3g1RkH2wpZsL6vrEDVaX9iC6z+5H
rdwFLzJyzzZW74W+Y8oD2xIXFBjjz+SWfSCKfo492+UCzZjNXMfL+zFTb8g+
x+Ri9T0ZOd5xAGEH5vytdeeillzytKvrIBSRkbtnR3KR2CIOLdGlotz/nxM1
JBfazsqP2U8VGGH6fLfhKhfRAd7X5I9/xVF/tpmmj4uQR4W9HilK2JiuoiZn
8HBr7DmaxpV4nSSI9xLxsKt7yVL3fWkI9z9lcmYjD7JFQcHLDdKhWmbePqHk
Ic0xfihAmY6R0hizzgra7KeM+1/T8UzruI/ZzkOHetxhICMDovkS1bx+HpbU
uL4aN8jETzbjTIYxH59gXV+Wk4nAwY/MBic+8m4HD7bNPgTWaLLTUBAf642P
a/vyDuHkTMVY8HY+opqp079ZZCG8+5eAqCw+KtjlLPGxLDS5ifJunObj5kE9
I2b2YXATbxqPXOPD4Qejr4sKDqPt5P3Ynl4+mu85qZ+YqxBe0RosGubjSMck
wS5RoVW14IXQVIDCXQOx4axsaPQPYzudBUizsJllV5SNWt3Iw0g/ATRO33cm
s3MQZ3Mul9wsgMlng3k3SnNQ/8U+QZkiQDVRpyh1VEMp3OH5mRSALzu/eqJG
jdi0wbKUPwR4GdRcv84lF9M+F6x/e02Anor9PElDLlhTi6vudAsw0bDWx06Y
h/SAi1ub3gswpTmpMUuThynPXdVxDAKhxMoVBz1IXG8wM6gzIaDbLJDvaCBh
lOhx2GguAauImKsljSRs5W/WeNCOiDk14/4VEuH2ay0iaOuT5tS7a0lU3V53
opU2RzWqn2gj4drDSUyxJJBZfz03/y8S7G1bcl5bERAbhdY2jpHY8sB/dct8
Aqrp2cz+cRKSk+YX39J+ZHozzHqSROVw9XQLFoE4lvuYgkmhycG7NYH2765W
voEmFMolOv3iBQRGNr182MuicK7ft5e0IeC7bZ7DjIUUIq27jLS086KleyW2
FDZauwoHaC9ObGOdsaeQvzY81W8hAWnW2ah4PoW7gvzBUdql6ldXyggKt6LP
G9izCQzkW0/rElKoYRaaSWkri3M1Ik8KbcIPztW0deXtDLk3hdQLG4RPaFtW
TUqLl1JwkxaJDG0JyC54Vt4RU/hQqPF0o62p3Tn6TUL/HyryCKf9HxeKFTA=

         "]]}, "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(-\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(H\[Null]\), \(-\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVzXk4lAkAx/EhYYuOjQ3NoqlFT8PMvK9qqeGnlBIds12ybeWcsTwxSc5Z
DMLwDtVujkWJUjSPs5JRj1bKUI7OxZayKZ2rcs1g990/fs/3+fz1W+xzSOCv
zWAwPOn93418PovBEKGddfWoZT0ba1Vui3r0RNBJshgnGthYs1tgVDtXhOCS
6A+ujWzwwgJ1hRYivCasnAKb2DArzX7T4SQCt2oitLSVjbcGg9VFcSIo098e
0O9hg+qj1jlrRKho9HYOUrPxMKbfTzIahDKjgd5yB1uESz21XRaGYONt75W+
Slt0+c7/Z2jBISx1+Xid5NihRyZZ5yENxZ7N57kXcu2ww91LeSs7DO/yTYQj
uhzYHtm/j6DECB55MawI5ECepFreVHQYfeVxI65tHNTGtd4TVITD78KMXFMj
Lr4f+Jz7+NwRTB7SyYrgc7HeVnpccjkC4TkvrXYKuaga4NeY1B7FruXJ48UU
F8+kGWV1FZFQRp6xrqnm4pQ+2sKvRWHL9F6HTU+4UEyYf2N9ORqdce4hM9Rc
bOnwoTQtMfhtb865ld/yUEk59nZ3x+I4j+iKc+Ih7Bp/W0F7HKx6GY0RP/Kg
VJV+SuuVoKWrXzUQw0OAm0Oj6MkviC40Clufw4Png5yeFUficToqcemcyzzc
mXiKq5p4jNsm1h3o5uHwQ8fV9lEJ4HrMjtF7x4PPkk0eLlqJ0P3Lb8BAj0CC
dciwW3wi7lS+2nDSgrZlL6NzMhFvmv9o01pFoEWmsRqSSvElL21X81YCjpd4
zzVaSXBUXSTdAwh8hll1UXoSgg4abjWVEMhs9XjfPC8ZzCix38uTBHbr/6oc
yEzG6L6IE+UXCPjXy4tPGKcg+GIzo+oGgbOWp5n8kynYpRvq1nafwM1YNUM4
7xgiEwTeJq8IWG3Wm1xy6hh+H2l4lqchUN+xTPanUSrUB29/vXcOieyWaa5l
QSq+bM4bcmWRyDk8FHSAmQYd//cd8fYkEozN57Jy07CD9VOU4QYSimUzVeGW
6bjq5dWt3ENi9hct06bCdDC72Ov6RCQquFWSQmsZ4m3ah41jSdj5XNwydUmG
6cGE/LJMEv2b6qt3Ls9AqlPls5YCEo/PRts612SgOHd/9JiCxFTN9jUsIhN5
buezm66T0KkX16UoMmHuUi9l3COxjbthfewKCj1vArrdn5Jo38cR/VxD4e+7
ZYGu70mY+AobCuooPPX6SpVC21d4xrDzCoU+LyebVtpq8YJqeyUF8wabJ54f
SNikjqmnmilELDbS3f2RRFL1jYysRxTuLPuQJxwmwdfbVlk3QWH808dLqSMk
Ug3StF9rKER2/ZChov1g/s0dZtMUXFklAQajJIKZ9hMSbTkGjQznZtHO45ms
3ThbjlnzjDmnxkiMevff72HKoTp/tqJkgsTag6ZWhha071q7D9LODBBEOi+W
44VryYC1msTSsGZmyXdy2C9Km1VOW5BS5h9iJ0e/8UKbKg2JQtnzK0VcOWrF
4tJPtIeyzGZ1E3K467eb20+SiM/PUKxcJcecztiZV2i3n77FEDnIYRfzUDxO
e+G5aUH+ajl0tnP6HKZI+JSvKr3Ll+ORocwlhraiMnTsX2f6L2SoWEn7PzFw
MWY=
         "]]}, "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SubscriptBox[\(H\[Null]\), \(2\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV0Hs0VAkAx/GhmFZZ08qjWZvxiNpqomNe9zb5GceiKKStTtsDsXMrB0NK
MslIGO6NHsh6lJIKeSaatlg5pcKO2lpqV9tjw9axtLUM2tk/fud7Pv/+7EKj
gsINWSyWv37/10cqtWexKGiUEtEzrgCyTu8v+9gU5M1+ybY2AqzcGDSvwYzC
0HfvwkO+EsA15ntjuS0FcG6zX9oKwD2fM9S9isIZ3tzKl44CDM95XVeSRKFv
Jf9iL18A+int6a6j4DPMnqZkAjxKHNip/LALU8K4pyq5AHEqf0MPq0hsGnWw
Lr4qwM9hc0cGzaNwevhpbcGEAH1qpaefKho9HQ+ShBIhgldv1tzOiYGjiXzD
kgQhlu3dvnUFrcBDqx6j47VCMKmdS1pLYlFmdN01Y1iIhqS7XUGVcaAzh26c
shNB/GKs4HH5XlyL6c9pCRTBa5kqV3k1HhGVM9prVCLUvpDWWzfsQ92MQafI
GhF+V2VVNFbuh4z8dO9Cnwh5s3AvriUB7fmqgS5jMarHF1g6Xz0A59KImbl8
MdZ2h9K6jkRo2hoOkJvEqKGJfq32IJT+5eadh8SIaZEGFN1PgloeyMstE0PT
eX40o18JhVYb5nFXjAhvyQ3qySHkd8nMFMNi+D/M7xPsTUb5XzIPpZkEd8Z/
wzVdMqbvXF4z4ipB7COCdEs4DP6k0yfvQAlCHXz9PAxScM4oujVWIcFh58i/
vZNTMMCdyGg4pjevn9UzmQIXH8ebLVUSdKh1ToMqFULo7l3q+xIQVa7PdQap
uPVkp0vDGwnGwK0ryUyFSd7Qt4XGBLLv+r1t5xxBW/juddsdCGycdVLzIvsI
3pmtiq6XEghvZs4et0jD6miv/OubCZTxSm2kJ9JgWTjqGRVLoO3gBEvOOQr5
7G1dwiwCTmvYkw55R2E/Mk9YUU6guXux+td56aCKkl+9/ZFATse0C68oHcFj
u/17nxDIjx3ctcMmA4+aBrRnRggctlhgZl+QgRuXFe1n2SSqFxt1xvEyMRXR
OovgkZj93mB+a3EmKhZ7cvuEJCpdapXFzmqYl8bmsNeR4IdeWjtVpUaPpTA+
KoLEgG9z3YYlWTDwT+NOJpJ4XHZgmXt9FqLXUztMj5OYqg9cab8iG+s/swsO
rCAxs1nRmFadDU7i0ivDGhIBLt94HRTQ+OPZcsqwl8T9rcup3fU0ToQX5IX8
ScI6TH69qJHGqLvWRKN3mPyMaU8TDaNbJxIs35CYUJjXuWlo2K9q9r2n96L0
jxNT7TQCZuQ2uA2RSK27mXXsFxpbrnAajd+SkLIDahrHaYheXQy/MEoifU6G
4RsdDU5hwBqDMRIP57YFc6dp9JueXLpF7z02buNKQwYbzo4///w9idOu1jKf
2QysOmTW8f+Q+LBloLfPhsEPe7bVe/5LQhYy38nUlsFA1dfri/TOjgja727H
oCah+N0HvR1j2m3OLWRwa8Eh60vjJILSKsIj+QzyTwnEHB2JYvXzphIXBm4L
1zVSeg8e45poVzB4bWHB/0nv5MKsaqGIgV9axRfxk/q/Sm+zKAmDSck+Zbfe
VuXTQYUkA03T+1eLpkiEXhadfyBl4FRg55uid3VN9MdP7gyq901f6Nf7P04L
LK4=
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, 
       "\!\(\*SubscriptBox[\(H\[Null]\), \(2\)]\)\!\(\*SubscriptBox[\(\[Null]\
\[Null]O\[Null]\), \((\[Null]g)\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        GrayLevel[0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV0Hs0lAkABfDJklpKHfLKSgq9jTLm+a1LiRHFxCl27bYTmlFtGCqvCYMw
4/sISw/UtpzKozAUa08pyaOw5ZGR19rjpNpS2soj7ewf99zz++f+cVcLjwmC
NGg0mqc6/7cbQVjSaGIc/4RtZWcYcG5zXanSFmNLZmXfVDYDvH0CA6WeGPRs
RxNuLgN2YYcWilaJIXrVHNGSx4BpcdaLzm/FCPecyxm6wMBL3fGqojgx8u8Y
13wqYYB8Rm53nBXj1WCt03g9Az0xI4HSDyHoC7TzVI4yECHz1HAyOorcHEW/
1M4Bfx5cPjmhfwyc7sbVviccoJJLt3vIQsH37rumf8sBPu5+DfezwhDzyNy/
fsYBmyN/DNhKhsPPnLdX04EJKqltY2ORBGlLtZ7GS5hQxrV2CMoikB8UKxOV
M8EamzrbVxIJrxi98KhRJlw2y85Ia48js2vp3CJjFirHiGpj5Ql0jPrpBfBZ
GJYprtSUnUTmtpfV/idZyFuE9oj6KMgnX6smr7JQMW1uaFMbjQ19Le20PhZ2
dwrJ2eYYdO9/wLm8kI0bJGfg8eNYDCv3We+wZyOsnvAqeBiHJN3nxSMBbDS0
Fb9LG5DixYOcc7rpbAS7sv8QPz0Fw2cuhT9XseHZna9iRMaj1PzvXsEgGy3T
Q7g1G4+Oq3ZF5xdyIOnhcO2jErBDUnn9yCYOhGv4Hk4LEqHsNQhW+nCQYHP0
rWt8Iuav7vEojVLbYoDWNZcI+dIs+BZw0CyftZ6QybChMLtOdI8DTrnd6OyC
JFiVr/wqcJyDKZhWFaUn4XiS07t6HS4yWj3+aVqWDFFXh16PLRf7FuU2jGUk
44fx4Fxtby6C6qhfs1ekwLt2h29qBBeXLS6aETkpWCdwi2LncnE3doYmWnYa
28ttNIaUXFjv0p5bk3caiWUtb+/1clHXuV7eb5AKrWQ39y//cpHVPE+3KEiF
pRXJCzXiIV8yEXLALA3x/QPVfAceElaY61meTYOhSfsk3YeHivVabREW6XBk
Ln7vFMGDzvsFJo2F6Ui03Zjcn8VDGb1SWmgjh+3cBDezkoctwmu7P5fLYWLL
tvDv4mGEX1flu1GB1j13rt9/xUPf5ejNjtUKaAklVi46BD5Xe/Mst2bgg3/h
E4kNAc268JqUigz0+DwZ6XIm4EXf6RLLIKF647eYeYDAwwBb8eFqEr1/Me2F
MQSMD4p+L6ghsaky5J1K7YOiS0u6bpIwXFJSujeWwEy4fpV9Awl3CUvPJY7A
utSPM5+bSOgaqc7ZnCKQVHVbkdlLos0soellIgFC2+tGzbR6z+1pYGg6gVTd
NI3nsySivQySn6vdvfyuj+k8iaE7oosH5ASOmNlPSzUozLV+3+KlIHDOztjZ
TYeCveapQTpJ4MN3I09UZhQmG42+mcwi4PyTifWSVRQu6Bu8OXSGQEaw4KTj
agq0aHrDsNprw5rMfrOisD+k3bUzm4Ag5UrQ0S0U3hrkra3IJVAoH71ZRKcQ
z7/UafULgYlM068fb6WwzK8zskDt+POKCgcmhU0T+dWKPPVfF+/TxGwK7n6M
XZr5BIxK5gXnuRRSZR8HY9QWljKLHxEU+MPDh6fUrrgR+vGLI4XbY6/fh5wl
8B9A/ypL
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, 
       "\!\(\*SubscriptBox[\(H\[Null]\), \(3\)]\)\!\(\*SuperscriptBox[\(\
\[Null]O\), \(+\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVx30wlAkAx/GlrgySzippB6lQXdo6tW/Pwy8pFolNmmp68xJb50rEJu/L
stjnSefCya7yMuaOJa8pphdytXmtyNGLMnOd7lqphvHW3d4f3/nOZ3XgGVGI
PoPB2KPr/3uQpC2DIUYQQzjptYsDV437qqHFYtxckPRjyG4OiAMiZv1SMSRn
2ugEdw62RIQuCrMWw8GG6K4WcmBZlvO+x1mMU5/SYOLDwd/Gf9aq4sV4xb5i
dzuAA+oFtdNlVowX5XWigVAO+i+OBCdMnoJGFXCJJecgSrpHf8eKcJgqlniI
ujjoC1r2cczsDEwylDF1BlwMZSXs9JaehZ+FcHuoCxf+ngdbHuREwOrw3CPv
GC42nT92ZCt1Dvt6lo8qK7igUzUb76kiQcmN9PYPc1Ef/6hbVBkFg6sThhWG
PHBHPxc8Lz+P6IP7avqdeNi1SXo5oTEaczcutpce5+HGKFlnUR+DKGGK+bt0
Hl5LsysaKiXIcxh4OV/JQ54BHkfduoDxd8nBXU95UE9bLbdvjAV/ncTn4SQP
Pj2B1GzHRTSJiuKjV/FRQ/GHnzyJg5V2zsLPmY+IW6RvUWc8wpJL0l8e4aNF
U/ZJPpyAzreRtaxEPk6681rFg4lIby2v9iziY8+z/KFt55MQxT02bt3Kx8Pp
V7g5m4R19yZyFcN8RPbzBU4XkpHHyZ9xnuIjcI3Qe4deCipm6hUUU4Bk+/AJ
96QUsAcWdgg362wzzOidS0G4Ce+fDx4CdGTN2o1JpRhPr9euDRaAX7Xlzaxe
KuJKcwoY8QJ8hmWtKjMVfb3uLoF5AigeeX9oN03DWWO36dYaAQ4Y/NwyqkhD
V6FhjPZ3AUKa6es/mcugvtMWmj8iQIlNMYvMlWEw83Wh45QA9+NmGGGm6WCr
4jZojQnYeS2eW5OXjlhnWZ/lWgLNPeuz/mBm4O71g7UHeARyOr6ybYoywApK
c5jcSyA/cuzUcZYc/cPKgKZgAsnmVkttC+QISfQ8cVtCQL3+G02UTSYsqgix
OUXA6IveynvKTEw4dntWXyNQyb6RoLTPwuvLNgO5jQQcA3/1ma/Kwt3eYvl9
DYERYXPt/o3ZaD6UXeD5ksDzkthNLnXZCAh4rzabIDBf50fYblXgafLbXLcF
JBY2n2uQqRWo12cWDzJJ+LJ374rbRiGlL0y/1J5E55HN4tN1FBzszL79wCVh
ERR2u6iBgjeb3cjjkQgKu7akt4nCl9L8/TKdZ86Z1Tq1UGjw95FZ80k4ZEzN
zLdTYMYerfYTkEitvZN9aYCCm77KpoEkQS72rWmYptCcsyhV4koiw1iu/9cs
hRPah5fbdX627L6/5VcKVzTvr5ruJPEDy2k6QZ9GVeLekgqdf9li4ephRMPX
Sy0ZdCMxeXjk6RCLRmq5926OOwnXEyvtlljTyFf6GUl1VpwUSVxW0+hedPdx
t85rI9pZpetoRF8bdj7pQUIkqwgJd6Rh62etzRWSUGa9aVKxaTBZydSIzmOX
LA2fbKXxvdBvw3eeJJIKs9XbOTTadrj4t+ncWfyAIebR+ORx9K2JF4kV5V9F
hQIamvXa04d0DvyNU9ZF0liQMv6xTGd1zdmpf11oYDwwYkLn/wD2wSIy
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SubscriptBox[\(O\[Null]\), \(2\)]\)", 
       "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {200., 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Temperature / K\"", TraditionalForm], 
      FormBox["\"Entropy / 1\"", TraditionalForm]}, FrameStyle -> Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox["\"Entropy at 1 bar\"", FontSize -> 34, StripOnInput -> False],
       TraditionalForm], 
    PlotRange -> {{200, 1000}, {0., 29.599288280794777`}}, PlotRangeClipping -> 
    True, PlotRangePadding -> {
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
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"H\""}}, AutoDelete -> False, 
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
            "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(-\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\""}}, AutoDelete -> False, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\""}}, 
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
 CellChangeTimes->{{3.537127835146282*^9, 3.537127858874453*^9}, {
   3.537376134654784*^9, 3.537376159787441*^9}, 3.537377381731578*^9, 
   3.537377563197335*^9, 3.53737764528136*^9, 3.537377737263022*^9, 
   3.537377773742819*^9, 3.53737780886218*^9, 3.537377846694539*^9, 
   3.53737791777958*^9, 3.537378115798038*^9, 3.537378147270885*^9, 
   3.537378177852052*^9, 3.537378211968826*^9, 3.537378326114375*^9, 
   3.537378994356232*^9, {3.5374802073839*^9, 3.537480236108442*^9}, 
   3.537511401576837*^9, 3.537512096347388*^9, 3.537512789271902*^9, 
   3.537736573194888*^9, 3.537736604125804*^9, 3.538177295626075*^9, 
   3.53817732953005*^9, 3.539267342680158*^9, 3.539267374089908*^9, 
   3.539629488606021*^9, 3.539629520434173*^9, 3.540300021990819*^9, 
   3.540300059160921*^9, 3.543309196592618*^9, 3.543574036695485*^9, 
   3.55128949154015*^9, 3.551289523591894*^9, 3.553196267009741*^9, 
   3.553196299762727*^9, 3.553539539543104*^9, 3.553539571566306*^9, 
   3.554812027082242*^9, 3.554812059534306*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJwd0HlQ1HUUAPCNBDckcdYdLI49fvsViVSgiDPwLQSBcQkrM5AwYrDgJJQg
y6pgiDqIBDQ7yYpx2HAERLACIZDpImhyLSiCLikgsMQlKSOLIyP1e78/vvPm
M++Y977CQ9+ExhmwWKxA+mF0c7uQIOUcBRbrse9wGg+Mp8zZ04y585NyHmhz
f/0lZiv609PPj/NA/qRv5gAX7Ze7KZ0H1zJN48LM0GxTcSYPHP/6MQbM0a+0
Ned5sFtSFmlOoUl5chEPREnNARoHJi+YbOdBiWeubDQM7aLSGPChPD3esDIF
faQrxIcPT51HlgYU6BAv/Tk+qApeWJU1owPSsnr5sGk/p3HnA3T15peGAlht
Gc+N1jP7Xb5oIwCLwj3q59uSadtvk+wVQO9kRYTYGT146uJhAZj0tbg4RaCX
uj1yBaClNOlzcrSRXXKtAMb1aRZvlOgk35G7ApDFa/5rbkO7vK+cE0CRj63/
h1p0sevyRiEEqj965LOGHntzxUYIrq39HWrLFNqz1zP8hHDVKmnLa3d0ZLiB
VAjt/D8qHkahzToGzgkhuODd0pQMtJQXUC6E1J9MnjSVoev62J1CeEBKZZIO
dJLl2lMh3LD4JLVpAs35t2ZdCG4N8rYWg2O0bUoLrCgQqzoOySm0k6mrGwWn
d5dIL4vR+iLrcApC/berDn6Ftiz2OkZBw73GaF0WusLX7gcKSvSLoZsrmXql
dz0FnZfaflbeQbfbFvdSkFqdu39ch+5ZvTdDQavEOLh3Yypt1p0dG0SQnZT/
W+oONMc5hi+CAsNKaaYvuvbPBVcR2LgmxNkloK+v5oeLIHDUvrs4G23SLjgq
grffq0qur0FPrHTlicCnU3D6VDdaHRVVLYKbC7vm62fR+tmAWyLoUf1z6Yyx
DP+z7vMxEcRMVdWZ2aJ9v4ZXIshp5BgFBaDtIz25BObWt7TrEtH6aoUdgeFW
7pB7Hnr59yU/AqGmtx2cGtAbnPxjCXw5dGJlSYN27FZlECjhdm5lL6FHjxwv
JPDt8rW026ZptFW73K8SGPBoBLEd+uxObg8B6jsY7mdsM5ZFW6bWHI60Ryvy
XtC29F5QpDige3SaXgIJfkRX+TFafTKnnwArrDDH2AXt5bk+SMA+4cT9IUBP
C2YeEjhTw44/KEbXfi95RGBkvnBtkXGQ/hbt9MQmYuSNtuws0xK4m7woc/FB
r3tF/E0gJiPaosQf7fe4d4xA843Fhg/2MvO3u40TYLNOftbC+EBiNe36LGXi
wBdo/crZCQKvswdvvhWEvv/MY5JAYHe0JJ/xees62leMn82aB6N5UeZTBHzz
3uE4hqCNuvS0izTKKjVjycvYaQKLptbugfuYfmqI9p59zQNaxlVBYh0BhcIr
VhrK3CtvoP0/bVjZxQ==
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{280., 7.6000000000000005`},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameLabel->{
    FormBox["\"Temperature / K\"", TraditionalForm], 
    FormBox["\"Entropy / 1\"", TraditionalForm]},
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotLabel->FormBox[
    StyleBox[
    "\"Entropy of \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \\((\[Null]l)\\)]\\) \
at 1 atm\"", FontSize -> 34, StripOnInput -> False], TraditionalForm],
  PlotRange->{{273.15, 373.15}, {7.617024523904547, 10.44860436511226}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.537127835146282*^9, 3.537127858874453*^9}, {
   3.537376134654784*^9, 3.537376159787441*^9}, 3.537377381731578*^9, 
   3.537377563197335*^9, 3.53737764528136*^9, 3.537377737263022*^9, 
   3.537377773742819*^9, 3.53737780886218*^9, 3.537377846694539*^9, 
   3.53737791777958*^9, 3.537378115798038*^9, 3.537378147270885*^9, 
   3.537378177852052*^9, 3.537378211968826*^9, 3.537378326114375*^9, 
   3.537378994356232*^9, {3.5374802073839*^9, 3.537480236108442*^9}, 
   3.537511401576837*^9, 3.537512096347388*^9, 3.537512789271902*^9, 
   3.537736573194888*^9, 3.537736604125804*^9, 3.538177295626075*^9, 
   3.53817732953005*^9, 3.539267342680158*^9, 3.539267374089908*^9, 
   3.539629488606021*^9, 3.539629520434173*^9, 3.540300021990819*^9, 
   3.540300059160921*^9, 3.543309196592618*^9, 3.543574036695485*^9, 
   3.55128949154015*^9, 3.551289523591894*^9, 3.553196267009741*^9, 
   3.553196299762727*^9, 3.553539539543104*^9, 3.553539571566306*^9, 
   3.554812027082242*^9, 3.554812060862324*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"s0Hplus", "[", 
   RowBox[{"1000", "*", "UK"}], "]"}], "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.554812086686574*^9, 3.554812112430093*^9}}],

Cell[BoxData["16.12874155345534`"], "Output",
 CellChangeTimes->{{3.554812098001289*^9, 3.554812114387989*^9}}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Enthalpy", " ", "at", " ", "1", " ", "bar", " ", 
    RowBox[{"vs", ".", " ", "temperature"}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Note", ":", " ", 
     RowBox[{"The", " ", "potential", " ", "functions", " ", 
      RowBox[{"(", 
       RowBox[{"enthalpy", ",", " ", "internal", ",", " ", 
        RowBox[{"etc", "."}]}], ")"}], " ", "give", " ", "specific", " ", 
      "energy", " ", 
      RowBox[{"(", 
       RowBox[{"energy", " ", "per", " ", "mass"}], ")"}], " ", "because", 
      " ", "it", " ", "is", " ", "more", " ", "fundamental", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"simpler", " ", "units"}], ";", " ", 
        RowBox[{
         RowBox[{"just", " ", "squared", " ", 
          RowBox[{"velocity", "--"}], "Sv"}], "=", 
         RowBox[{"m2", "/", "s2"}]}]}], ")"}]}]}], ",", " ", 
    RowBox[{
    "but", " ", "the", " ", "specific", " ", "energy", " ", "varies", " ", 
     "widely", " ", "due", " ", "to", " ", "differences", " ", "in", " ", 
     "particular", " ", 
     RowBox[{"mass", ".", "  ", "Therefore"}]}], ",", " ", 
    RowBox[{
    "the", " ", "plots", " ", "are", " ", "given", " ", "in", " ", "energy", 
     " ", "per", " ", "unit", " ", 
     RowBox[{"number", "."}]}]}], " ", "*)"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"h0eminus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\>\""}], 
       "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"h0H", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", "\"\<H\>\""}],
        "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"h0Hplus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\>\""}], 
       "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"h0Hminus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(H\\), \\(-\\)]\\)\>\""}], "]"}], ",", 
      "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"h0H2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\>\""}], "]"}], 
      ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"h0H2O", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\>\""}], "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"h0H3Oplus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\>\""}], "]"}], 
      ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"h0O2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\>\""}], 
       "]"}]}], "}"}], ",", "\n", 
    RowBox[{"{", 
     RowBox[{"T", ",", "200", ",", "1000"}], "}"}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Enthalpy at 1 bar\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Potential / V\>\""}], 
      "}"}]}]}], "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Enthalpy1.pdf\>\
\"", ",", 
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Enthalpy1.png\
\>\""}], "}"}], ",", "%"}], "]"}], ";"}], "\n", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"R", "*", 
     RowBox[{
      RowBox[{"h0H2Ol", "[", 
       RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "273.15", ",", "373.15"}], "}"}], ",", "\n", 
   RowBox[{"PlotLabel", "->", 
    RowBox[{"Style", "[", 
     RowBox[{
     "\"\<Enthalpy of \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\\!\\(\
\\*SubscriptBox[\\(\[Null]O\[Null]\\), \\((\[Null]l)\\)]\\) at 1 atm\>\"", 
      ",", 
      RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
   RowBox[{"FrameLabel", "->", 
    RowBox[{"{", 
     RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Potential / V\>\""}], 
     "}"}]}]}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Enthalpy2.pdf\>\
\"", ",", 
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Enthalpy2.png\
\>\""}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{{3.537377613936111*^9, 3.537377613975991*^9}, {
   3.537377835468795*^9, 3.53737783549865*^9}, 3.553548019495336*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVxXk01AkcAPDJ1uYVWyMKTRkquhePiKbvN0eTMsU8trRrc2wx5KbkmDDI
zPD7OXJliw6yGXIMctQv85MXa1OO2iipaT26XtuU0mCPPz7vY+wXxj+qwWAw
eP/5/z0cjgmDIUCjLChWV+RTDj3clcMLBfhyfbUnuzif2nGQrytfIsDqTkMd
Z2k+ZRER8G2gkQBtZz5JiLB8yrA851XfTgG6B8sSjG3zqdda4/WliQJMdzHw
4XafpYgnhCOoBfhugco073UeNRQ/9otwKgjbhBXyjea5VLSIp7FrRQhG+QwJ
RE8zqQf+zPeTy8IwsuhkzKrhNGpYKnR0FYVjTED/m1FVIuWx16v9Tk4ETth5
znfWCaW2xBzxtiQi0exxwMiLAQuKTO3Z1FEahVLnHFPtD8EgT+y+x5dF49WZ
SsHI3QSwVaqKH1XEoPXDV7pvXNPAeYsoV9h0Ao/U7K4615MJdUpOg778JLYf
cioJfZkDz0SZlY2yWCyv5Iyr3POhUBN/j249hU03vFyZi4qhZnr1crOmOLQf
nZDFpvwK+/v8CHVXPKp8ebrtJmVQS9iN9Pcn4FR8/2CI+iJEtHLczvcmYiM7
J9dJfhnae8o/iEeEKF733DsgtxyOcbffFPx5Gg0ag0yvu10F3mDRsHVMEjZf
SZtxsPoN7k6P4g11EkraXIc0l1RB1JCdvdWpZFzuzatSdcvAb42L6655KVj3
8zNi47UaSDYL+ZublILimCEbR+taSGaPMO7PpCDvQM6GRcw66JKqTSdFIlz5
WM/k5D91YFdt8Vw9LxW5622Kp57WgwoN60slqZhgZryC1dcAWd2ubzuXpiHX
zrdguE0OBzXz25VZaRits/NsVVEjHG0hL+XppWPlOWWRSUYTXGaXsThn03H7
xDqWLKAZFAlfGYFLz6Cfy62yew43wHTfwpk1hWew4LDR5kLzFmjp2yB9rJuB
ay1WbYv8rhVyuubM2eczkGpW7lbNtUJR1GSQD0uMTd9wH6Y/a4NkvdVLTIrF
6OTPCGhoa4eaDQt6otkSfBKZMpd27SYs/jjPoOOCBAe4F3WDxbdAZl4nvGAm
xQe9GRZTcRRs9bu2f7ZaivWWSjNtq9sw5tJS77kpE6t93U5UXroNjy7HbYGG
TJRNGN8tMOyA2Qb3HSaWWejVv8uLkHTA/JbIxvSaLBy4oxXM/9IBbua7nROs
CXRj7kgShCmg1/t7QXADgUKqZVA8qgB9/8C2840EhkhsNePGFOAfeFH7fjOB
P3k22we9UMDXyGX1Vu0E2r+WX9o7roD1GZ+/znYSqF5eG774nQJS66nM7IcE
xoZWaGXNKoCz0K22cZrAqFV5TtksGjK0xBoTagL9J5ixSatpGGQqPAznCOQ3
ZFeFs2k4zrKaFmqQaOlC6LivpeGchb7DnsUkfogWjzE30zD149jAMIvEsN7T
CXn2NDj4GphqG5HoUzh3XcShIesYPxaMSTzgl6iMAhrWRnSyrqwjceuXuL0e
jjTw0yuPhmwl8c2aE/p6+2i4IH3eXGpO4si7j/sW8GiYzDZc1G9JYm9L1OlP
+2lIKsms2WZDYtWBiPEhPg29ZXcYgu0klhi+N+jyoGFFxRy/xJ5EyV+hvKYf
aPCrsin/g0NiXO3bpIpDNNTUhn/+B0gUxB+XFxym4V+1rU85
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(e\[Null]\), \(-\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV0Xs01HkABfCZ788uRYkeJMTUkmMxJEKTizzK48i227Gq1aCMsnlV8hgy
3sPvl9RBNlOsthXWa5JWtezEpgdavSip2VNJ7W4vzphkf/vHPfd8/rznmgv3
hUQRDocTyOb/9hMIeByOCHuWttm9es6FZ5/vsmFNEVavd3um+YKLdVtDFrXp
iqAWdv+wgrV9/O7Po5eLUFQ/MCeMtVFtycv+9SI0ur9WXmM9ofOsRZYuwtso
i/KfxrmgH9Je7moRDrWUcyImuLiTOhYpnoxBnn/64IO/uUiSBBIPg1is/D2t
ZtskF4MRev+OL9yHV2bxc8JnuBiWir0CJHHYbBfnDA2CLZtCO6+WxMNJUntc
rk1gs/+77Q50Anwu9eed0ydgsvusu2SJuLuOX+dkRNCWfu1WSH0SqNjKY1Xm
BGuV7yrundmPMIlaP28VgbeN5Kj4/AGsflzSpcEnaFYKWg3bDsLJ3ESDciZ4
LCk6K69Pxt2FrfNHBQRlWriedPEQJv0zNgZ5EzSqTJdYnk+BRwwM3QMIgvqF
tLonFTq3nA2ufkXQRLuO3L6dhqSnLqOWYQTxFwXBJ2+kQ+sR30VbSNDZV/u2
YESMZSY7FBIRwS5fl0ui+xkI9cpUpsURBA6VD6/ZnwnDX+47aCcT/KEaxQV1
JhKvu206kEGQeMfVzfHQYahuln7YmUsgXLExwIObBc4S3uDTYoLDlrFvfDOz
YL+hFn8dY202whn4mIVZ3urk7kqCHqnaYlwiQZDv1OM1NQSuDfZP1Nxs9G5u
GrGqI3gHoxZZYTZ+Oy3TbG0mKL4W8FqxIAdbqyvUhh0EW7WOdyqLc2BYkC+Z
vUIQ1cFUly7OxbfyBrfUXoIas1PGgmO56OntzTt4i6A7bZoTvSAP/YWvKoPv
EFj4a35cUZaH0FLfscsPCTr6raQPFuVjflbZhQYlQUnPJ77ZyXx4nTfpsp8g
KE8cjwk3LkD1QPl2p7fsnsWmuryKAsgqTbsNVOwfVp/1JZkVYln98Dc0h4L2
e+7SrqpCKKqlGTmaFOr5zeIqSykmRhPu6+lSsBXWBc00SNF8PVKVsoTC2MaO
lq+ti3Cqyr8x0oTCvZoUG/fWIui2R5cqV1KYad28judQjDp5io7SmoJGR4I8
t7EYTyPLAq84UAjm+3inraFxIvTlZb4rhRvb7UR7WmmkOTooeB4UDCOifz0p
p/GleUyvB+uI6NPzBtppDM+r7gtnPZ2wsMWxk8ba53qDVaxX5U9NzyhovK94
88jIk0J2y5WiI3dp7J1tmtL3oiDQDG6Sq2hs67Ozprwp5OsUkBdqGtrtu215
rIf0urcYfaJxsUZm78F6r7GjSkwYGKTrrs1gfcLe0NNPm8GQ3T8b1Kwnw8b+
HDZm4H+8ccc7HwqeO5dazFvOQH342U59XwrFu0KS3c0Z/Py9aZQ965XxCuMf
v2Cg5Ufv2cc6JPdsVKwtA8V0bPIE6yrpk3YZn0Hi89rUuX4Uxo8Yzb3twMB8
6JHYinVmZVGjkzODzIbAnN2sb5y6yhG5MLA9kZOfy9rgzKeQSjcGo7mXpLWs
heeca28KGBQlfqAVrBub4qZm3Rm4hdscVbL+D2hzEIw=
         "]]}, "\"H\"", 
       TooltipStyle -> "TextStyling"], Annotation[#, "H", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVx3k41HkAx/GZSbRJuhSaB6no2Pr+eEoqsz45NrUUs+3j8Wye7OgwlUeu
TmYxyPn7pe2yPQy1elqLzThqiqwcK42jicK0RTYlHYu2xr3f/eP9vJ/XEkmI
eJ+Ax+N50f6/h0hkzeNJ4bPoqqlTE4FL49bFXQZSxHW76btSO/mKF5QaS1H2
a9/wNmq70AP6QZZSmDmtavGlNs/LeNPylRQ9AcUJ4dQDs/qUimgpQvOrhvKp
2aesq/OYFOdFT9VmzQTtp7r3yj4dREegSexn6gi5l2DLomBUbTm/vqOV4GHg
3H/654fAzm+ecaaGoCtV5uopP4JG4VlznzaCXdv9KuoyQlEbahm29jHBmsg9
/vZsGDx4+e8HnhBw8Y2rqxXh+NLK5WZzJ0Fp9P1mcUEEHN4+Lb6uJXDsHc58
ci0SzYMRDyV/EbivkZ+VlR9FTZK5yOU5QXGvqMS09Bhc/Sqb+D0Ez+Vp18sK
jmOgXXLm1guCizPwIOL2CQz3mijO/U1QNGKx0Lb8JBJW12u8+wh2tEjYsfpT
OKEXL7Z/TXCD3aTVaKJwLtlNz/ANQehtkXeWOhqOHgJtzQBBRWPeULJWBtGl
poncdwT7t26slHb8CPWSC+4BHwi82i51rY+MQaXT4U7XQYKGkWe4NRYDzTR3
hcUwQXj7ps3rTsQiQm9xSudHAsnSbZ5b+HGIvDD5h+oTQaxt8ODWmDhMkzwX
ntRRW2l5reNxKO28l283SlCfOmbTL5ej4UVJ/Oxxgk2Fdj1j/HgcWH5F/mCC
YBjmSkUK9UhWc+EUQfp9z3e1cxJQ59ScV8Nj4DvjfEVvegKyzdRHc/gM9qm4
Kz+ZJMKmqvUdJ2Bw1SpHKDqXiHD+rmMh0xjcixrlBc05jfbMjsztegxsvjEY
X3rxNPpGAyWO0xmoWlamdi5IQqUuWLRQn0FG/SRjlZUEtyrZXX0DBpfC+w8G
CJPBWc8Wv6KONbEwts5MxgdttqxmBoOildMbI6xSMOXv4KP8goHhR75ZdXYK
HkV5OmTMZFDAFMuybVPht1daHWfIYK0kf8dEYSoGc0+/DJnFoHubSvnd6jTs
jFom9DJi8OTqyTXOJWnwt2zQOc1mMFHi42Rtnw5mz5tXQmMGeqqwssSidJj+
a3RER+3NfO0etZ5F0beO2X1zGKj9ifRQCQvDnT3PaucyMA0MupNVxiLX06Oq
gTowKNeo9SYLh+2/K9TUo2HzlesqWEjcowPaqFckfR6dqGWh2mz2opc6XlmV
duYxC+kKn5eCeQxEBt43ykZY1POrB0CdNCtZ8HqMxe4pW7Ubddvce7vMJ1kM
jbMFHtSHhetGZAIOFrrdwd7UP9uZungYcoh8r3u/h/rT992PuoQclmuZIRm1
yw9mNkaWHG53XNTEUafvFx93XsLB+/GkMpF6WWit8JflHKIeqsNZanHi9X3B
azk8+jPo3yzq7NSemwqGg7SupT2Xuv+M+UyNPQdejUN5HnXM5bQihw0cVt3V
O1ZIrc6p40k3cqi+c8i3mHrRtUnx5c0cfFWaDWXUkt825DWJOLwt32iqoi66
ceTzlDMHeWmOroL6P7MVKeU=
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(H\[Null]\), \(+\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVz3881Accx/GjFSuFYemciI3M1LF+UPT5pEfJ/MhuelQrj4nEkcrhKBw5
P7vz/dLvMmR1qJD87ESbiklKE1lXGTMWtVax7w+ifffH+/F6PP98Lwk6IArR
5vF4Ptz+72Y3NyseT4yuR/w9MxsocO/wMNPoiLGzI6j+JmfXbSLjWn0xBhhH
WVOcHaNC54RZiDG5NGd6z3UK+Kq8sa51Yrx9v+2au5qCl3oj1UVJYvTiu/Bn
GikgnhEbYEqM22vMX8bcpKA3YWCPjApH6fCIMqiVghi5j/b6hZF4tWdYGNZD
wa/Bhm9GjQ4g5j54v/8PCjQK2QZv+UH8uKJz+/I3FPh/vaOpNS8KH/mvNuF/
oMAh9vsAJ0KC4+0KdvZ8Gsi0DvuWomg0avdeJxDQUJt094GoPAYjl1obvfqC
Bueh8bN9JbFovnVIv9mZho0O8mOyeine1zOIvO5Bw7UhtxrT2jjsybV5V7uV
ht/lyrK68ng0kop0IoJpOK2L92IaD+G3I2OJXhIaKtnFn9rWH8ZRq0i+QwoN
vl1BxFRbAqaM7TR1IWmoItY87e5ORD+jwJKZAhqiGt38CjqTUKrru6v1Cg1N
Hap32U9l+ENWmaS+kYa9Hi7N4t+ScVHvq6qydhp8es5oVsam4Knygi2tfTS0
s/14fSoFvYeDZfkjNET3rlm74tAR3DFm1CuZoCHI2tN7vVYq7j0sVMbMYuCI
beRbj5RUvPt4VUScIWfLp7yH71Mx5IRI85UFA22KKZtRuRy1n2su8ZcxsKbC
cXBKKw3/fetdrO3KwDjyq4uOpuGLPHvW2IuBnLvef98xSEeT4xaDAzsY2KZ7
smkoJx3PBE6/qQhlIERN/njcJAP5ao/dKikDFyzPC9xOZODE8wS2II2BW4mT
vDCDTJyzp3WJ3zEGbLx03lufzkR+bMLlL4sZUHfZKZ4YZ2GayGzn3KsM5LXN
CC0LsvBlo+2+T24ycCZ6NDxQkI1X/jFXmXVyf0wW61udzcaL6Xb7+58wUGk3
uyPG8igWlhSfvveCgXkTWotaCo/i6+OzRtUUA+XCa7JCWwWu0+s+1z2bhWVB
l32nKxT4y3Dds4vGLAx4qqu32iuxVCHfFG/FQt+Fww5Qo8SMpmYDqSML0zXf
uFo55WCTelA7Flj4SC2py6jMQXtTs3QHHxb8hJs2Jq4kMF+rJdRgFwudAcvF
ETUEBjb4SSbELJgGh90oqCOwOffneKdwFoLDiuc/bCDQLFyYfJDzpMSoekUT
gX0CA+Urzkuz6MnpOwRuSe1S/RnBQlr1T8rcxwSij++TnkgW3HT8qupYAi2G
vLAuioUsvWztF1MEyppubBrn3GN4y58/Q6DmpL2Po4SFfYIVrEybxFOb531X
wfmco6n75nkkLqjsiFZFs0DtHHikEZA4E+9ZejKWBffdi2zmW5AYIFJXPOKc
s1cUD0tIVNvb1RpKWfgs6o7g4uckxvXrtuRwFmWUhUQuI/H1hnZNehwLhYrB
hiIhiV7mzoO3OY/m8ud2O5F4mSr9SyuehZR8ZeWq1SSGXsqcSOLceb6VJ3Yh
8XYqPXmD88KSGVH+WhKtdoVqTXIOurJadd+NxOSVfTrOh1iorDpIfwAS+xd4
LJBy/g+8GWJn
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(H\\), \\(-\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(H\), \(-\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVxXs0VAkcAODh2B4eJ0p55NSkQmtlkjZk9vfzqKGlpFq9FUumqCZjUyHM
eI65N6uWljF5pkJmkIi9CDGXHaTyqDaU1rZUq3SYsLt/fOdb5XfaO0CdwWB4
/uf/3dhsUwaDi3Nperp2fAnlrOAs75/PRdWkzuTbYxLK0cdbv2IRF7ccch7K
3imhNvCOzwtayUXWC6FSzVJCGRek/qX8jovx1j3atYNZ1FvtEbk0kou7HU0I
9Z1ZFPGMcAEVF0XTGikDFpnU44svf4yaPIG9S25nPOvLoPgCT3UngxCMtDr9
dltHGtXlr/d+dMlpZK1bkzmhT1D9oigXD8EZfK2mM9pTLKT2bN9f25zKQ9+w
R17dSj5lFeZ72IY4i7nalgXHa+woUqiwbJCGYkqxos38ZChURLb97l3Mx6Ls
eUHZC4RgNzxx7WlhGIrad0W8uyOGrVaCn6Pu/oSntoucdy+7ArJhdrlhxTkc
Tl7IY89kwB+ClKLK4nB8c4f1Tt4ugfQFSPNrzuNHu0/vx2NzoHRqxTLzuxfQ
3zLXZ/VEHuxQ+hGqlos4zx8eamUUQhnhMNDdHYGvxtNnO1g3gVfD9pK0R2Ir
99Yv41m3oVZR8E/SQBR2fDnDL2OXQiDHvo7bewkTdeMCh/eVgWdPRv+msGjk
Bj/SdS2RQevUC7ynisb2hfN7RSo5hD522GJ7PgZvBis1ozdWgN9qdw8ntVhk
Hjyg2R9XCTHmIR840bHobuoreN1wF2KYA4zOL7EoKrpWPvi5ClpEKrNRgQB5
9dZRB9yqwaFkw6BKTYhvRoI+JsXWwAQay6XJQtS7Whvo/vQ+iNs8xpp041CL
lzuja1YHPguu1g6L43ChR+7A5SO/QUA1mZu2NB6VnR4ldTIK8pjXTdhX4lE4
EDC061w9NEZMM4J0E1BaXKKjWNwAZt/P/7I6PQGvW+QU3rjfANXKdaI+/USc
++br7b77GyG1ZZbFlCSiCzfjYqLGA8gIHT1x1CQJhzgyaXL+A4hZumKR6bUk
/KSTkJ7u1ASl675S8JnJKJuzOmz+dxNofVQzashOxkOJI3yRqBmKWbKobHMR
CvrKmTF2LbDe79aOmRIRJuhs1CSHWuCle7V8r2UKbj7EsQmOeQhP8y5YQXkK
Hr20tuKDVSvMlO9yNLURY8urMfFWZStoVJ+tjC8Vo1aXbf+dkDbwYm3bGrGJ
QHO7vqrnRgpoP2zNPVlOoAan0eFJjQIM/YPuSyoJdHnRJyuoU4B/UI5OZxWB
Ji621mH1Cpg+u0RuW0tgyP57jvotCrBI/Dw900RgPHN9nneXAoRyKuXyEwJ3
jO2Vdr5RAHu+V1nlFIHh0+NHu/RpSNROUv9TReDMrea8HAMaevQa9xjPEujf
YTDGM6Yh2MR2KkqdREq+KW0xk4ZfNxg6u2mRyLIXWe2xpGHy4MtH/SYkSqrt
s3qdaHA+ZmSms5JEqXo+56YrDeJA73BYReJztxtT5zk0rOE1meSvJXGZZzRv
uScN3vFFASHrSXR9VVZ2ZB8N2aLBKimLxLl6g1TrgzSMXjbW7LYh0VBmFs44
QkN0Zkrpt5tJzA90PZDrT0P79WYG157EbtUPe0MDaTAonPXO3ELikIuRjyuX
Br/bmws62CT2WIh9lwbTUFp25vMckBh7teLUyCka/gUIqVPG
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SubscriptBox[\(H\[Null]\), \(2\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVx3s0VAkcwPG5907pNaVSGCOSyNoyrCR28uuBaFgmsm3bsh5llCOvNmI8
ZvIac2+2trQdtJFTeSSSyG4/HXqgyPYckscpUVueWXm0d//4nu/5rPQPkwSR
HA7Hje3/bxeJjDgcKaxxX5ByScLFLY3OemoNKexUxC6KZ/2tj0Tr2iIpjOSU
ZXuwtgzfPzvYQAqzGw9fHvfkIv9C1kDLJinoX4ltcmT9bsGb8rx4KRwZekr1
fMdFuoPe6jAphd18M0++GxefHO0KlH0KgSZ+YkSGMxej5G7kZu1Q2PHND4Ex
9lx8FLB4sH9pGHByP7ZbCbmoVsq2iuWHQKpI2Gm0moterrtrG7LCwV6QVqOv
y8W10b57regIWOKimdXN4yKjaDSvy4uEsLij4yUEF6/F338oKY6CEN+anUVj
FNr2jpx5VhgNtj7xemEDFDqulf8qu34Y+rZf3GDTSeHVXlGFzrVfIL3D+d3t
NgpfyTMvVhYfgaiT5t2yuxSengNNUTUxcLea67rxJoWlEyuWm16PhUvZg8XV
Vyh0b/GnJ+8chZnQ8SHrfArLaLv2trY46Fx+zKTjFIXhNSKPnOZ4aBXnPXdV
UljbeGE4vV0GnOETz67IKNznvPFP6fMEMOl5tO1lBIVuj7PV66MTQXtVrnI6
iMJ7E51wYzIRbCbEhi67KYx8YmdvHZME3cqCBl83Cv1XuYg3E8nAE+zpDAQK
k0xDh5wTkyHCVzfCxpq1YTundSoZvBYKjG3WUHhHOWnSL5cDL3nXPEM9Cu1K
LLsnCQV8XROd+mIhhSPAL8/LUIBFT05TDEGh6r74n3rNY7Bw1ocfnUZJ9Jnz
W22v6hgUJLu+fd1HYlA1c/7EshToW/Kver+axHzDcwLRyRTwQr78rwck3o77
zAnWTIWc2dwP2+pINNmhMbXqdCosC/op8lIFidUtZsoXWmlgUOhj9aaQxKw7
M0LDnDToEpenTmeTmB3ZH+InSIcOn1MfPyhJTFq2YpHRmXSAzWPGixNILDWb
1RhlmAG9Ld/Tc8NJnD9K6NblZgAj5OGrABKLhVdluaZKiDFQZ6V5k7jO/7L7
dIkSNlmUKP2cSexyqS73Ns+EA/d22PLtSHyWH7vWoSITvKdNNc6bkzhd4fmt
kZUKTtlr0bwVJHKrIypTSlXw2GzKqViTRA+hk2PcehpStNyatUgSm/daSA9U
0KAnHJwfNEqgTkDwzZxKGvI8d901ZR0Q/AevtYoGx4N+SQMjBH6OWFpuXUvD
NpXfUBjrNWnjn6fraXiZqFkXO0ygovxW5vGnNCR5WxgcHyRQpOFRVjlBQ+VI
yNPq9wSmLUgn307S4F7lsS+O9ePFt734MzScSVCPbmJ9UGA9ISMZ0Fyp5tW/
I/B3S50t2+czMK823eLhAIGf9nT9rRYwoNIosux5S+CWn3VNeAYMuEQ9Kipg
rdonOeKwkoGvRs4a72dtHF4vKFjNwCFz/SXv+wiUpFwMCl3HQGV+a8fYGwJz
ld1VeUIGTG5pi2+w7j/On9dmxcCBMbImlnXi2cxSmw0MWFQ1ZH15TWDzuQaO
dCMD+o45k3WstQtnJGftGbg+rBOoYO1ftOHCAxEDDnW2TU6sS8sOjX9xYODL
1SnhXNb/AVbRPPE=
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, 
       "\!\(\*SubscriptBox[\(H\[Null]\), \
\(2\)]\)\!\(\*SubscriptBox[\(\[Null]O\[Null]\), \((\[Null]g)\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        GrayLevel[0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVz3s0lHkcBvChRCm0jby/t9lyi8qq0SHdJk/ThXZj0cXp7GqLJVOJYSQ1
JrllmHlfutEWYwtdVk5mUglbSVq6sKJEG60u1GmPtgtj0L77x/c85/PHc87z
tQuJCgwz5vF4vtz9nz4ikT2PJ0HBbfuaQyUUxI3e0zpMJTh4d2zQOc5LgwL5
lywlmCed8/46ZzfptnERMyToSxU7veNMF+e8aVomQUCA7rD3GQpvJ77SahIl
yFeayIc5M0+ZFV4GCcZUDaaFn6PQtq/7Z8Xn7SjN6zq5pJSCLMXXeLlNJKI/
3zgapqXwZ+jk/r4pUbB+YbFSeJVCR5ZixdqUaOhNjR701lBY/+2m6ts5UsS2
vx52qaPgGvdT8HwmBuLcW2emNFJgUxtdbmpiccd58ICqmcKlxIYHgaUyDAln
ygyPKCzs+XD8cUkcnuTs7bX4i8Iq15RDisu70TWuN7Kqh0J5j0hHXYpHjd9o
rvkbCl0pqrMVpXsgbXZc4d9PIdcMd2XXEkA9tY5yH6BQpp8+1fnyXmTsWBd/
dYSCX1MIY6jfh9cdeXndYwkuMos7W1rkYCdk538xJ5BeE/nn30tE4jEnVeVX
BNWNxf8qOxUQv+K3C2iCcO9FNZL2/SiWGsSUHYFva16HR1wSFvTZmNycRfCH
/hmuGpKgNJPZbxYSxLYtXuKecABFfzvXqz0JQhzWrF1ulIx8D5+gKC+CA86R
772TkrFtsC6hezVn205e83AyBmrtreBHUJ9lcOpLSYGf6k7rho0Eiy+4PTcY
peLHf6wbPgUTfACt1WSmQrKDH/F9OIG6Ye27Oqs0WFm4k7xdBEFmR6t71GmI
fl5UFLabIKySPXXYOh07Q2YN9SsITtsWCkRH0rFLYRw9mk5QKx/iRVgdxFb/
oeRPDIHTd6bDDrkHcc3MYV1ZLkFl0+ysJ/wMOFhmbnmhIcipHxXa5mdAr98o
7TpLkBfbt32LQIkv7yd9s6Gc+8d6uqX9cSUaxj0cr60kKJtt0iizzYRM53jr
cS2B+UcjcrMgE/frnybG3iUoFZYrCpyzcP9K4bLOVoK5Ief9Ri5kYWvFsZY5
zwi611RqN7iooNMeu/H2FcHj03tdvXQqRJq8jpH3E4zoApbaz1dDPKjhy/UE
YytjKtLL1IgP26/bbEzDX7h6ldyDwULN5cP8iTTuBc+T7NAxCG29/sHdmgYV
GlGVX8GgzELZHsw5NOLXSc1XGNTKsn9P5zwUM0XrXs3AO3ET0855VsbA0Egd
gyJ1y1L5VBqp2uuq7EcMeOMD2m7Z0BCZ+l+s0DM45Wn0cR1NI2Oi0rjXwOCM
XSQvkXPr5Nr19CgDp098ixLOOwXueoUxiyYLynWQ8y9ulNjHnMVm0zcJJ6fR
+PxD98MOAQvLplK/lwIa4q3EadIMFvsKH+yy+JqGOjxwj5cd13dzyfbk7Cit
ExTNZDHoc+SRknNg+tmwyLksqhY5xsydTqMg6/kVjZBF3xA5GcS5L5ue0DKf
hcnLNXeSOCedUJUt8GTB7w2ye8j5XuFtnmQRizGdHv7DnG1KRgNPLGHRdt43
aeYMGiG/eRbfF7GIW6kp9+NcdjF64IsXt+fInBfxnP8DZe8cTA==
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, 
       "\!\(\*SubscriptBox[\(H\[Null]\), \(3\)]\)\!\(\*SuperscriptBox[\(\
\[Null]O\), \(+\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVkGk8lAkcgIcOSio6HDubiU21fixCyPT/y+ZIpMlKpYORjCXHYCOsMW7j
favVxtoZ6ZByNkiODMIK7zhKanSotpVatlWrxoTaD8/v+fJ8etb6hbKOKtNo
NLcv/G9nJlOfRuPgHMNAdjtMJNnW5fSVTIWDiww27N13UCSx28taWb2Mg005
MbcmXEQSs/BjCwP1OHg4d9RRx0Ak0b18+nXvVg7uMlLaEzIolLxZ8pe4IJ6D
O9zT4jVshRLiEeEACg7OYw55uc77XTJ4csQ/YSoIxfIr3wvO5kki+W7K9loh
6GCmaX7FI0fSz9Z4O7YiFDlMf8dlnYRElpXgsJMfhu+zooN9v06ReO7Y19h+
Ohy9dhUOT1lHSYyjDh80JyJwU+CFNzVmNhIyucuopYCL1jYzviUdXKiOvyNl
lUbi8hJZHxxLBusX7/KGiqJwjnNExQUI2G7MP5NwIxo7m1euO34yB66/YFZp
V/+EekH9LkW8PHjKFxTXlJ5An6QHDYaRIjinit2R9THoy3fbzf27EMrla1av
vxGLMeH3Ux5yL4F7rx+h6DiJPC15qJ3lFagkbIcHBuJQaf/77LjxqxBez/QQ
9sTj1qsOqnaxpdDYdXkyYzgB/6sL1lbYV0CAk80tzoOf0aqtI/2fiUpwu5cr
s4xKRA0/L/PG/WLolD/Bm4pEjM1gtz1tqQLuoO0Wixjel5/K4mLNGvAzcNlp
r5SE3epKpRW8G8BbH/KvU2IShoz6t9NltcBjDNP6PiWhyOUBnW1cBx1ZCsMx
Ph/FVnksm4J6sC0ze6ZQSsZ7wY6iT/IGeIe64oLMZLxpvbQ1m3sLsu/sHG9b
noLuli47JkebYK/q2cYX2Snob9L3hK3fDEfryAu/rErFEB9zvudIM1xknKcz
c1Lx7vSZTT5nWqA1bpoWuDwNYwVJskz7VjB0VflkcC4No4eEc96021DXuzHr
4cp0HJCOCxdU3YbTHbOmDGE6PtIMTQ+IaoNc7ljQEXoGqidaHEgzagfeqjXL
9PMy8LkWVVX0pB3KNy7oimRkovzq4kNEYQeovVfSaRFlYr4vgz3f+w8oNb2e
IFqfhU5Ni7U913SCid8195myLBS7TmnnPeuEEZc68Q9GAiRSBkMg9w4MXYw1
hioBRu8L+LP/UBfMVO220zfPxuRRBVmh3Q3z6yJqUsuzcXPJr9969XaDh6nj
9jhLAo+w1F4pzvZAz8HvOD9WEUibZUV07aJAmx3YIKwhkHFtSHPRHgrYgYXq
fbUEhrm1Nzh5UTAdsUJs0UjgFvFDw3YfCjakf5ieaSPwRLHMt5lDQbJYIjh1
n0DS4nHQTT4FTBWPyho5gRnOizrKaylIX5Kh/EpBIDf/ccREPQX3NFo9dWcJ
jJ23dINJEwXBdAt5gjKJ3kW8krI2Cn4z097mrEaibuC11WX9FEwdGLkro5PI
bqmJL3tDwTZfHUN1PRIzjfUrxycoyA5gnYC1JAo9Xr42nqTgm/A2+qV1JCbF
H48p/0gBK7X4aIgJiQtf8acrFkhBlPWstsD0Sx8nDH2rKoWxU7qLB8xJfHpI
bdx0iRQS8wXlVptJ7Hr5nCbWlELP+XYax4bE0Y+u5yZXSUGraJaVv4XECitV
q006UvAr2XyZYpJo4a31mEuXQnll2Ic5INFZK0ZQrSeFz9eMTo4=
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SubscriptBox[\(O\[Null]\), \(2\)]\)", 
       "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {200., 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Temperature / K\"", TraditionalForm], 
      FormBox["\"Potential / V\"", TraditionalForm]}, FrameStyle -> 
    Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Enthalpy at 1 bar\"", FontSize -> 34, StripOnInput -> False], 
      TraditionalForm], 
    PlotRange -> {{200, 1000}, {-2.5403624031548766`, 16.07319597171273}}, 
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
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"H\""}}, AutoDelete -> False, 
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
            "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SuperscriptBox[\\(H\\), \\(-\\)]\\)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\""}}, AutoDelete -> False, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\""}}, 
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
 CellChangeTimes->{{3.53712783699689*^9, 3.537127860649277*^9}, {
   3.537376136642237*^9, 3.537376161679152*^9}, 3.537377383549087*^9, 
   3.53737756504508*^9, 3.537377647083982*^9, 3.53737773994822*^9, 
   3.537377776244321*^9, 3.537377811431795*^9, 3.53737784967935*^9, 
   3.537377920520402*^9, 3.537378118587838*^9, 3.53737815000276*^9, 
   3.537378180680588*^9, 3.537378214643271*^9, 3.537378328688693*^9, 
   3.537378996898194*^9, {3.537480209739664*^9, 3.537480238623923*^9}, 
   3.537511404085751*^9, 3.537512098723366*^9, 3.537512792534462*^9, 
   3.53773657575179*^9, 3.53773660667118*^9, 3.538177298451388*^9, 
   3.538177332581745*^9, 3.539267345460854*^9, 3.53926737674159*^9, 
   3.539629491241973*^9, 3.539629523120486*^9, 3.54030002528067*^9, 
   3.540300062227212*^9, 3.543309199808113*^9, 3.543574039679489*^9, 
   3.551289494133145*^9, 3.551289526129932*^9, 3.553196269956424*^9, 
   3.553196302229571*^9, 3.553539542234372*^9, 3.553539574677003*^9, 
   3.55481203020519*^9, 3.55481206232654*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJwV0X1UjHkUB/BEfm3KOOkMp7LRlmzoZROp1E0mwjR6Qd6ibDVsxTMzzzxR
VmpJG7VmbUlbIRMSjZotE+qSQmWGJAobMVQyax0b66397R/33PP5455z7/dO
idkSFmtsZGQkpPV/9/b+WRxnycDeFyabeA8Imj21Nn1GffKPoFpj6q7s0yei
xzNQanHRZKibYPKjtudrrRj44htY+pC6No0XG85nIPNA/eNT1LOuHYwGawb+
fe8Ru4DaJaJktbU9A/bnchTbugh+k6ReqnVnoGCRj/TZPYJFftny7nAGtgn5
FskdBEtT402UUgbI5y2FC28TfDKn06BTMOASkx8/TUtQlfv3pBI1AxfJzOjm
FoJjlltWzehgYPheX2XxNYLvanqyo4YYqCkvrPK4StAmzx9fT5BAe2KH7j4S
bO09vipgjgRcInsrai8RNG+r8Zq9SgLlhakDYXX0Xnttan+yBPhmPbecagn2
DHE2n/MlYMxvP2yuJiiP1w6rNRI4eFp04YyKYIHAOXh6lwT0VxQ5e88QFOJ3
9wUfJbC5zueKXTnBuedvXkZbKewOXWtoLiN4blLSuA8+UvDPNnpyopRgnd2F
4/fWSUEdyC0UHCEoyrUolu6QQvqXlSm2RQTZQvNH1SVSEOZumq4qINjhUCyP
uCyFxjeiZ+F5BOttPNnqx1I4OdIuzv1Xgt6VyZoaYxmMEPjHtOYSDFBdjkm2
l4Ff0Bvbkn0Ed7kUxR0OkMFA3dW29CyCYcGOqg0bZdByLEFvv4dg5e2qKH26
DKyFhSc+pdP/DA2GjVXS+UtPGhQ7CTYe0hzNb5aBwHNphVcq3e9k9vIevQz2
+Xq6TtxG8HyEmaiVsHDoa/O+apZgZlLOGdaJhY0hQS5ZEoK5Jsq4tCAWHlbI
ZydtIThtrjjWVczCqtNtK3gJNL9utxu/Z7LwW4r1yAExwZETyyRnT7HQPGOt
Oi2WoKBx8q4fb7DQdOH422UxBBtezhw428eCxqXb4LaeYIvqxaEMMzmIajO6
2tYQjH5aVsF3phYe3nAskmBWleXokKVy0F2Jve6xnGD/l3F1+kQ5JGp4jztC
Cd49b3XHZ78cNG+fF1eG0Hx4Te6zK+VgMcpqctASgmvubP/HoJUDJmwM5C+i
+Vg1jjc1yCF8SvOYoQUEt76p5Zp4HFycnLDiQABB3bwqCHDlwP2VyDHOj6D9
Trh7k9phd/3nldRy1G5a7cbBXy12ncHUtoEvFVJ3DoZuafbMpBYvctArPThw
fr34xdt5BI3C87LMvDhontSpzKB2E29vvwMcNE7wnXjUl2DGKdP4DQEcuP2p
NyioOwfyPg5Sz1KmNf1EnZpY7TA6kIOSu3slYurrkkG5l4CD4Yanra7U0Tui
bIqCOfCcUpNS70NQXT9Y+e1iDn5x3hyqojY1SllQQx3JH+t0jPpsen6ibgkH
Owuntu+m/pB5q2FECAf9yflOQmrhjaiIHOqtEa2f/KiPmL3qsxZxUNVruO1G
HbT/K8tZyzjYPzwq1Yq6QJtfhtRs1Ltlo6kHeVN9hKEc+EV2Ob73JugfqtZ1
Ua9Xln/op1Yo5n8fF8aBat0PugfU/wE4+T1M
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{280., -2.982},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameLabel->{
    FormBox["\"Temperature / K\"", TraditionalForm], 
    FormBox["\"Potential / V\"", TraditionalForm]},
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotLabel->FormBox[
    StyleBox[
    "\"Enthalpy of \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \\((\[Null]l)\\)]\\) \
at 1 atm\"", FontSize -> 34, StripOnInput -> False], TraditionalForm],
  PlotRange->{{273.15, 373.15}, {-2.981962986462296, -2.9037395672455304`}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.53712783699689*^9, 3.537127860649277*^9}, {
   3.537376136642237*^9, 3.537376161679152*^9}, 3.537377383549087*^9, 
   3.53737756504508*^9, 3.537377647083982*^9, 3.53737773994822*^9, 
   3.537377776244321*^9, 3.537377811431795*^9, 3.53737784967935*^9, 
   3.537377920520402*^9, 3.537378118587838*^9, 3.53737815000276*^9, 
   3.537378180680588*^9, 3.537378214643271*^9, 3.537378328688693*^9, 
   3.537378996898194*^9, {3.537480209739664*^9, 3.537480238623923*^9}, 
   3.537511404085751*^9, 3.537512098723366*^9, 3.537512792534462*^9, 
   3.53773657575179*^9, 3.53773660667118*^9, 3.538177298451388*^9, 
   3.538177332581745*^9, 3.539267345460854*^9, 3.53926737674159*^9, 
   3.539629491241973*^9, 3.539629523120486*^9, 3.54030002528067*^9, 
   3.540300062227212*^9, 3.543309199808113*^9, 3.543574039679489*^9, 
   3.551289494133145*^9, 3.551289526129932*^9, 3.553196269956424*^9, 
   3.553196302229571*^9, 3.553539542234372*^9, 3.553539574677003*^9, 
   3.55481203020519*^9, 3.554812063450385*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"h0Hplus", "[", 
   RowBox[{"200", "UK"}], "]"}], 
  RowBox[{"R", "/", "UV"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"h0Hplus", "[", 
   RowBox[{"400", "UK"}], "]"}], 
  RowBox[{"R", "/", "UV"}]}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.537538416586351*^9, 3.537538459929391*^9}, {
  3.553540441172126*^9, 3.553540450059866*^9}}],

Cell[BoxData["15.90084911939663`"], "Output",
 CellChangeTimes->{{3.53753843131793*^9, 3.537538460464913*^9}, 
   3.537736608775185*^9, 3.538177334806905*^9, 3.539267378856722*^9, 
   3.539629525420608*^9, 3.540300064669194*^9, 3.551289528123482*^9, 
   3.553196304437219*^9, 3.553539577020407*^9, 3.553540452200874*^9, 
   3.554812064368428*^9}],

Cell[BoxData["15.943935833354974`"], "Output",
 CellChangeTimes->{{3.53753843131793*^9, 3.537538460464913*^9}, 
   3.537736608775185*^9, 3.538177334806905*^9, 3.539267378856722*^9, 
   3.539629525420608*^9, 3.540300064669194*^9, 3.551289528123482*^9, 
   3.553196304437219*^9, 3.553539577020407*^9, 3.553540452200874*^9, 
   3.55481206437026*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Gibbs", " ", "potential", " ", "at", " ", "1", " ", "bar", " ", 
   RowBox[{"vs", ".", " ", "temperature"}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"g0eminus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\>\""}], 
       "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"g0H", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", "\"\<H\>\""}],
        "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"g0Hplus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\>\""}], 
       "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"g0Hminus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(-\\)]\\)\>\""}], 
       "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"g0H2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\>\""}], "]"}], 
      ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"g0H2O", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\>\""}], "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"g0H3Oplus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\>\""}], "]"}], 
      ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"g0O2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\>\""}], 
       "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"T", ",", "200", ",", "1000"}], "}"}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Gibbs Energy at 1 bar\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Potential / V\>\""}], 
      "}"}]}]}], "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Gibbs1.pdf\>\"\
", ",", "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Gibbs1.png\>\
\""}], "}"}], ",", "%"}], "]"}], ";"}], "\n", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"R", "*", 
     RowBox[{
      RowBox[{"g0H2Ol", "[", 
       RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "273.15", ",", "373.15"}], "}"}], ",", "\n", 
   RowBox[{"PlotLabel", "->", 
    RowBox[{"Style", "[", 
     RowBox[{
     "\"\<Gibbs Energy of \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \\((\[Null]l)\\)]\\) \
at 1 atm\>\"", ",", 
      RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
   RowBox[{"FrameLabel", "->", 
    RowBox[{"{", 
     RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Potential / V\>\""}], 
     "}"}]}]}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Gibbs2.pdf\>\"\
", ",", "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Gibbs2.png\>\
\""}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{{3.537377613988419*^9, 3.537377614024222*^9}, {
   3.537377835535686*^9, 3.537377835563299*^9}, 3.553548020884322*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVzWs0lAkYwPHh1GqplUNuTSUK1SoclUuTp+mICmea6rSy1kYug1lMVHK/
DTLzvqlNVCiWpjBhhiJ6mgnVUIx5qehCc9al2u2i1Q7Rth/+5/fxvzIomh2i
TaPRfL71v14MhiWNxgFj4atboV4iZCo8lw7qcKDC16P5srcItxxgG0n1ObCB
9/XVC5YIHWLDvgtfwYEDy2Q3A/1EaF5Z8LpnKwf2J2YdTIwQ4ZuFow1lyRwo
zsNhM6EIiWfEdvcZDih7HP3fqUTYnzh8OGUqAsom7SOfhF3FuEwf7W0mXHho
5rz4z7vXUBls8H7CMBpEo7tGJLY1OJifst07MwZmo2jBoeW1uG+XX2tHQSww
66wKuH7X0S4+MMCR4EEGs9xUyK9DMkuxTlZ2BH7UGdw+nVqP0uQHj9g1caDV
Vm96Jb0BndWTxY+r4kFL9GHViyQJethlnk5pOgrGQyv3EUVSrFczJKbSY8Ay
4htlVTfiy0yBqLHmOIwmUjxreROeWwBdcS0JMPDT2RjX6Rso1iw3tmk6AdJN
qztdrJvRtyeImOlMhLM7/CMq4lqwjnAd6utLglK3CfXbjlsY28JglXQnww+y
8WvOC9qwVVH5MW8oBSpOHXR5z72NoZ4ubZwnqdAksPR0vYvoQxUNboxPAzXX
KCGq9A7e17yAmzNpoLmiXl/mL8Mj/a5uTgnpYEL9eyhGX45BVju9t2llgHjq
U89YvxzTbbgfPNMyYMVYQWT46buYbjFE6/2SAf6ymVoL33bszJ+xnsjMhE2r
mbb/0DvQtdZhZEYrC46rfosaGe7ASTBvKDuZBdlvAqtYNztR+MD7r/bF2aBc
Kjz2nLiHBxacbVULs6GE8Bkv97uPIc1k+ZklfNC7Puz6s/MDrLC4RGf8zofb
bMnh57oKlCdN08IX5wBzrcFc8ZACrXfrfLE6lwNjGr5u450ubO5Zk//UKBfq
ZG2Gz4q6saBzzt6iJBdSdd9tbM1+iEVHJiJ+pecBT1PR5RHyCNOXLNe3LM6D
USikFzJ7ULxmviLO4iToce0x3bwX9T5pmclKT8KqsV8WtQh6sca+PqXUJh+M
p+Rm1d8rcX3QNd/Z2ny4JFTtT85W4vDO5ob96wTwt203XXtaiY8rTti5SwQg
PurAi07ow1nJni2WjkI4mGOpE/ahD+c18xr5YiEUXgw2eBemQpb9Do+kjQQY
G/Z3CiZU2B2wgRMpIYC72eR0dDCFpsHht0oaCdCa9XpaEEJhcPjlRb03CHBq
dXGUhlE4zTNscGolwM5or5kmkkLb3M/Ts+0EaIu3tWbGUZjVgIJTAwSc3zK5
92I2hQwdVl2jhoA85YBs8AqFuQvztMdnCEgdjt/69SqFlIF8n/kcAa+rqrut
aiiMojtpUrRJuB8wsIxbR+F5B1Omlx4Jjufmn6E1UzjlP6wapJPQOCG9t1ZB
IfOQmfWiFSSku60NYHVTKAxlH3dfScJAmOW8o48oXBXbTv9jNQnWgYV8WR+F
bL4ohLueBKZrRIDfEIWl+SM3yuxJiFKqUlKfUzhxyly3z5GE1JCm+sqXFKZd
EIg3bSbhZdHI7o9qCrsvddA4LiR0yW0kpqMUmlTNsS+4kTA1N7LOfZzCoOrN
lQ8Z336G+k0hrykU18V8/upOgmdH7R7BWwr/AwdZf2g=
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(e\[Null]\), \(-\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVx3081AccwPEf2nhFKyHiJofQRPRk4ny/lKiE1FiWV7lGrrSQ9IDrch4O
d79fHtaDhsrDapNxHjqyUmGR6EEqKmIpqrtzLpzjrP3xeX1ebzrzUECYOkEQ
W7/0/70ZDHOCYGERe8DRxpJAjzYvkx5NFj7doueTZ0Gga1CAfvV8FnJuZIfo
fLFj9L6vI5aw0DOMFy6lE2hckjXS6cbCSlHeAtESAj/oDAkLE1noTlb/42lC
IPmSXA9KFtZtcOgKXkjg0/j+n9nj+9Fn+w35AYLAWO5WdXfDg+hdtX2Os3AW
Hu3VlQ7rHUL32gG/R/tmoSeTvd6HG4WpOWcsCNNZ2LF5Z0NzVjS6Lm+8qf5A
BXZHdoesJGPwrW1kVD5HBVRym+3twsOIfW70meUqqE5s7Qgoi8USLj1xUc8M
fD84dv5Z6RFcNVl4VJ8/A5523Gx2bRyeybrn07p2BioHGVVG1UdR3006N21o
Gvq4/Cs1Zcew1Wmw2OvsNJzVwvux9ceRvUqU9RdOQ7nCdJF17QksyjbXDpQo
wbeTSSpb4pEQxfvknlFCBbmu9/HjBLT0W7Z2wE0J0fUM//z2RLxltpCR/3EK
GtpKZOm9bJw/sUvelz0F4V7Of7Oen0SDm03NpW5TsLXrXM+aIxz0aHWsHxpQ
wD3FaxQpOejsAe+DeAo4/HSdy+rjpzDSv5YXs0oBTItNPu5qSWh99WrHePck
nLI+OOrFScJiF6WDE+eLzXqJh9NJqEH/dkPHd5PQkqm0GuZyMaWAxmh8MAHr
rjm+Uaolo3PpKJsfNwFjaCwszEhGrc3vOkoNJ0DQ6vOpaUEKfgwu1DWpH4cg
rV8bBgUpqAo8mpTCHIewOupyjkEqCq3Egys0xqHI7CKNkZuK8Tsp/uurn+FO
whQRsSAN3xoMR2oEfAarLZrTFmfTsGha9CFYJoe6zmWZL/R52GOoYddxTg5Z
LSoHs3webtTRFEU4yeHc4eH9e2jpGNlXFmj7cgxOGZjONz+fjvkTuXdjksag
fNlXbbFmGfjJ3kXZZTYG2nK1xbcLMnDXL5fmxTbLoMyhkl1gnYnD0dtDLJgy
sGf+4TtzLRMPrW/6+kdCBv2b6oQ/2PLx5D6B36viUXhWdMIOqvjozct9E+4+
CjNV21zNVwrwmfb9pVv+lcKcupia1HIBBrODZPd4UvB32OiZsIbEd2qjjbBU
Cu0hK1gHqkiUBm8z8jwtAaO9ETfya0jcHerFmyOQwN6IS/MeXidxciREcjdd
AlMxesLVDSRG6koue3AlYMObmJppInEPq6oQ4iSQLLzFP91NYueHbVKnXRJg
aPpX1ChIvF/tK6PbSICnk67+XkmiYBHp1W8pgS7dOzuMVSTyaeq5BXQJRNJW
K9jqFKblZCw0MZFAnqORh7c2hRUX7Ev1vpHA+E/9T3poFNq6+tpoyMXgEbrY
at4SCuMTzEcbpWIQhAccAzqFKX5rKtmfxGAZ3UQrXkqhv9Viw6khMQSkXgk7
aE/hxVcjx6UvxFCQ+eZ6oQOF7sqm6WvdYhg+bTz38UoKY/IG4g48EQPnAr98
rROF9k9G/IfaxdB+sZlgOVMY9Xt3RVGrGAxLVQEXXCjMidHSCm0RA/NPp5IH
DAqFjziBpnfFUF4RNTELFD4Pxd96b4nhPxXsU84=
         "]]}, "\"H\"", TooltipStyle -> 
       "TextStyling"], Annotation[#, "H", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV0Hs0VAkABvChB4uOOrSE1aA8Tt17JWojOx89RGqZVa32eDTIDGu9pfIm
YWbujeqUWqNCq5ahQWJJLE5GodS2UdKytXpsomUZau/+8Z3v/M7332cmiOSH
qHM4nF1s/u8dzs7mHI4Iei9zboUJKLgq3YwHNETwbglb78568z6+fq2uCAS4
pVas10WHLhauFCH1g2bq6AEKRmX5r3q/EsH0i1Ejf9avdV4oipNFWNi477VX
IAX6Cb2FpxJBPtU3ae9P4eHR4eCUqTAc/La8c8qXQlzmLnUXgwiUven3Lfei
cC9o2fiYXiT8eAGqR24UBsQpWzwzo/BJ5DpnwKPg4+Hb1JEfjdPqR/uSHCgQ
8QF+dnQM6kPv9oavpcBkKde0Fsfinm94V7I5hdrkrh5+RRyqsm9mlxpS+HJk
svDR5Xi4VJKcAF0K24jMgpTrCXjfs7/KcRGFayPONYa1h1DDHy+Rq0g8y5SU
11Uk4mYSPwMTJM5oojuu8TDERYfK3r8kIZ8x/dzq+hEkvEpscxkisbtXQKs6
j6Kic8iuqp9ENe04eP9+EpojLllu7iIR3ejsVXQnGV2qvS8iWkg0KcsmcgdT
MJGWMtVYS+Kg26Zm0e+peGqxXlF1lcSuB2cHHOLT8GB11ZvmYhK3Z4ZwQ5WG
1TGKJ+9OkYh96Ohkfzgd3VGeFj15JAQW7p4uahnYXjX376+pJNKtIt67pWWg
3D7jiDCeNXeQ0zeXAU21+ECHcBKdYpXlWGYmxjfkzRsEknCsXPdcpZaFO0UL
dCr3kJiEkaI4LwvXen7asNeDhLTL82370mN4nDtNWPNI7NM83TQiPYblbT56
1fYkQhqYSyeXZ8NDvNbbw4ZECfeCifOpbDDc9fjRlERb0ixHuPQ4ri7IyjLS
J2G5U2PO4sxxFAi0Dl3RJNHQayN+rJ+DxuM2WpPzBPI7P9pyi3Igkb0Y3jlB
4GzsWFigSS5Gow78EfiSQPpyU13zwlwk357WLn1CQG6zSBnHzUPaOc+xD30E
tD+orWiV5cHurWvewk4CFbbXUmRWYoz/4C7lNhIgBVd3z1eKoa0x2BUmJzDs
3qDYs0YCa5uLrgklBB6VHCF4NRIEtv4jk5whMF/jvdncTgpZx+PDIRICCxti
6rLlUvi3G+tHphPwst2+LcmBRrPxYpuMeAJ3/ChReA2N/vq7f/qGETAMEv5S
VEfj76WtC6xZBwkvLumrp+EUY2k2JSIwG6OnsG+ioZPgtr+AtXXO9Ox8O439
spEOpZBAlqJFcuI3Gpae0gynUALOGl7VdTM0Zkve5JsEE8jRyVX/S0VDWWAv
exVE4MGyNh+jjzSGut9ducH6exP7mRR1Bte33mrxYX1unaHrDm0GOkLlqERA
YOq74f4BE3a3kujPBxJwPbDCcslKBlHBSwy7WUsP8hN5Zgy+yVM3LmS9Krrd
pHQ1A5uGHSsdWPOzy0MiSAaR9dvMIgIIyMTP64ttGXzyDuU6sR47YaR1345B
2ap5089Yp52XyDdsZHCu8JhRmT/714UOjmgTg5NfJxrEsja4/JF/3onBdPAz
PRfWgp83lt11ZlA00qiry1peHTX9icdgz0Mt7ad+BP4D9tIi/A==
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(H\[Null]\), \(+\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVxX040wkcAPBxiefkoVDIFZU5vaHzUmp9v/Qgd5So0zsmMvFIIcQOk7dt
v59FL3LRUemRlzXkFPXotDIrEte8lJdlLImZdFq4uz8+z8ecHukTrE6hULz+
8/+7abQ1FAoDnS8VL+4PUIKLyH1ljyYDm1TheR3+Stjh52NQo8tAm9JOPeFx
JdhGnVwcupqBExd5XeVHlWByi/ehbScDrcMOkfEHlTC2RCYoSmLg6tjXz3W9
lUD0EbtAxcCKm35x1qCErvMDJ5gzYajvmiHb8YMSolle6s4rIrCqV/5N2DEF
r4KWTsr1I9HYU8Z35kxBD5u5y5N1GvceDj0FblOw/+dDDU95URhcKiCCZhWw
Kcb/2BbiDCp2nrTv5iuATBNtaCo6iyU6lxJDAhVQk9Ty0qc8GiU5P43nL1PA
Vqky/83tGHz07ADj1PNJcN3Eusi8H4ujt6MD3c5Nwj0prdqo5hzWJCZUSddP
Qj+Lc6e2PA5DhAerBh5NwBUtbI1+EI/uhRaj48YTUDm7arnl/QTUXTSuP8b8
BHva6IRKeB7XzTksa+waBz7h1NvRkYiigLFjGZvHIeoBzfu6OAlPUGSNhbyP
0CC6NZXVy0QPvkdTmGwMQty3NTIkv2GJVl3HPdcx8Oq82mMfk4wbJl+H51z+
AM9n3+GfqmR0cVLGlsnlcLbLabtdfAr2xdRCtrsc6Gs9PJ3VUjHUy/Dy0OVR
SLGMULgnpyLTX23BQjECKWa9lPZvqbi/cK9wwmsEhGwVVc5ioa/BfIHB7zJw
qrAdVKml4cNgy7cBn4dBiSaCouw0xBmHpE8wDNwWz/FmvQs4OsJZ0OK+Bz+t
Sw1S7gWcjp2qSx2WQnA9WZxrmI7UGqc8c2splJjdMKXlpSObWSrZnjYETxK/
UkL1MnCj1C1rZd8gUH/R/Lb2Sgb6lZyr17AYhPo2K3a3QSYm5YbvvhY/ADzh
vI3Z9UyUxE8fdmX2w9Wz8rAA0yys7nKw7DN7BymGq3TX5Gdhja8GdWtLH1Ra
aYiizbJReWR5l4dvL2hPqxk3FWbjo2XPiu0+d0O5zT1moSUbn41MfiiLk8Bm
etmeuQo2Fqvn546qvYEBj3rBgQ0cfPDZOWJPSRe8KUnYBNUcZMk3KnSpnTBX
vW/Hmi1cDJ2JVpg3dcCi+jO16ZVcXPniyhJP+ivwtnFzTbQnMHgsKsyjpQ3E
x6wZp6oJ7L/6XpO6IAajoNCH12sJnD7UbFsxJYag0D902usIbLSkbrWTieHr
GX2BXQOBDnoJPc4vxPBj5pevc80E+uuUxRwpEEOa4DEn528C+/YFamU6ioGm
6c2vnSUQx17yhZGtkLkkS31URWCecWekR1ArdC59st9knsARyV1t8a+tEG5q
N8tUJzH3u7fd7bRWuGZr5LJbm0RuE7tdot0KM0cGXveYkmjFdLcaKhWBS6Ax
VWc1iS+pN+7TC0TADfGJA3MSfU2UZlJCBOuimk1vWpC4rpnHkcaIwCf9TnDE
ZhL/2vnl8dAuERSyB+uKbEjMP3rSnu4oAnmOyfcdW0jkJw9nDK4XQXIBp9LB
kcSDAsPm/qUiEN94SmFsI7GqTFxxXEMEK27P+xRsJ5HHLIh++08L0O863npB
IzGwOM3o6McWqOSf/rIAJB7Ozs7v6W+BfwFsIGPl
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(-\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(H\[Null]\), \(-\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVx3s0lAkYgPGhpJPSheQyIbUkm9vWKjW8sZKtVHPG2tWxFan57Krc2iFm
aMQw4/vSZWkdl2pzpEyaQbF4DweJpJl0MeSSECL3GSba3T+e8zvPhoCzzCBN
Go128L/+dx+DYUGjEVDcWGr1p1iGbo2eJgptAhqq7cYpqQx3+zL1i1cSEJHL
M0h5LEOH0NNL2GYESK79EMGrkaHxnbShFhcC0uKfRp15LcPh5f2SnFgCjhob
ZvgvyJDsIN1d1QTosae5PG85vrrQfZI7Ewyjl3sWNX+WYwT/oOaedSHAK5/t
MWW2oixw9dig3lkgukvu+tx6hQoh1/0A/xwMZ9oEF4+9RtaPv1TUpYXCkomm
5WHH3+LWyGP+jmQYxOx1dzSraEMqodGmOiccklhlBsk727E49ulz5v0IUERL
Iay4A3f0Tt54kxcJ7zvrtMRGneixlX+FW3oeNpxwCV3I7cKHvQypYfEfEB66
RWdE0I1dfFF+yX0OPB+rqz3i2oPpS6EpojwKWDlD2qNL3qN41tTAqjQavJ/U
3CiveY/eLQGkuv4CLKS8VAxRvVhEOrfL5THwnSGh+9nvA4aWMw5nPYsFN+FG
+k2jPqxovDOR3M6FROtz5z8M9uEpz52VxFse5DQEWF8v7MeDrRmK7ZFx4Onz
dR+NP4ANs53wWB0HpZXjQT0+HzH8lfOubVHxcLOQ96XeZBADNnod2KNxETR9
OSNXJgcx3ipk3DPuIrBlo2rbqiGMN2+nvfhyESw9NT69uTSM9UK15SCfD823
nzikHfuEzoUOPWqNBCg4NNNfZzOCk2AsyUlJgHfqVcl2y0Yx9emBkdpVl0B3
ID4hq28UfZder+hNvQR+9cfydkg/Y1AZdevq2kRoZeVnZniN4W3zXDrjWiJs
qb9Qmi4Zw5qYORp7VRJk93NOjBuNo+V+7S8b05Mg2NtfJUoZx7IWa2GbvgA6
ozyClk2NY1r9gr15lgCiM8b0FKcmMCN8MPg4PRncO1hHouUTGL/WdKXFjWSw
LvIYOb57EsXWWo0R5ingYuGkuvdgEnWmNIyqs1NA2zb6UIHJFN63f8jNthKC
V2XrGXraFNoGFHjPFwpBWlld2Lp4Gru9yiQ+NiIwmdZhbQqdxje3o7e6SkXQ
wcv0me2fxnnpkd0WjqlAc/SjfH1mcHFZWEmiOBUi32lzu6pn8LD9Xo+Y7SQ8
GFofO++kxGf+dsRvUhLyHJucRXlKNAxk/5NVQsJpQVVudL4SA9k3V7x4RELb
XfMVRIES58L0JNsqSAiU2M16iJW4WaCcm68lgSJDTGmlSkyQoOjyaxKqftLN
iqxTIkP7cFHJLAlX16xjB31QomB5suZHNQnEAD2T1a/E1tU1LOMFEhKrElrd
Pyrxd/q2Wa4mBb92cfwsPinxLwdDt306FOj2DEi6JpU4c7T7pYJOweYWwfWj
i1TodsLIcoUZBVtSebb7tVSYeorJcd1AQdJiebOztgo3hdbS//6GgnRKYGas
o0JmYn5QiC0Ffd86rGxbo8JsYc+jHHsKTJvmFA36Khy8bLxM7vjfa60vfGyg
wrhMkfh7JwpmqoiTGcYqfJZbRyN2UuDCueoloKtwXd4CM3MXBU6gv51jqsKA
e053mhkUPJEOW7LNVSguOqf86krB6Fkjs58tVPgvjY6GZA==
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SubscriptBox[\(H\[Null]\), \(2\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV0Hs0lAkcxvExpRmXaWbeLi5NuSTVaQmFNIYfjuRWsjpU2yYkUyiX5DqZ
GZdxmfdNKWw71EprCzFu0ezpx6qWFFu5hG1Ze7ZsR5t0sgx27R/P+Z7Pv49J
yBn/E3Qajea7tP+7VyAwpdGEMK/oOl/MZ6Brl8e6IYYQ6sJKYiWODHQM9F/d
wBaCi+JwSqSAgdYxJ1dEGAlB36a8CZwZaFhR8FePkxAGDPpeTLgy8J3un8qy
NCEUSjQrnLwYSI6Qbs5qIRzmhWd+DGJgX8pomOjzKZDtPfiVJIGB8VJfuote
FITNSoa8mhn4Syj3w8SqM7BWw+aPwk8MHMoTuflIz0KGvrjwa2smBngdUj0s
iIFD/b6EbjwTLc4dO2pDxoI68c3jSSUTqYyubW1lcbB/f9DTBzNMbEjrfOZf
FQ/zB7lffuZr4a7x6ZKBW+dAc8cnd7NULXS3kF4SNSWA/R0np/3tWlg3LqjX
bzgPN9h98wHLtfE3aX5lY1UiODR5R2W6a2MRE57EtybBpf5Xy9rytbFmdsPa
zU3JcMOx6GFVjzbu6wkh1Y9SwJoVl12nr4O15O7h589TQcl1jBgM1sGYVoGf
ojsNvBbtBLk3dVDVVfExZ1gEqyLvssLe62C4h8OPwsELIJOozzft0EXfl8VD
tufSYWOmyxdOF3Tx59nXcE+dDtW5d0KfdepiXN9u/s4kMQT8nTR6j83CkI2e
Pi4aElgRWRH65ggLxZujpjzSJTBy7diy4+VLNh6m9c5LgL1g3doxwcJHeWrz
CakU6vni8mS7lbi72npMrZEB9He0ihDRSpwGQ2VZbgYU1R9l/tC9EuWdPpMd
nEyICXAIHzRgYyDzimpcngkv+Mpw0xA2nmihvru8Jgt+YsdWDtaysdz4Ok9Q
mAVuegfqFHNsbE+do0VwsoHur/FPiQkHzb0Z8xuLssFkx74BE08OtvRszXu1
WgaTbusXzaM5WPBo0cpYIYPgzu3J0Vc5WBw3cSqYlwPiaPqUhYqD4jUb2KYl
OTAZPm7hN8bBmq2aXfHGuVA41ce7r8VFnU8aBm2luSCqiBop3M7FKqs6Uenm
PLhuyypXBXHRMuT2voXqPHirveWWh5iLo54tyoPb8uHwa+/SXd9zcaA82cK5
Ph98oOxVWi8XF+oPOJrayMF0nVG22QwXl7fENmbVyOF4v0PEpvUE+lntcU+1
JcF+xEycvofA7qPbhafrSQgMumRgG0WgfmjEfUUjCZ63iyx+X3JoxA1WbzMJ
ix+fulHRBM7FrlLuVJGwbK47YeIMgVtkM3MLHSTcG+TOKGIJzFA+yL/YT0Jc
c2kwI5FAAcOvtnGWhFbV8oFhCYEy3Rz6WzUJbVenrXKkBL7ktgcYLpJwd5Yt
t8sgMJK3c1ZEp0A+2etdkEngN9b6rnt1KNC7cnZ8j4zAz0dGXwzxKBBaslOU
cgJdjxuYs4wo8BrrnDlGEigP9090NqHg/enaBBZFoFlMB+/mJgqav6WlRFwk
0D+r8kSUJQXtybcVGy4TWJo31lxmRQFrDrd1L3nioqH2cxsKPiTRVUmFBKZf
y6+xs6eAz1kx/vLK0l/XH9KEDhRoTj1OklwlUO/Wov81PgWWJxsIqyICQ+7Y
VzwVUDAd+KT61yXX1J6d+deZgoJKXe+8YgL/A+qOPLA=
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, 
       "\!\(\*SubscriptBox[\(H\[Null]\), \(2\)]\)\!\(\*SubscriptBox[\(\[Null]\
\[Null]O\[Null]\), \((\[Null]g)\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        GrayLevel[0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVx3s4lQcAx/FDpJHnfc/drVxySS7h0Socfu5leE5W080zMeXUKNeSy3Dc
Oe+rYtV6kBmTW7kll2pEW5xSUudEG2qtZHkmLbnP/vg+3+ejH3TcL0SRwWD4
rPT/dwgEBgyGCF6Bk3K5KR8uvZ7aQyoiVBodcz20Ygd/P04TIULZ8sOK8Y18
WEccWR2qK4JPYuDeORM+tMrPvO13FOEr3d7D2sZ8TKz9q6EkUQSReYnNQQM+
qOeUq9O8CAqetwrkWnw8iR/9JunjUfhIm6Y61PiIFvsoOvPD4Cz2FZW+5eFR
MPOfcfZxrG4s7fHt42EoN8nVW3wC2yIqZx1qeNjtta+j50wElO0sVExyeLCI
+TrAhopEoUePbFnEA53Wa9ZZEoXy7vpQqQcPTYn3HvjVRGNh6uP7PzfwsO3l
9EVZRQwG48PXq67iwd1CfDbpeizMLStHNEe4qH8paNRoOomW/GB/t5tcjIjz
KptrTsHo9zgr2SUuzq9BX3RbHCpk0796neSibnY9z+T6aajX5kgnd3Ph2x9E
zd+NxwFpUNrRzVxco+yGBwYS4NoqXxSqchHRJhAWSRPxKXwsMv41Bx295e+z
h5NwKtbUP6qTg8Oe22+K5N8h2M/qw40iDnwGLwxtiUmG8WZdxzuxHPw2+wdu
zCdj6ohyvZuQg6gndva2cSmgjbcXG5pzELRhp7ezQire1QosbitxkGISNuWZ
nIqZyWdXfhlhI0VvmPFwIRWhC5Hwamfjbu688bhYjGffh8jTzrFhV2s9Nq+Q
Bu+Js/224WxMQ6uhJCcNXZzoaok7G5J73u+6yXRYnhi3Cl/Hhv+awo6XknQk
SAOnH82wENJK/3iOm4GBA6GmTx6wUKZ3WUdQkAHNduGVoEoWuhLmGKFkJjLu
Gb9PT2XB+AuVhQ3nMyGIMa9y2sdCa79p7jNOFvpema3Kt2HhzN0lK72iLDBe
+3scX8PChajxo4E62egb878yMcpECnc9YXAxG5XLUblKbUzUmSr3RuvlQMLT
Ky+jmVD7oKDZWZyD1hb2vokjTNRY1ScVm+Qig9H4WYMDE5ZBVb6LtbmoSbfg
cVhMjO5sbdhjloc9zIAF07ckZGWnLZwa8+Atqdp1/RaJxcZdDgY2Eqxbd9Fp
oZCEUmtkc0adBGk/G6qOh5EQWnm4J2yh0FgwyHNzISEN2Cw61khhINNJOViT
hEZwaHtRMwXtYhWTGg0SwaGl6g9bKMiGXrj/yycxF8lusO1Yscvj05k8Ehuz
ZuYWuymUbirprGaTSGu4nZf/lMKk/VLXtDoJgYrwWvMsBX351cIURRJZa7MV
38xTMLTQ2N+rQGKQ2bVba4mCdcJ5bfaKv9WxnU1SpKGm1GK2c5nAD9YaLjvU
aJgvf3pAzRL4eGD08ZAOjR0lcUsakwRcDmkaq+vS+MTw2FT1NwHJYb9TTvo0
HPXdhPYTBAwjunV+MqLhQj/NCXhDwC+jMiTMkkZdx/620hcEinPHWkqsaETU
tbfYjBEYz9dSHbChcd9ZePXOCIHkS3l1n2+lcdCRK3n1nID0cg9DtJ0GW88j
KnaYAL9iye+SPY29BdVfqgwRCKreWn5fQGO/zN3ygpxA3bUTM8tONNyNuKtM
ZQT+A/c1GIM=
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, 
       "\!\(\*SubscriptBox[\(H\[Null]\), \(3\)]\)\!\(\*SuperscriptBox[\(\
\[Null]O\), \(+\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVx3k8lHkcwPFnnldFhxxFwouhIqs0JLkmX0ozCtlZlWo7diSmUogt0YRx
j3keXUtax4ZWLRKGlPx+qVhTUapVRsUqNd2OiTFo2z8+r/frY84/yAsmCYLw
/d7/ctlsC4IQgH2u5E+dk3LkKeMYd2kIoP+lIoWZK0dum3lza7QFMAZXW1jn
5cguImRaqJkAds1eHsarkiOjkhPv2lcJQHZr65rcDjl6P6u/quCYABoTYqe7
zelGVDe12l0tAHldh0XL6W70JLZnt/DrXnjuxQxR5jxHUSJf0mNeGHi+/S3m
34cv0cMg3S+KOQchyKCpIFDZg7rEwtU+onA4qMs0/TzZiwLWbWm4cyICvPMz
Nv5u3oeWRu/cbk9FgtdPMU1Llr9CdJLM5mbBIYh07nQhdrxGNcda23hlURBN
6E0pSe5HTn1DZzsvRAPJPeW75dwb5LVUdFJY+yuopYNeQtlbdKWPXW1Ycxj0
mmt0N7xRoJeizFJp2RFYcjdDZzHxHmVrwt2oazFgtmnn4WL7D6hCZWpgVXsU
kgMDzJ14H5FfO59SN8dCZ35pXqH4E6qkXOQdHXHgnh2cNIw/o4hrbP+8e8eA
02/UciDiC2qQlQymy4VgPP1Caqj2ANrDcb4heHocbgxq1mQWDSDfxzldK6Lj
YfjZqtb7awbR36oXcFUdDzbQqOzsG0SHnri4OsQkwK3Sq6zOI0OIv8Dbx4OR
CAvC/eO1jIdRglXYACc+ETxiBcam1d+fKScejCeCs/SMcRNXiZrFakuFSASj
a9Jta98rkUu5Xa+akQSOBlx2YNJXNARGVQUZSeD/aD/e+cMIkrT6fLytkwxZ
Axv2jd4fQZs1zzT0SZJhg7eMrx8yioLr6fOn9FPAoWi24rKWChUxC03Yp1PA
3s3hZP1FFWqKGyNCdVLhcLyeynr1GLJcrzG+IDsVruk51Nm+G0P17dbiZ3PT
gOdqSAtT1OhE8ySLmZcGyvWX+6JZ4yjnkGLvLpN0OG49sLmkfRwl6JtqW5xN
h/jEZ5aW+ydQhfVUWRQzAzzOUh+DDCbRzGHG/Jv5GcAUTWXVSydRGeuKMN9K
DDvqA/nP+d+QLf+S30S5GLp70Y2L0wjc411ftdEmE6Ik3LZdmwjcWXR0qXt1
Jigzd1+cXk7gieof3SzsJZD9aONxy0kCT6mPlKZUSIAz4zWr25eB/VlrveJW
UOBjtylcUszA97YvE+yrpuDnCLOyYiUDGwaFXs+TUlDor79Me4SBg0L/0HpQ
R0FL201pzCgDj0XOqXJooGBrI7vNT83Ai9NGxiZuU5A647qNiiBxUhXKzPqH
grjwnBy/WSRma/hXSlUU2D7lOo1bkDhtVjr5Vk3BE6PzdiELSfxYtynAaJIC
M3zJtmMRifebOKiEJA16vq3LSxeTONfO0JM7k4ZqmxV7A2xJ/HVbz6MuExqa
Pp1JLXcmsecv8y21zGiISpFdN3QlsWQP74i7OQ1rP10aErmReGHEbZPiRTTU
rTtwYKs7iXkppcFhtjREfxulNbxInC/urStg0ZDbk9wbuZbEiiyjGR32NCTc
bXB8wSFx/LnMCseVNCjlVh9q1pH4XuEdQuBMAydrmw/Th8TzLkzyzrnS8Gqf
U6XYl8T8v1aW3GfT4OHYOG/Ej8QVleEj39xp6Kr9kMj3J/F/FeVhtg==
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SubscriptBox[\(O\[Null]\), \(2\)]\)", 
       "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {200., 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Temperature / K\"", TraditionalForm], 
      FormBox["\"Potential / V\"", TraditionalForm]}, FrameStyle -> 
    Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Gibbs Energy at 1 bar\"", FontSize -> 34, StripOnInput -> False], 
      TraditionalForm], 
    PlotRange -> {{200, 1000}, {-4.648968861243831, 15.692220703803775`}}, 
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
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"H\""}}, AutoDelete -> False, 
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
            "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(-\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\""}}, AutoDelete -> False, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\""}}, 
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
 CellChangeTimes->{{3.537127839210483*^9, 3.53712786277535*^9}, {
   3.537376138840432*^9, 3.537376163890817*^9}, 3.537377385484705*^9, 
   3.537377567220993*^9, 3.53737764939781*^9, 3.537377742868891*^9, 
   3.537377778988025*^9, 3.537377814224096*^9, 3.537377853015023*^9, 
   3.5373779235503*^9, 3.53737812171231*^9, 3.537378153086099*^9, 
   3.537378183806911*^9, 3.537378217556759*^9, 3.537378331583206*^9, 
   3.537378999828376*^9, {3.537480212407716*^9, 3.537480241213961*^9}, 
   3.537511406908967*^9, 3.53751210154149*^9, 3.537512795377648*^9, 
   3.537736578912228*^9, 3.537736609613451*^9, 3.538177301817451*^9, 
   3.538177335607138*^9, 3.539267348443473*^9, 3.53926737967536*^9, 
   3.539629494103958*^9, 3.539629526313481*^9, 3.540300028398383*^9, 
   3.540300065456498*^9, 3.543309202646102*^9, 3.543574042884028*^9, 
   3.551289497130458*^9, 3.551289528887883*^9, 3.55319627306501*^9, 
   3.55319630523576*^9, 3.553539545047729*^9, 3.553539577775798*^9, 
   3.554812033203891*^9, 3.55481206514536*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJwV0Xs4lHkUB3DaLn668Ey0PdTTNmW72FxKimo7atkwqDFKyhSFaXdp35l5
39eWNik7O7nFkmZLtKHLFhNyqVUnViWMDd14Wlsahpl0s2lr0/72j/Oc5/M8
549zvmdm5E5x1CgzM7MAWv93T8+DsmgBA3aLfrq30o+gZY+dxRNqT+eqKD/q
Bym/noqYzEDgdI8hCXX8w+bezTYM/JkmEXxFXZVoFRU8hYGjo03ibGq3G9kR
YMdA0cZcvYHaSZIfZidkQGOsX5vlT3BWXIVI58qAe2L2il4RwbzPU7jOYAZE
Bf96NAcRPJkQM6ZIwYBsi9FeJSb4aMndwdYsBuraRwY8QghqM15Mz69gYHyH
9scFoQTHhwjKPutgoDOsK3UojOBwZXeK9DUDlrV81PtwgvaHV+Lzj+WgaVbF
jGwl2PS4cKPXEjnojZ4bbm8jOKG5cqn7RjmgU8qGvmh6r1CX0B8vB/HUhcm6
HQS7X/P273PlcPPV5k3nviHIxeg+VNTI4dQBc7luJ0GN93xfxwdy0N1yXI9y
ggG48L73OzlMUumVwyxBj+qWazhNAXNTenc7fEfwwvQ467fLFJA8992zmQkE
L824XHgvXAEjp4Obtu8lGJQx8bhijwL6h4ekbBJB9uiEh+X5ChgebBO1JBPs
mH2ck1xTgDhsBmuvJnjFfjFb/pcCdqeWfVicStCzNL6mcpQStowbRzQZBL20
1yLjhUpo+SWm4UYWwX1OedE/eykh+Eh+uDGHoNjXQbt1mxK+NiWkhWoIlt4u
k+qTlLCmbIzzoWP0P69N4klFSrhQfTJIUECw/kjNidzrSnDz16rVJ+l+p1NC
uvVKwMz0V43FBKsllkFN41hw3uszFHKWoCou/Tw7h4W8u8LEs+cJZowpik70
YeEAY+x6qSU410MW5SxjIcL8cpeqgubX6dJ4TMVCzpeHljypIvjR1GJ5yRkW
bM9Y26ZfJuhd/8m+7xtZ2K+RlYxcIXjVuGCgxMBC2m+L1JF1BG9p+47st+Rg
16PNT22uE4zoKT43ZT4HMQKDPrWRoLpMMDZQxMHEDTqQtBDsH7G+pI/lIKp8
sp3VbYJ3qm3al6VxYLu+VpreQfOxanB1L+VgxonaCdL7BDe17/p7UMfBlufC
9BddNB+b+skWgxwUZ7aF890Ev31ZxTdY8bA9VJwd2EOwdUUZeDnz0HGxMNnQ
S1C4F+60UHf+MLXwDTWHuh1hLjysbXhUZ9FHcNpqY5bClQcnN858HrVszWx9
0SIe3jgWJu2gNgs+rLZcygPfZJMzQO0i29XWDjy4Ry5/azIQ3H/GImarFw+1
V6Nnvae+O3D4nYl6KKBPNLGfYEJs+eyxq3kIfdNXsID6ptzELfWm890mURx1
xB6pfZ4vDwah+cVn1BVXTKXz/Hh4Nie55wO1hdnuLyqpfUrCBdYDBEuScmNb
/XnoG23NuFC/Vf1x1TyQhzmx3EKGOqBRKkmntnUo3raPusDyqcEuiIdbB+fn
ZFL7pBGB21oe1C1u/1yg1uhyi5E68WmNYx21yerTZQHrePALyZa2Ua9cV9H6
gNp5+e+Zj6mzslZtjxbzwLr6Nryk/g9k8U70
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{280., -3.24},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameLabel->{
    FormBox["\"Temperature / K\"", TraditionalForm], 
    FormBox["\"Potential / V\"", TraditionalForm]},
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotLabel->FormBox[
    StyleBox[
    "\"Gibbs Energy of \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \\((\[Null]l)\\)]\\) \
at 1 atm\"", FontSize -> 34, StripOnInput -> False], TraditionalForm],
  PlotRange->{{273.15, 373.15}, {-3.2397208607637205`, -3.161254581622768}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.537127839210483*^9, 3.53712786277535*^9}, {
   3.537376138840432*^9, 3.537376163890817*^9}, 3.537377385484705*^9, 
   3.537377567220993*^9, 3.53737764939781*^9, 3.537377742868891*^9, 
   3.537377778988025*^9, 3.537377814224096*^9, 3.537377853015023*^9, 
   3.5373779235503*^9, 3.53737812171231*^9, 3.537378153086099*^9, 
   3.537378183806911*^9, 3.537378217556759*^9, 3.537378331583206*^9, 
   3.537378999828376*^9, {3.537480212407716*^9, 3.537480241213961*^9}, 
   3.537511406908967*^9, 3.53751210154149*^9, 3.537512795377648*^9, 
   3.537736578912228*^9, 3.537736609613451*^9, 3.538177301817451*^9, 
   3.538177335607138*^9, 3.539267348443473*^9, 3.53926737967536*^9, 
   3.539629494103958*^9, 3.539629526313481*^9, 3.540300028398383*^9, 
   3.540300065456498*^9, 3.543309202646102*^9, 3.543574042884028*^9, 
   3.551289497130458*^9, 3.551289528887883*^9, 3.55319627306501*^9, 
   3.55319630523576*^9, 3.553539545047729*^9, 3.553539577775798*^9, 
   3.554812033203891*^9, 3.554812066440702*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"R", "*", 
   RowBox[{
    RowBox[{"g0Hplus", "[", 
     RowBox[{"400", "*", "UK"}], "]"}], "/", "UV"}]}], 
  "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.551289549379251*^9, 3.551289623934713*^9}, {
  3.551289671219876*^9, 3.551289704303271*^9}}],

Cell[BoxData["15.466948167631411`"], "Output",
 CellChangeTimes->{{3.551289558933973*^9, 3.551289624827492*^9}, {
   3.55128967243444*^9, 3.551289705229521*^9}, 3.553196307388136*^9, 
   3.553539579996736*^9, 3.554812067530732*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "Internal", " ", "potential", " ", "at", " ", "1", " ", "bar", " ", 
   RowBox[{"vs", ".", " ", "temperature"}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"u0eminus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\>\""}], 
       "]"}], ",", "\n", 
      RowBox[{
       RowBox[{"Tooltip", "[", 
        RowBox[{
         RowBox[{"R", "*", 
          RowBox[{"u0H", "[", 
           RowBox[{"T", "*", "UK"}], "]"}]}], ",", "\"\<H\>\""}], "]"}], "/", 
       "UV"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"u0Hplus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\>\""}], 
       "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"u0Hminus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(-\\)]\\)\>\""}], 
       "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"u0H2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\>\""}], "]"}], 
      ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"u0H2O", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\>\""}], "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"u0H3Oplus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\>\""}], "]"}], 
      ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"u0O2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\>\""}], 
       "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"T", ",", "200", ",", "1000"}], "}"}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Internal Energy at 1 bar\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Potential / V\>\""}], 
      "}"}]}]}], "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Internal1.pdf\>\
\"", ",", 
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Internal1.png\
\>\""}], "}"}], ",", "%"}], "]"}], ";"}], "\n", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"R", "*", 
     RowBox[{
      RowBox[{"u0H2Ol", "[", 
       RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "273.15", ",", "373.15"}], "}"}], ",", "\n", 
   RowBox[{"PlotLabel", "->", 
    RowBox[{"Style", "[", 
     RowBox[{
     "\"\<Internal Energy of \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \\((\[Null]l)\\)]\\) \
at 1 atm\>\"", ",", 
      RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
   RowBox[{"FrameLabel", "->", 
    RowBox[{"{", 
     RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Potential / V\>\""}], 
     "}"}]}]}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Internal2.pdf\>\
\"", ",", 
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Internal2.png\
\>\""}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{{3.537377614036628*^9, 3.537377614072374*^9}, {
   3.53737783557595*^9, 3.537377835602125*^9}, 3.553548021875699*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVxXk4lHkcAPBhD7oeciVma6gcaxNSzun7jbUoWlllt3MjZRRytck1GMeY
8b4oyTWDaWQLva5E7K8sNpYUncND5z4rbZu0ikl294/P8zEKCPcNUmWxWN7/
+X8PLteYxeJhfFL+q9hKGXHpdTdUqPEw5MDla9srZMTZ31enUYOHu1zv55lL
ZMQ64vDnwSt5aKe23O5hvowYyHNfDGzi4SRVkmSfJiMTi/+olybw8LBEpvku
UEaoEcoVlDz0a6+ziTaSkbtxjw4mToeghbL/eFhJBYlO9VbdvCwUJTLdL1Xj
y8ntwKWvx7XDMSRPbaw+rIwoRImuXqnH8MhQ1qR/v4T4bfmhrSs3AgXDq+My
c0rI2pj9e22oSNxxTFt9KraI0IJei+vSKLy0jzNRvPEsaUzouelbHY2sFV0F
d+fyif3TqcL7lTG4IOQXd8+JU8RtbWpe4uXjeEbjnrfyYi6pe8pt0G/8CZtT
BbU319BkLFVc1VR9Ah2zxH431EWkQB1/j26NReJ6u3JTXjqpnVmhZ3r5JF7R
I/NmwSlk20AApeyOw6MOQws4PXGEoRyHBwfjcZ8ww9H6ZSSJaOX6lPYlYIA+
e9LPJ4i09crfCIcTcZ/P2OtbS53IIXeHdt6DJDRvT7I1atwF3nfOKjbE8HFU
UVUeHB8ON2ZG8YqSj4PnzS2/kJ+AqLuOTraxyVjsrzdPxfIhYJWn12aVFPza
bLhVa1YAyaahk+78FDw9Nh1ubCmEZM4w69aHFHzw9kmupnc2dIuUJuOpqUhb
9Hxy/UkOONZYP1aqCPD9t15Xyfs8mEKDemmWAEcN6th8p3zI7vH6q1MzDbt0
EhsvRRWAv3p+29PsNJxLnvaQpxVCUAtdcUo3HavzfTL2dBaDjFPG5p5ORzl7
Z8fDkVLoiJ9lBWtmYNngr+u7X0jBZKvah1UFGUgVCE1btcqhZcBc9FAnE4/M
p69/y66A3O6PVpzSTBQ5xujQXBmcjRoP+ZEtRO91LVOLt56DZN0VGsaFQsx1
sg5z+U4Oteaf9UZzslDPsKj9QUQlLHqrsvy6JAu5jd8v8k04D9VWdYkSUxHK
OOqWX0mrwDLgwra5GhFmnJuYaL/6MzzybKnfYSFG7Serq2y6LsB92cm10CDG
0TfbHNSfX4S5hu3OxjbZ6NV+88a1yWr4tCWyKb02G52lKVNWMzXgY/WNW/wG
Cnl+plMqyy5B3951vCMNFEoe57xXaDKgHxh8tbSJwvYwmmepzUBgcPmSW80U
jiizFcm6DMxGatfbtlFoqCdqMzNgwCzz3excJ4VFW9L4x1cxIKgn4px7FBY0
xKprbWSAq+bDNM1QmJsWoO+5m4HMxULVP5UU1mkdEJbsZeDO0g4/g48UDkj3
z/69n4GjbNuZRFUaNVv3jJw5yECRtb6LxyIa6Vc7y56FMjC9+9GQgk2j2H+r
GZ/PgMuB5SZLVtJY88yzcCiFgexDvifAiMa+CI+FpmkMrI7oZJ9bQ+NCsdvL
fiEDvulVQaGWNGZcA8bwFAMS0eNmqRWN5703GYXnMzCeY7Bw0IbGHoVzXkcB
A/xice1GOxrV/nGI5pUw0FfWxeI50GiSYv+8TcLAssqPvsVONLpp2O3ULGcg
4KKdvJ9LY1DJht8CZQzUMsfezQONAnNb+2Y5A/8C++1Psg==
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(e\[Null]\), \(-\)]\)", 
       "Tooltip"]& ], {}, 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV1HtUzHkYBvCpRY7LKUdtyqwyXR3yrYgaRs/WUmxjM4vQdrJTbIPoThqj
u2qm30+rVbFdaHNcKplKW5tjOdOkm5JJKZcStrSspGGKdr/7x3ue8/nzOc85
72LxIdEefQ6HI6T3f3oLBDwOR4KcxQlciYrAo9lrYa+BBFWcq9+EUq/1ExlX
GUqgefroQDi1U/hPM0IsJDAscL0RS21ekvWqfZ0EaeZvAzKoR+a8VBYek+Dw
/MDCK9TMI8bTfVIC/+kC3hvqrrj+YJl2H74a/mgX2UAQlSTU/9o0FJHn1mef
UhPcC5r3dnj+IaRcPTlY1EjQK5d5+iSFoXQ05tXFOwRbN+2sb8gKxyVrZ1Fj
E4FDdGCAMxOBwLKRXzubCdjk5qW3CiMxZHvU+30LQdWxprui0iikaYqvGLUR
uA6O5XVfiMaz7pZRs7sE6x2SfpZdj8G81ju5bu0E1wYFlQuqDkNrouJt6CB4
mqS4WF16BOOndgUL7xHkzERLVF0sGvTVM/Z3EpTrFn1pd/0ofBuJIvo+weZ2
MTOpjkOF9GDEaQ1BBcPv6+yUwmavt5GyiyC8TuCb33oM20oss+oeENQ3l7xL
75NhR1dbxMNugr1ebjckPcdh7B+7+kUPgVCT2+sSHY+Se7ofDHoJ7uie4PfJ
eAilJnzrPoLILv6albEJKJOSCYdHBGKrjT5f6yViIHTRws2PCRLsQke94hPR
UTXbwv8JtWUfp+NTIjQku1f8lEAtn7QdTkpC6dlRbXw/Ab/MaWBSLxnuAUKt
fIBgDObKwoxklBjKtpc9I8hs8nmtMkoBT7vxYNMggd/MX+oHM1Ow09lY0vmc
YE8te/6USSrEgZWq0RcExZZFXEF2Kmye+X4x9ZLgtnSCE2J0Anp56bppQwS2
3xp8sso5gavI8eUNE9S2L5E/NE6D6brijGWvCLLUU46W+Wn4flmyjXCEIDdy
eN9ubjq8woKKd/1N+5gsMuTlpUM09LhH/JrusWR6c5RlBlZscTiU8IZg9ns9
s1sFGWgxjBtS/ENQ6nhNVmAnh+vN/NvlbwmWiy9v/lwmR/15/60towT9G2uV
25YqMNFn2qR5R9BdfNTBvVKBWTMuFbwfI/hcuWUtzzkTXSmufnrjBNNqI6pT
yzNR4xbUOFNL4Ou4Yb3UhcGBJ+Jc2w8ErQFEsr+SQV/Pbh+njwQLgkL+yK9m
MN7lMeZCHRRybm5HDQPD+9Zn+NQTEfOVK+sZeLYN/eVJbZ/2YeKzikHprbCk
7dTJypuKkw8YHL8cXxdHLTDwrajWMbCSFtmrqdPmpOsPTTIQxCa2N1Nr5t3e
aj7FwC8mOKad+gB3pU6mzyIjzF7VQ33GaYGH92wW48EVgSPUWv/++71cFmrh
n6eNdPQf/GhmO9eCRf+m8wIT6sy9oiPui1lMeCU/N6O2Dldxf7NhsdzD29mK
WpR6cU/ochZ5qzraXKgL5AM1hY4sKlcoo/jUwyfNZ3U6s2hzzF7oTh1/VlG+
ajULvaU7JN7UrUUNHIkbC64930hIbXphSnR2DQsXG27NFmrxldUlbQIW3/Gm
ArZTl1eEffjXncU+i/5p/tT/AdnLPAU=
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(H\[Null]\), \(+\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVz3s0lHkcx/Gh3dGKg3XNThK7rCO5nClF0/cbWQqtJrZStpa0JmwNQ7kN
jUuuz9O9cDLtFqmQSxJLNcJip5QuyqXl1G5Nl93U9vyGabTP/vE57/P687Mg
cpcwWpfD4QSz+78BAoEdhyPCpLurYv7ZzYBPv/8Xw3oijFY2nTMWM7B8g9Ds
kpEIw7rtXrqzdhf/yI2ZL8IlLZyfJKytKw++GFghQnVZe+IU65cGfzXKM0Qo
jeRnzkpkgBqlfEEjwtxJ+2OWSQzcTxvfLmV24nGjWV2QwoAkO1h3pWU8rh+M
cfCVMXAnyuSNynQXjvkoTtUWMjBcJPUNyt6N9qHvhl4fYiB0zab27oNi1H2l
NJ8oZ8AlaWuEB5WAF91LY73PMEDn9Dsr5InIaA16A2oZuJTRd0tYI0H1zvAJ
58sMLH3yrnSoKgn7css+T77KgJ9L9iHp5WT0cJStSfyNgYYngiarS3tQlLyl
bGiAgT+yi6uba/bilh3GZ00eMnB8Nv4uaUtB1Whs28w4A3VTNhaOl1PRR6ft
T6GKgbUDkZSmJw09ay5ahr9loJ7yGhkcTMdnRMr11DAgbhOEnFRm4PZJNEyb
RaC9v/JtwYgUU8XnrRMMCOzwX9YhepiJ2+RcvG1GIPjeieHFSVn4eL1+3MQ8
Ar1Tj/GKJgutzj0L7XUgkHjfy5ufsg9ta1rCLFwJRNqvDlqpI0PFYtcIy6UE
9jnGT/pnydA1vjQ9E1nbjnBuf5BhuN/Yxo4AAj1FGgdVdjbanOn1rltHwKvW
fUKjk4MX66uWcMMJvEPrRnlhDo74LlxqEkWgpC/odZdxLt7YU8RMxhLYMPto
+5OSXEzZNKZcJiEQ3Ur/ctg8D3sUD87xMwictj3FExzJw6dDnRXHcgl0pk9z
Yoz3YxuVH3KrhIBDoN4H++P70UX5fnbrMQKtA05Fj8zyMa4l7JG+nMDBnhk3
25P56OsUUW9UTeBEomrnNl4BvgjYIE+rZ/+Y2xjZlRZg0GfOgR1XCNQ5fdov
sS3E1SFV2gYFgTn/6sxVVBSiqZ9Zr2E/gRq3BmmFYxEmX3cq5d0lsCjy/Fpt
bREeHbVy1BklML66tTHMuRhlVdPKoKcEhk6nukBTMeqR7JTA1wS0TeuW23mU
4Ob3HwUN7wl80prQnFdXgqIjYddeaQmEuH3jl76YQrM2of8IVw3KCFdRbBOF
hSU+z9yM1GAVFfPryWYKtyQLbb5jHRXzs+HtFgoXbY0MS2M9nWDayG+n8I6b
7EY366/zybS2i8K59xTycGM15DReKz7wgMLz1is35pioQaAXUt88RWH/Wegb
MlVDvkGB7nMNheUHvuVoWd8z6Qy1nqEwPmWrp52ZGuJ4/CmpLo0mgZmVcazL
3K18AubQuPHvq/t0zNXAbB6/O8yj8Tl/hZezhRp8fpjrYDifxvZ5a8UhrEt2
CPfCAhqLud9XJ7H+UtzFO/MVje4PMyyusxbmVUfHL6IxNa3jbailGiqKJlrk
bjSu2X7TKZW16oC1/qAHjTbBY9vkrLPKi+uWeNKosNHeUrFWnurmiJbReFjP
kGtkpQbLqhlhuTeN0W94Aj7ryAuelTcFNHo+WijZxLqufjf5CDTqdy6/IGX9
H6MIUSk=
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(-\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(H\[Null]\), \(-\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVxXk01AkcAPChrEpW8yRMYlBkLZHpGo3vt0NK8lortZWtMJppVxlHOtzD
OOf3oyixzmLmtZod48q1vx8PW5YcsUra0FNLxyo2V2l3//i8j6nPOQ++OoPB
OPCf/9/L45kxGEJ8E7tgZSCVUTvbXFYPaArx/L0XadUSGbX9sMfKCh0hmuq8
uuQVLaPsRae/EJgI0eHCycdXgmUUqzh9vNNJiFoi5W8aR2XUq+UvVPkRQnyg
XyzrtZBRxCCxC+aFWFTN5RvQJVTf5SG/yA9nsMa5S+DyrpgKER9Q36EfgDhy
uGW39S2q25c5MaZ7DrOrggSCiCJqICVyl5s4ENH77CH+wwLK0/W7+pZ0EUYx
O89y1PMom9AT3huJIDSL4K6WZmZTZFybdWN+MDoNRuXqDlyjKiLuP/AoDcE+
7a+dGqyvUlufT97oLwnFuqd668lgknK2EV+JrDqPv2wdbBz/J4Eqe84rN6gI
Q6HJnLr9VDT1TJwqryy9gMJpt/gMixDq+hL8PaT2InYnRz617vOkFLPGqyyr
LuFZ4TPd9ohT4N7pQ8y3XsYNnfVS7+EwUBLcJz094bhMs2ep4IQYRLW8g7nt
EWhvbNx7xT0Z6tuK3yc9iUQX++NjruNp4O+yrUH4KAqbHkpOigIy4EBv1sCm
0GgkxWHf62/Pgnuzf+Ld+WhksrTV+LM5ENzHdeRcjMHda209h87ng4/5Prcd
arFYaJrK+bKgEGIsA965RMeiH5Pp0OF3E2LYTxhdH2Ox/FzS1kl2MbSmzFuM
icUY5GfAtVwkA+4d++F5tTh0Kl6aIWmRwySyVPnJcZglIO+wFLdBet/tTfOK
eHwV1ijfTZTC4SWZ9c+l8fhVxS6HXHcF8GvIoqt6Erx6jLdZxVLCTXaBES9D
gjOHHA1tF5TQFD7HEKxIQPFiQjPsaRlY7Nf8aH49AYOaXnL0ulRQ02mV8nhl
IqbJ58JaVeWQ3rpgx85NRO27CdxReQVkBY+dOWmUhJXmMyMryUqI0TPWMbuR
hCIvi89GoipQWGm0hbCTcUV2CavSvxq0ptQMG/OSUcP80YCn210otSuLzLNM
QcmHEYsi5xqw9bnt/ulOCr5NyKwd4dbC0L4a1SHrVFzjz2hns+ug/+YlGyhP
xf4SxdQ2w3r4VP7NdrONUowSUx3u6g2wuCaoUqKQoo4/88i3LxvgoN0e5/BN
BI5MdwiEQ79Cu/cG4Q/lBMonCpuD71Ng4Cuoy60k8PSqnvr4Dgp8BYXaXdUE
Hu9PaLzeTcFckK6KU09g+Pv0ibrHFKxPnJ771Eyg0jtmdPE4BXEqKjXtDwIL
j7y+5qZBA0/zoLJylsAHJlL56DoaEpcnqf81T+Dkfr/Avy1p6GU2ebIWCJwZ
q3KataLhRyPObKQ6iZmtfW+X29KQbW+wc68WiQmONrmczTR8ODb0cMCIxKms
Zw7xe2jYecrQQtuExGvern7kXhqk/h4XwJTEUBP3nBuuNKwVNRvdWkfiG9b6
NQp3Gjwkcn6ALYk/FRwN7PeiIS9luDrfjsTpmca+4SM0jKWxlvVsJLHMr3vH
66M0ROekKjZvIfEyc8JG7QQN7QUtDOE2El3NFim0TtGgX7LgkeNI4vxoC2eV
Lw0+P28p7uCRSOzhNrH5NCiUgdOfgcRBWx8v69M0/Avsfkxd
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SubscriptBox[\(H\[Null]\), \(2\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVz3s4VAkYBvDpnFPalW6IpBopumw1PBRqmq9xi6XVbGXbtIpoRnkyLqnc
GTKYc0IapehCN7KMGWKtvqysLJEK0UZr21K72VRaBrtn/3if9/n99T6vmd9h
UQDB4XA82fzfW/j8JRyOBGYsO3XkYwSFwmbXBT06EjhBdhg+Yr3RW2SgniWB
yLtdahVrK+mBaeLFElgp5A8fZm1SlPm6bZMEEpvigl6HU/hmxh+qghgJ+Hru
2tYXRiH9lHYUaCUg1BZpm6QUPo7q3x87EgQ1U4c784IpDE/yJDYbBcNxde5g
+n4KH/jP+XtQ/zCUO43I9X0o7EmPdfRICoGnvD/1f/qawu3uu2rvZkqh0Ivv
UONO4eoI3z3WdCioT33W7SKkkJE1r7pTEAZx+/JURvYUqmPu3ReVhMPSuvxD
ujwK7Qben+m6EgHP68zOZllS6Lw6KSu28gioNww1fbOIwvIBfoWxOhJuD36h
LDeksC8p45qm5Ch8dc4jc5Uehcrp8Et4zTGI3uRU3EdSWDq6aJ5l5XGIXuH+
s4WWxK1tfrS2MQrMFZ6hhe9ILKMdejs6oiG7MGJE8IpEaQ3f63xLDOzqXsYJ
6SOxtrloWN4bCycnssiOxyQGutr/KOmOA2LCKeZeC4mej3J7bCPiIaztQMxQ
PYlNo8/gljYevIx0NdbVJIY9dthgcywBJm+Ips4sI9HP3M1j85RE2FvXG6F/
hcQEy+B3rvGJIDAQS1TnWHN7Oe3jidCj6dwvzSaxMV1rMZiUBHH5vpt3ykl0
uGn1XDtFBvd7mmq74kh8DyaqgjQZrJMvLImKIFFxz+OvhtnJUDXXroN/kETv
6Tm1A4pksEn5dqxgH4kB1cylbMMUyKTL1nG9SbzMvWDKP5UCPo6RPKEnifXR
Yxzx7BPgJL3UmexIosWXOuPmyhOQYW/mNGBHYnXbivQnBqlQHObw/sUaEjMb
J3nc86mgzlG+mDQnMTdsMGivqRw2Fh8brpvP/jFcNGvJGTkciguvvDiLxNIV
U5vDuWmgF7Vz92mKRN0PU+bfyU+D8S5Zu+0YgSW88th8y3TwcS7NGnhL4Bq/
G1snbqZDd0VUoGqAwH63atWOVRkw4TD749onBHZdPr5aUJEBBv0NoqpWAicq
tm1cYq2AxoXJIUP1BFLVoZqUUgVo3jy77nGLQC+ei3O0LQ1udjKf70sIbNmz
VnKwgoZpzpEPGi8SaOwv/uG8hob27xQfclj7iy/qtVfRUCt1nRfAeixUX2VT
S4Nr0tUdJOvlqZ/GJhpo+MfbqEFwgUCZ6nbGyU4aWt9qfG/lE8jX8SrTjNLg
O+dd5rU8AlNnyIlXWhoErSnySNaP5tRvN5lk9xQY58L6kKnNaCzBwMPFXPHv
Zwk8a2Us3KLLwIs8ZjmX9cju/oc9pgwor/PEylwChfvmW+gtZuDMTB33QNaK
QNFRgRkDd5ITVtqyXiptMC1cxkB2qd/LDiWBopRrAcFrGBjS6fSayTo//XlV
AY+BqwtaLX89TeDgSZPPO6wZsHIXTxSzjs/LKF23noHE8bRCN9YtF+5yJPYM
VCbOPWLM2ujKpChvAwM5yze5vMwh0K94fVErnwH/IT3DStalZSGf/hUwENSd
8JuM9X+IqUQU
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, 
       "\!\(\*SubscriptBox[\(H\[Null]\), \
\(2\)]\)\!\(\*SubscriptBox[\(\[Null]O\[Null]\), \((\[Null]g)\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        GrayLevel[0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV0Xs0lGkABvAZR3GaQXJ7X9lyibKlkFQY86RkKsrOZts9lloqM2pWQqUi
GTEa833aVVihiJyUyqCUFKGStiJd0MWqTmp1tnRZRPvtH895zu/P5zw2YVHS
DTo8Hi+Ay/8tEYlseTw5ZnU9afo7i8Cn1W9yl54cA4JHHaOcvdZITauM5FA8
Nu8zPEjgEh0xXjZVjvuStTounC1LDry+7S1HYZPzkjjOb4QvKwsT5DgRvKRz
lDPTwywWj8jBLL/gbJRN0Lnr2frET5FwKy597ZpLEKsM0FlkocCjapvve/IJ
7oYb/9NvEoX6TMGAuIigS5242F+5BVfOtipySglWL/+prvlANMTeBpdCygmc
4taGuDJbEf1uqW7vaQI2pXVmQ2EMFs2THXtQRVCVcONP6clY5PO1ETdrCRb0
DeY+KI2DbugMx4R6Al8n5W+JNduwXbPE/sRVgrN9Ii2p2g676wKfrOsET5UZ
ZdUnd0Dpb/om/hZBtj5uxl6IRz3d5t3bTlAxNMV8es1OTCl2eM1/SLDydhgz
0rILQTcVD8seE5xhPLrb23ej5mp2dUAfQfQFUWB+WwLOB4b/W/qKoK615H16
dyLi15k1qt8SbPRbeEn+cA/mP29wsP1AEHAvp2teXBL0TeYKJcME14ee4PxI
EnYNmf4o51HEdHp4usXvhVlHYKn7eIowu2X+i/jJiHmeJsgRUuydrnjnl5QM
fsE3iUWTOFt38+58ScbcqOaoIkLRoh5x6FcqYTrmU+sxlcLjlEvvCD8FwtDN
FdvsKQZhWVm4PwUvs+9tXzmLQnPDf6Bp4j546rGhVnMp1ugfrOvT7MPxp4fz
VAspNtSyRb+bpSJnmn9bFiiKrY9YibJS0e+1OtfLj6Jx9zBPNjENhpPLDTsD
KBxW6H2xy07DnoKGSOMgitrbjupHpiqElJGk58EUB1rGnK3zVcgMWt8YGk6R
E9Mfuc4qHaskh79VRHJ7zKYY2eamoyrCpEEeTVHhOK411no/njwu+dk4nkLw
gU8bCvbDfPBInCSJ4qTz2cSC6Wp0H3Ovd1JRzA47sXL0lBqmMXNe8DMpni2r
rQyamYHIeLe/1mVTPCje6STWZkCYRW5FF1KMar/zsnXVwDEtwk5wnEK3dmt1
aoUGabqGyUwFRaDzUt/d8xj8YJC34loNRVvIHPkmLYO3y75MTKmnIOGyi/nV
DMxVAw2lnMNlRw3unGMw7r1V7A3Ow1tNKt3qGPjquPcYXqaYofo8PNrEgNiu
upjLOaXyckbmfQbBdQbVp69QiPQCz1QPMWib4X2op5FCJUzXeTXC4LR5+69f
Od8zblxtOcZgwtujEturFJut3IYSdVgojD5+jeD8hwvxkQhYbLGISBjk/Cn4
WUeXFQv9Mbl2QjOFzy/UwWAqC2mHttCJs2ajdIfYhkWKbIEmkPO06CarY/Ys
ZGnvNh3iLE0t26CYzeJwms0C2xaKAnXvuUJnFuX+4tm+nPszLSe0u7Io8si2
l3FOysuocJ/PItL3o0UF57YjzTz5QhbuXiOT7nK2KB2T5nmyeGHkafSBc1j5
/JJbIhbhp6qEFte4v89s+fxVzCKPLxN4cP4P4rUWOg==
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, 
       "\!\(\*SubscriptBox[\(H\[Null]\), \(3\)]\)\!\(\*SuperscriptBox[\(\
\[Null]O\), \(+\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVxXk01AkcAHBZNbVYJJKdF7HRsYQ3kqvvF6/cpUmvTduxKmsmtoSixjhG
45zfD5tc6xjSKBFj3OqX32A16XJE6gnZSpdSS672+OPzPmv8T7CPKSspKXn/
5//dHB2NlJQ4GOTO0DioWkY5K1y/H2RwkD8U6vSbShnlsJe9QqbBQf9yYSB/
QUJZhvy6JNCAgx59WpkFExJKvzT99f2tHJx438Ed6pFQb9ReSAujOKgo8jP4
+Q8JRTwlXGCOg0MDJR4+ZhKq79zwUf4UFyUN97Ya7LxMhQm8lZ1WBqPx0Suv
Pgddoh4e0fowrn0Cy5qdd2+6WkwNpvBdvAQnsY1yO504UUT5euxraU8PwfmE
uPQoZgFlFn7ogBVxCtP9fH25WbkUGa/Y2FoYisttQ+ut5BcpWdTte+xrYShm
0ElB8xnUluefcvovh6MrMvKtxwhqm5kgg193Guc8b8/LNiZQ1c8da/RkZ/Bl
a2/xzUfR1DNBalnttQjMqahgtyeGUFlL8U5YUyTmfe51j87YSlXOrNY1rTuL
AwrjafMkDuy470/MdZxDRmhyz6iCB1WE3ZPubh7yalxcjdhCCGly9MnvikJV
piC3Uy6CFkXpZNITPmaX77YcnsyAAFfbG5yBaOQVi8bF7RfBuzd70Do8Bq38
BGPTH3Ohc2YIG+ZisFMvWipbXgihfXb2rMhYZP3Ij2iNFIO/sbuX06I4nBI+
PtOYVQKxpsEfXWPisCKPWW+fWQqxhk+UHszHYX/1EtWpFAl0pMyZjAsEOOnz
ZnSs6grYVViOzC2KR93qtpfHZeXwCfWlhcnx+PK61dGSFxUguu31rk3zPNrG
MMTfLKuCvUszW56LzmPP68Jz59Wr4VgjWfy7jhALXPaQ+eulUGJYxHS8IMSL
FzKbnVk1QPNmlQI1E9C2zUb8xU4GJp6MeeOsBDQwHHlxZl8tNN5fn/J4RSJu
fhtroB1QB+kdXy0M8xMRVK19xcn1kB06zj3MTEK1C1/3fZffALE6qzWMcpLQ
gyu1sS9vhMr1ixVhhslY9P4QU/CwCVQ/L1rVWpCMcX2e9dv/aoZrFtX8AtMU
VLuVpuOmdQPM/a/uWKhIQRcV5sDUlpsw7N4o3bMxFRUNTJc/vSnoLzlrBjWp
GGeWvSHK8RYs1OxyMLISIb/tXWC64haoNJ6qFVaKkCXizu/c0wo+Ftu38awJ
3KCbM8Z+2wpdBzZxjtcQuOv6yKrKSBr0jgQ259cSqNUfACY8Go4EitUf1BOo
POUbXMCnYfaUtpTVQqAamztKCGhYlzg9u9BGoGJzsOVJEQ3xUio17RGBo4Wh
/iwxDY4Mn6raGQKfBUvU5Z00JKolKb+aI5DrwAOHOzT0atG++l8J1DCsiKy9
S0MQkzXDVybRvGkNo6ybhlxLPWc3VRJPcL2Eoqc0TO0f7hlkkthctF/H7wMN
zr+sMlE3IDE2sbOrZ5IGUQA7AtaQyDJNTfX+m4YfQtqYl9aS+JOn7lqnWRrY
wrJjweYkHrxk1rRORQ4FKSP1hRYkZspcZcVL5DCepv9ttxWJEcvr6pjL5BCT
l1q52YbEkjSiV/M7OXQVtStxbEk8bPBlIllTDisvf2Xn2ZPYOSDTXqwtB/9y
m9K7jiS+C2+DaB05VFadnP4HSBRXmYTNrJTDvzfFVM4=
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SubscriptBox[\(O\[Null]\), \(2\)]\)", 
       "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {200., 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Temperature / K\"", TraditionalForm], 
      FormBox["\"Potential / V\"", TraditionalForm]}, FrameStyle -> 
    Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Internal Energy at 1 bar\"", FontSize -> 34, StripOnInput -> False], 
      TraditionalForm], 
    PlotRange -> {{200, 1000}, {-2.557597090145128, 15.98702254520295}}, 
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
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\""}}, 
          AutoDelete -> False, 
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
            "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(+\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SuperscriptBox[\\(H\[Null]\\), \\(-\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\""}}, AutoDelete -> False, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\""}}, 
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
 CellChangeTimes->{{3.537127841202138*^9, 3.537127864723093*^9}, {
   3.537376140911697*^9, 3.537376166273317*^9}, 3.537377387161524*^9, 
   3.53737756920682*^9, 3.537377651341923*^9, 3.537377745566835*^9, 
   3.53737778182028*^9, 3.537377817044025*^9, 3.53737785589729*^9, 
   3.537377926469346*^9, 3.537378124687394*^9, 3.537378156035069*^9, 
   3.5373781868329*^9, 3.537378220399564*^9, 3.537378334387533*^9, 
   3.537379002560405*^9, {3.537480214835846*^9, 3.537480243655347*^9}, 
   3.537511409538939*^9, 3.537512104054434*^9, 3.537512797924122*^9, 
   3.537736581573345*^9, 3.537736612305951*^9, 3.538177304883955*^9, 
   3.538177338496832*^9, 3.539267351075155*^9, 3.539267382436379*^9, 
   3.539629496910664*^9, 3.539629529208498*^9, 3.540300031175524*^9, 
   3.540300068197877*^9, 3.543309205230989*^9, 3.543574045623001*^9, 
   3.551289500353503*^9, 3.551289531568779*^9, 3.553196275971399*^9, 
   3.553196307862706*^9, 3.553539547611102*^9, 3.553539580549606*^9, 
   3.554812036083258*^9, 3.554812068098456*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJwV038w1HkYwHGn9Flb0cnVtbvmuj1dl66s02Ux1SM05fyotc2ljonyo2nI
d398v3Tk1zQlyZxcqy4/ElLCEqIaHueU0LrC1jrSLxdxm+qiQu5zfzzzzOu/
Z94zz5chB2ShpiYmJj50/t8uLsciwqwY4Bv2rfeYy0P+UwHvGbXj2b0vpdSG
tNILwQsZcB4+mb+KOqa/4++frBkoNs2YtZj6aqJlqP8iBnasfN0+zOfhmltZ
wSBgQODqFJZBvVqet1MgZuCZu0NjrzkPv4qq9tY5MHAmTjTB8HiYsz6N7fVn
YKP1pzWhZjw8HxduVqRkILk1hZdhysPHTnpjZyYDwcYJ/a0ZgtqMVzZ51QwY
C9nNLVME5263qvq2m4El7wTa8fcEJ2oH0oLGGZjOkbmNjhMUntqAY4sV4Dvm
bjf2hmD7k8IANycFtP5lrlr+iuC8jlrp2gAFlES/Oyk2EjSIdXHDMQoIKSif
3jpCcGCcE05rFHBu1Yqj6UME2XDdTHW9Ajoz2x6mDxI87Wm3ZaVBAedHJKlN
Twj64HcPPCcV8EZ12rx+gKBz3Z0mFCnhUUBZY0MfwUqbqAUfXJUg9/fonzAQ
vPbF9cL7gUpoF3o9+1dP0C9jfq4yXglJO+oDlnUTVP82r/9KnhLir7/FJXcJ
dtvmsvImJawsc4kS6Qg2CL9XX3mkBElD+GFZO0GXipj6WlMVjPklH/duJeim
bQqJEasgfqH9m9gWgkmrc8LOuKkgYY798ZrfCcq2LNPu3qOC6Rv5s2oaCVbc
rQoaTFZB14Xsluc3COaMj8osilTQXOLh/7CeYHN2/TnNTRXkRm5+/aSW3leS
tn1gUAUFjm2tgmqCdXK+XztRQ6Wt3mtRJcEjUSfK1MvVENHjMelRTjDDrCgs
cZMa9NH9l5JKCX7jHBFqH6GG9CmnoaQS2q9XcvvsETWMtKfKaooIzvq8WFF+
UQ2HO/Y7XS4g6Nm8NOnQbTX0iOTe+jyCjSOrXpQPqcF2fuAOixyCbdrn2Sl8
FgL2sG3mZwgGPy2+vMiOhcfSqViphmBqldUcX28WJOu7EuyyCA5/XHBtMJKF
wsQbCrtfCPbUWXe5prOgjb1XFniC9rFscVhbwYK5pnepPI3grq6Db406FkoT
Zt+PP0r7WDcv5BlZcIxWH6g5TDD69VWuxZKDB5MtMxXJBDvXVYGbPQfKm/41
/QkExQnQc4f6QGCd4C41i7p9OyUcuBdYJv5BLXIfyVQ6cLCr+FevUuqIzbaD
RY4cVDZ9fBhDbeJ/KpUv5SDrubOZNbUk4uC9LuDA5t7MJq9DBFMu8sJ3u3Fw
UpN3aR21/sWpyVHqvECJhQN1XOQV2znuHIiO2/Yspm5VjLJSTw7yFT+GDMbT
XvFBwpwtHAg7DLGJ1NUNoxUrvDhI6E7pU1LzTH72qKX2a7TZEE5dnqyJ7PyB
g6MbxbN9qT8c+bPxE18OrEX704XUPreD5Ceoi8azXlpQ5/P/GRL4cfAypXyb
KfWmdHOrNVs56MvVfjYcR/9JpylG6jtT2Vwf9ajl164+2+j9b6MNndQbtlV3
Gqhb3aSuzdSZmRv3hsk4EL83nq2l/g/Bm0jL
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{280., -3.0060000000000002`},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameLabel->{
    FormBox["\"Temperature / K\"", TraditionalForm], 
    FormBox["\"Potential / V\"", TraditionalForm]},
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotLabel->FormBox[
    StyleBox[
    "\"Internal Energy of \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \\((\[Null]l)\\)]\\) \
at 1 atm\"", FontSize -> 34, StripOnInput -> False], TraditionalForm],
  PlotRange->{{273.15, 373.15}, {-3.005501258473605, -2.9358951816967798`}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.537127841202138*^9, 3.537127864723093*^9}, {
   3.537376140911697*^9, 3.537376166273317*^9}, 3.537377387161524*^9, 
   3.53737756920682*^9, 3.537377651341923*^9, 3.537377745566835*^9, 
   3.53737778182028*^9, 3.537377817044025*^9, 3.53737785589729*^9, 
   3.537377926469346*^9, 3.537378124687394*^9, 3.537378156035069*^9, 
   3.5373781868329*^9, 3.537378220399564*^9, 3.537378334387533*^9, 
   3.537379002560405*^9, {3.537480214835846*^9, 3.537480243655347*^9}, 
   3.537511409538939*^9, 3.537512104054434*^9, 3.537512797924122*^9, 
   3.537736581573345*^9, 3.537736612305951*^9, 3.538177304883955*^9, 
   3.538177338496832*^9, 3.539267351075155*^9, 3.539267382436379*^9, 
   3.539629496910664*^9, 3.539629529208498*^9, 3.540300031175524*^9, 
   3.540300068197877*^9, 3.543309205230989*^9, 3.543574045623001*^9, 
   3.551289500353503*^9, 3.551289531568779*^9, 3.553196275971399*^9, 
   3.553196307862706*^9, 3.553539547611102*^9, 3.553539580549606*^9, 
   3.554812036083258*^9, 3.554812069222289*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Helmholtz", " ", "potential", " ", "at", " ", "1", " ", "bar", " ", 
   RowBox[{"vs", ".", " ", "temperature"}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"a0eminus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\>\""}], 
       "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"a0H", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", "\"\<H\>\""}],
        "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"a0Hplus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(H\\), \\(+\\)]\\)\>\""}], "]"}], ",", 
      "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"a0Hminus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SuperscriptBox[\\(H\\), \\(-\\)]\\)\>\""}], "]"}], ",", 
      "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"a0H2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\>\""}], "]"}], 
      ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"a0H2O", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\>\""}], "]"}], ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"a0H3Oplus", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\>\""}], "]"}], 
      ",", "\n", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"R", "*", 
         RowBox[{
          RowBox[{"a0O2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
        "\"\<\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\>\""}], 
       "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"T", ",", "200", ",", "1000"}], "}"}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{"\"\<Helmholtz Energy at 1 bar\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Potential / V\>\""}], 
      "}"}]}]}], "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Helmholtz1.pdf\
\>\"", ",", 
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Helmholtz1.\
png\>\""}], "}"}], ",", "%"}], "]"}], ";"}], "\n", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"R", "*", 
    RowBox[{
     RowBox[{"a0H2Ol", "[", 
      RowBox[{"T", "*", "UK"}], "]"}], "/", "UV"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "273.15", ",", "373.15"}], "}"}], ",", "\n", 
   RowBox[{"PlotLabel", "->", 
    RowBox[{"Style", "[", 
     RowBox[{
     "\"\<Helmholtz Energy of \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \\((\[Null]l)\\)]\\) \
at 1 atm\>\"", ",", 
      RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
   RowBox[{"FrameLabel", "->", 
    RowBox[{"{", 
     RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Potential / V\>\""}], 
     "}"}]}]}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Helmholtz2.pdf\
\>\"", ",", 
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-Helmholtz2.\
png\>\""}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{{3.537377614084935*^9, 3.537377614120838*^9}, {
   3.537377835615812*^9, 3.537377835642481*^9}, 3.553548022693579*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV0/k/lAkcwPEZKyq11asDk8pRZFsxjIqafKOSwsraTrWl2BklREKZMJJj
5nkolpKjLVdK4wyNvktMxUjDDOYJS722ErurAzFo64fP6/0XfAy8/N291Wg0
msvXvrmDzTak0bigZjR0qkQoQvsmx6WUJhdahJfzmcki3LTXfVH5PC5cLTw+
WpoiQmbgbxqcFVywuWKuqMoQISM3+V3rZi64+v4tlBWKcHDO69LsCC5kbSnK
WScRIdFNONipuKB90XpK+kWEinN9x3mjvlDZqXikE1KCwXwXtS3afpBvOWTu
EFOKsmMLhgcW+kO4U3iJf1IZUok8B2d+APQ3LLbblVuOHjv3ixuTA+EH7w24
va8Czc78esiSOA21lc1j1gvvIxnTtKYuOwjUCzvymX5VWB7x9Jn7nWBwSWFb
326pxg2vPl7tzDsDOzN54y4GD3CbGf8yrzIEJCxaRN91MZa8YpfplJ+FkRqT
5P2zHuJffEFBxZ1Q2HN2JER8FjFtJjQH14RB7Zi9M//Sn1g8vnyJSWU4CAqK
4v51qkPXVi9CJTkHV1LJGieDehQRti/a2s6DdthUgNV4PQbWsN0ypRGwRLen
5ZTkEYqbcj/Ev+CBJz2rm1HYgD6ONrXcrgtg/Kn+9pHIRnSRp1PWZyIhz+pe
aqKfBJ+M90KVKhIy4xvDNxx4jEEK242ssCh42Uh5etg+QS8jJ+ct9GjoWPrF
UWbxFKNM/N47RkbDoFVEnwmjCaP0X9CeT0ZDhU1etZzejJJElfEAnw/uQ+3p
+2hStL3L7FfRY+B6T05dw7AUPwKjNDshBt4cPFB86nMLCp86/9Mw/yJ4jppJ
Paaf4d6ZqeJXwouQ/thl1taRVvSuJv+4sjgWFCyWajjqOd7Uz9Fjp8TCzTr2
MgFdhvXnJ2ic+ZfA7Z3KQX5Bhsa7NCeN0i5Bvv4BLdPZbVjdapqoXBQHLJeR
+ScFbZgsmbbQz4yD3maD2QOMdkwPGvA9ohcP4rShScMb7Ri1ePk8w6vxIFuw
7VrrKjkWm85oCtZPgMOSZSZvK+Wo9YmuW5eVAMmGesm+dgq8Y1HCyzJJhHWr
juvz5Qpc63XbdepuInBKHX+cw+nAPqfq0l/WCCC69j810YcO7LwZbmZXJoAC
gU6rbkInTpXt3mRoKYTu9EJGiE4XqlefrogtFkJaUdjqD7e60M1i+7bz1gQw
mcSOo5uVKD1kzj1RRoCk96eHEc+UqHOM8yCzgoB4H7rDdzIlHuPcmPv8PgGD
bwKVce1KnDi9sJQlJmBrQ8LGlC4lro4bm5hqIKDLJ1Re9FKJXxcRJHUQ8F5j
9b7eUSWyNd1EFeME9DzUzHJbQWHcnHi1tyoC1JOM93UZUChfUO/BmCYgR6fb
6MhKCk/qscZ5aiR0/6wx7G9K4TWmjv0OLRI0fmcdTLKicPRgXzulR4LWRP85
uSOF9kd1jeeuIGHG952uh3ZSKPRxD7UzICF+0tXqtTOFKwMb9G6tIsEmtN7i
824K3WMLvP3WkrDEM3VKz5PCrMT++9kWJARU8DzzDlM4kMSY3WZJQplWv9T8
KIWRGYLidetJCHqk9dLeh0JpTiONa0NC0j1ZrJRDoXbetHvGRhIG72qx95yg
0KtofW4Lm4RdMVXqfX4UFosCxr7YkZDxuaOHG0Dh/2D5fY0=
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(e\[Null]\), \(-\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVx3k4lAkcwPFhSaUWCbGeXLsmkaskavr9KKnQCi3VZpHRTGWd7brDSBje
V2VrNGWUbpJrtI6IipJSNKNoO9Y+tbY30bhmhpmtP77P5/mahUX5MVVpNJrP
l766mcEwp9HY2Hp5l9tLGg3duzy/G9Bg47nuJo8NX35doN/iOi02TtH7MwOU
SnCI2TeHZcJGtwEOY3RGCUYXj/3Xs56NxeuthyynlfBhwbsaQSobheHh44Uj
SiBeEhtAzkZBZ4R/0KASRMlvwtMm92PTk+OmwjolxHN8VN0MIvFDlViqG6KE
p3t1Rod1o/AlSyTR0lbCADdtgzcnGktdb51vua2AgK07m+8di8EDd3a0PmAr
YMWhX/Y4ErF4oSjx714DBZBZXdZtgjg011Nes2qZhbrUB4/9KuLRtiPI6yfm
LKwZkhT3XzqEfy0LTHqkMwseKzjH0+p/Q1m56/Ks+hmoHmLULqn7HcstLGuv
hszAa07+FWFFAi5adm7jiOYMnJqLD+MbE1F/uUtP2A05VEqX6tPrk1ARHSVO
DpLDtp4wQt6RjMLEHi+hVAZVhOtgb28KNq7cfNLojAxiGhm+Z7tT8fo89RG/
jTJo7rr4OXcwDUdeB5/h/yOFCE+XW+znh/HnnFcBj/Ok4POMN+B0KB3zokvE
qlZSuC99hX/K01Ftzp2WrPvTECdyXbsqMQMdFu2ap//rNIRZbPF2U8lETvgV
QbHmNGTQI8c80zNxfu8ed7gxBRmmg7QnM5k49fRye2DAFHRw5ZbDHA6eZ87v
8R+bBNfrDm/lKlk4Hu61uLBoEiRoVCPIy0K5/P3CMrtJKHjg/fGu9hE8DZp0
m+4JCJz7R/NQwRF8/WNgsE7UBDAbyPMn9LIx2C7VpnXeBJSZlhozirJxv7/Y
of/aOLSnyGgs7aPIwwp+hs84WHppzFicOopC/5Vb37+XQEOPFffF4hy8k8Io
f5wjgWMdCnvTszlYkrRuhmkmAV7c8P4Q41ysWPPOl3v7M2ToLdUyL85Fj+ST
pdtDP0OllXpXvGke8p5DaJN0DDTHVQzbSvIw06SG6uSNQYV9dVoJnYtmluW7
I+3GwDbs2rbZ61xkuNK313WOwpstDTU7rPNxV6aauDpiFPrLklZAbT6eOCIs
SpB9gtna7evMHQuQInrbvnX6BGoNscLsygJ0nLDYqR03Ar72mzxSnAhsjVd3
0yv9CN177NgHagncqOGk2jJAwZK9rKazQgL5Ngf6vPop2Ms6t/DJTQKXitr4
L/ookMXq1qxqJjDEpU9nopuCZTlTstm7BI4v4J2wbqUgq6Y1v1BMYFm288jJ
MgoYGr5VQimBZutXq+07SEHOglzVf+UEPmwRNkpYFDzTaQ8wUhBYPcRmpTMp
OGi8SpqmSmIaL/ZqcTAFpx2WuG/WJNHD2KD9oS8Fk7vf9A0Yk6hS57zN1okC
91BDy4UmJLroeic0OlBQEOGXAGYkWqsLijfZUvB9zF3jCz+QeM/wm/ZgOgV+
2VeYkbYk1nuLrhKGFJRw394U2JPIyP1UYKRPwXCh0fxeRxKDPH3YlxZRkM7P
r1ztTOLQLZF6iyYF3aX3aGwXErWqVTq3zKXA4JLCj7+WREN+3GGRGgVh5c4X
HzFINDG0sQtVoaCyKnpKCSTa37cWU7Mf4H/hz1en
         "]]}, "\"H\"", TooltipStyle -> 
       "TextStyling"], Annotation[#, "H", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV0Xs0VHkAB/BhW8pj1XqVnS2PlTqd372IHhi+eqJRmvJorc2SyaRZrxFF
E2aMx3CvUke2ok061eKMZ5TV1qJIaYva2JayW7Ht2WJLTLR3//ie7/n89z3n
axMRK4rS5fF4/lz+bx+BwJbHkyD0tbiteAeNNV0bP+vXl0Ax2BufyNkjWGRW
byKBcJ/F51s4O8Xv1oteJEFykKVUj7NVxeHRHk8J2h/YjstCaPxl9Ky27KAE
BnYTxVuDaTC/MWu9tBLIWp185wTS6Esd2iV/uwcXH6ulCQE0ZAp/XW9LKUKE
yqbIDTR+iZz3asQ0Fppjj3sGPWj0q+VrhYo4PPV06I5dTmO7346W9sPxSG0o
0JgvpUGSdoY5Mwm4Y2YiFy2iwSq7ll0rSwQTXv5luRmN+oOdd0SVMvBis9KN
DGisGh4veXguCYFFWdYWPBrrieKIvHEfvD6dY+j8hkLNsKBufn0yxCYT78ZG
KQwq8s83VKagw80vqG+IQvFs3JJd3o+dLQ7GN/soVE8utHBoPABv1dNU8S0K
m3siGG1HKre3U2T6EwUN4zZw714atvidcx6upxB/WRBwqvsgnockndx1kUJL
V8VY7oAcxq3ymLFSCuKNq3+U/HoI9mEWZ12OUvDvPd7vmpSO1ssecRk5FG5O
/o4mbTpKRzOT36RRSOxzc3fZn4FZI+FFtgkUIux8hd46mahR8beFiClkOEhf
b0zPRHJ2dZpvKGfrAd7d95lwCN5QKA6g0KHWLh5RKND7z43YvHUU3Kqcnmh1
lDjbVy2XrqYwDqvasjwlXv+R3RpIKBR0Cv9um5uFb/UqAvbYUAiefaxluCAL
ztfuMt4WFKKa2TNF5irs3OvpxjegUG59mi84qkL3h4HtV2YIrqdN8aLnZoMn
+covb5xg8Sb993bF2ZBVPdINfU7Q3LNU/cgsByG9rxaMDxAc7phxtD7FWSjN
VfcQHE8c2RPOz4XRyfNPXv5MkGG+0MS2JBfj74qfH2oiqF76cZfMOg+NtHHj
vEoCw391FlwrzUPQR/Z6sacJKh1r5KUOaqREmd3uLCKgIi5unq5S41mUw7ag
bIIh3+bawGX5UBrF3dekEjwsP0C86vKhyflEqB9LMF231cPWuQCmBQIdEkkw
qzmhQVVdgD9NI7WqYIIAxw3r01wZ3Ba9Uw74EXSH0ZKYOgYlYzEyHS+C+ZHR
V041MDjjn5jS7UkQGf298d1LDB5rXqYWc55KMK11aWGgbnLNIJyX5ExMTbcx
OPrCJmuHgEBZezW/8AGD+xUxCTXuBAL9AE3DJINCvuFw+CqCHKNc3RdaBv7G
u/uWce6dd3271QyDrT4rbrxdSbCX7zIp12Wh105dyOf8ndP8NT6GLMxf5Yib
VhC8DR26389nsfzqaIeJK8GabxYsNl7Eon/6kKbfhaBALErxsmFRZZ9bUsH5
i/g2/ll7FuEhExJ3ziLV+SgpxSLi63Wzdi8nKFU/uVTmyGJwav+IE+eRQiuD
e84sZD12d947E6SfyK9esZLFOp/eY0c4d59u50lWsyC8gZQwzpbnZkQn3Flk
WgaFLuEc8cPKitsCFmbH1wvGnbi/NXETH7xYXFFfWNjK+T9/3haI
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(H\\), \\(+\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(H\), \(+\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVxXk01AkcAPAxHRQVW0qTkHFNPYVQyfh+aUUimrRld7VFNDPlOdvtYBqM
cQy/X7rjicjUa92iHOMKT5Ski9EK0+GImCln2N0/Pu+zwSeQ5UelUChu//l/
ZyZTn0Lh4LnPlwydaApwaHZaJ1XmoNesJNZgrQJsD7FWPVjBQZPDwg4lLQWY
B59YzNbloDhz4e5KTQXQspMHn9tx0G+b+34zDQUMqX0qSo/gIKuq1VRTRQHE
O2IXzHCwq8+b3v5dDq/P9xznjXPRKjBrPe2FHMKi3aj2awLQs/OU/DZfDi98
NUYHVgbiw7kOT76lHKQi3i7X6CDkKJGDs/1j4OniVdmQHIxX7ZzJjdfGwPT0
H94WRAjm3Q27u9x5DEhB86ba9FAU7Dq4+LJ8FB5EPGll5YSh70tuRWfaKGyX
KW6+FZ9G7qTaKYN9o+BoGn2JV/onpkU9i6COfIVCGbNY68FfeKX+aL6ay1d4
H514ryTnDE6KX42Y3huB6yrYElZ+FsNExr6eE8OQN6Wz2rj0HNbWCO9b7x+G
fc99iJnG83iF360+n/oFCgibrvb2cJxkMHQm+4cguJzpkfY0Ah3aW3SX2g9B
ZXO2PL6Lh4uj3DT64gfB32mHhNNxAc3TBkcp3QPg9uqG1Oo0H8vtcrOb9Aeg
aaobH83wUVo7TV/I7YfQ1zY7Lc9G4ompH/ii8jP40Pe42itF4fr6n7abUD5D
pHHAmBM/Cl0TGzdYu3+CSL0uStuPKGRS/B5Tb3+ERtGM0UB0NIoyO6t3yj6A
Ta5574ySAC1kUmW2+QdQIK0oPUGAJr9un/kUKIOkJ67D9eox6Fh4fOOmwj44
pHK1UpYUg6XsosCUuV7wKyMzL2sKkddw2BBteyFLL0ObeUWI3BAruqmwB+rC
pyls9Vg0Dk55tkX8Hoz2Kv+gX4/F6cyOL7Z63VD2nCHqXBWHGeV18dbF7yC5
cc5MLy0Od2xtPmlj1AU3Qge4R7XjMd9GW/33ok6I1NRZoX8zHn/xUU0p/rkD
8hiLmsP0EjCdygiQlb4B1W9Ka2tvJSDr7RJdgcNryDEr5N0yFqH4kfuH9tyX
sNnn/r7ZXBF2/GMg8dJth549ZUUHNyWiyTGd2Iz7bfA265wpFCeixl2RScvG
Vpgt3m+rb5GETU+6KgwtW2BhWUiJMC8JLcIXDCW7NIGH2W7HcCsCzfLn/TN0
G+Cp9xbOyWICLV1C85cw6kDLl12RVkJgn/DAkeZ1deDLvr2s7SGBHm0lAwnL
62A6ZGWRZSWBKgVLr6l+qwWTuInp2XoCc1JtHVWra0FQVJ148Q2BmyUT8wsO
1gJT2aOgZIrAFPWASSm/BuLU4qn9MwQKy0Nsr4fWwCuNOk/aHIEXvrt4H/Cv
gVPallM8KomcNRFWLXtrIMVcy8FZlcSex6ZYtroGxn/reSnVJpFSIY1c71UN
DsfWGi3TJfHSgiRxsl01JPmzzsAGElt7t8YsMqgGg+B67TuGJA7TQ4O+jFQB
S3jPL2AziTbj9vOlgiq4Jep9mG5GohaD/s2EWwUDF2lL2y1IvMzWy0pxrwJ+
amKe9TYSvcujtkTQquBpRgOFs4NEz8wxtZF5CawRz7FSd5LoYn/xzpGPEvD5
e1v2MyaJ1nzf8dZmCeQVBE3MA4khTkFUKJDAvzjeTZQ=
         "]]}, 
       "\"\\!\\(\\*SuperscriptBox[\\(H\\), \\(-\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SuperscriptBox[\(H\), \(-\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVxXk41HkcAOAhJckibK7HTrQ0UWkWHUw+Ua5G7KzYtk1FZGwehE05wgjj
+P0UtsPj2A7bbrLlKIb6PApJpEaU4SmycuXIzNC3Se3uH+/zrgoI5wUpMxgM
z//8vxuHY8pg8KErWX5d3ipGpzZXI4kqH47UT5i5PRGjgx9Pt1qTDwX9tfMX
u8S4MfLIkpBv+NCzJ7Zy+ysxGl49M965jQ8i7mxknlSME8vfVpYk8IEma1Xc
TLqQ6qecHRV88A/vF8uiurA7buBw4lwohIxGWPzIfI7RAk/l7SvDYPrBpHrV
xW58Fqg9M6YTDrN6Ewb7lF6gJCvRmSuIgNQvuWGioJfo47G3oflMJLgXxCzz
nezFdTEH9rOpY5B1WSPU/UAf0qltlo0lUfApvna6R9aP1QmPnvDKo6E8okc1
Kv0Vbh6SXnhRFgOGVPTCYaUB3LlOcDbx9q/wUCFKUHs2gLeGOFX61cfBteye
6I/8QXwtyL5WUx4LDloep1V83+C5pfA4WnQCWJWj2emsIawgJl9b3D4JhctY
i8JnhnB3ZwClaImDXFWr/muP/sGb1NY+sTgelnhZ7k4sHcZIEce7qD0Bgus4
ItvQt9jQdnVW2JcIrX5HzcNcRjDYdctd/stTsMJmg7qL3ih6Pj8vsY1JgjtL
zLVa50axlbyCWkUSMO3Ga9O7xzCqe6u9zYlk0F27WXGqbBwDzNy525VSgDtw
cpdn5gQmW4S9d01KgcIrrF6Tg+8wmdnHePopBbYNT0w1sSexJUthPiYQQJ7e
O41Q/SncemPjoEIpFWzFTg33pqdQCoaVJZmpID+nqb5JMo05j7iTTVqn4eVX
3eV3D86g39KChqGc08Ad9zqu1TGDQXX0pTy9NFjDNfhBzfk9XmaWGnPy08C+
3Ua75NZ7vB//kRGilQ7j9TXsKJNZNN+l+snsXDr4zb+5wCiYxbpOVlavbgbI
ddVH1FSkeKblszWzKANM19Z39sdL8XzUWOhBYyGoCIz8DKekmKxnoml6QQgp
Vju0UvbLsIK1uC2amQl5seyzzT0yVJcpGTQWZ8KbeH6Er5scy61vJRZbZIG2
WkKE+IEc1wf8tXvhRhYMt/gHxnLmcMC9rnKPZTaAJL/D6+85fHH55DrHqmz4
aWf3OzPLeVyo+t7BlJ0Dh+bsfYxK5lGl7lhNWkUO2B3qcGZqf0Bva5ed8bYU
2LKzi9g5H7B9/wb+L1UUxP3c2+ylRFA/MKS+qIaC1ktWCt9FBANDftd4eoeC
h9VTdv6LCX48plNp00BBSPHdxqNqBNdkzH9caKKg2SFudaY2wdRKzM7tocBH
aGTSsoogR9X7Zg2hYMTT7LWTE8GM5ULlUQUFHjrCQY8dBJ9r3/cx/EyBTOI9
znMheNTYhiQq0zDcr6IZ6EHw4kZ9Jzd1GppLpVcEPIJz+wa6JMY0cHTylVsC
CDodMjDX+IaGx43joU8OE8wJ5sU6rqKhilXU2xNMcHVkk/GVb2mQFOi0jYQS
5KVdCwpbT8Neuf28WhTB4qzBOyXWNJikBp1dEUNwLNdwmZhNw58VI98ZHSeY
VJhdYbeJhkJ3mdAqjmB7aTODv4WGcGnCNtsEgivLPvMK7WmQXfcnnFMEA65v
utrBoUFT6zeRSzLBipsR818caWhqMEvxEhD8FwcrfK0=
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SubscriptBox[\(H\[Null]\), \(2\)]\)", 
       "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[1, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwV0Hs0lAkYBvBJamRcZr5SbiuXVtluiC0x65VEu3Q0Ke22UlMuUxEiQ2gY
9+H7xDqRUKSVGBq3WNVLgyhN17UNodBmU2y6IezsH+95zu+f5zznNeIe5/go
0Wg0N8X9ny5stjGNxoOBUI7/0H46bul01pPTeTA8OM5/5k1HO0/OkhpNHrRK
Y8/eP0BHi2C/hf7LecAu481e59JRt+TMP7IfeGC3QR5C+tLxjdorSWE0D071
Jb23DaQj2Us62k/zwHHm5fqL0XR8emrgcMynIxC+oR2zztMxVOim5LAsADIj
m729Buj48BBrfGTxcWj/fVNmmKEKykUxjq7CIJiUvvWY81ZBjx9/bmo9Ewwt
qvMzS0tUcG2Yt5clGQLnpQMau/5WQSq+c3Vz4QnYb8VPNlu/CGuiO+5zykOh
rubj0T0nF+GmwYnc7sthUHkuR+rcsAid1gozY+pOgnJBgixYSRWvDbKrtWvC
oVu/sdTRWRX7hWmlteV8WHzz2DeWIlU8qwJ3QxsjwHmfjo/fU1UUTxosXVkX
CWFd4/06egzcIeOS022nwHNNB93Ij4FV5OaeR4+iwLdwzSY7CQODG9nu+fei
4XHKjcOVXxjY1FnyPqUnBorCxTaJTmro62xzg/fXafDND6wqSldDtyc5cusw
AQgsGAbmvWp4Z7IPrk8LoL2U96XeTB1PPN1saxURC8c1Vhn6hagj12S7q8O8
ONirYTqd3ayOsSsD/nUWxMEVd/FUL0MDYw17aA++xkH2pdGpOQ8NbBNNm44I
hbBib6q86pIGbq6weDE9Lx4uMzzkB8Y0cAJ0JYWp8ZD/y/PXZaCJ6R2ub6XM
BNDjCntkGZroqZLdNJieAAftW/i9PZro00AVZWklQp2TVtydpUwsNrygz/4t
EUy79lQy2UxsiZqi+TOTYE+S+7FGLhNNf6J/NTmbBL/mV966KWJig8xM9GxJ
MlSXkX2mEiaeaZs1N8xPhs4AY7OxHibmnBg5ckA/BSy0Q99rzWdhrJaBpnFu
CsxfWHwyx4yFYrMFnaGGqWDW7iGM3cVCxod5Os0FqWAdcWXoViQLy82vxRSs
FEGWS7jJkRIWruOW7ZipEIG1G5UVJGPhwPYGye7VaVC0TBx1+xMLu4sj19pX
p0H5tYDTyUYEzlTvtDO2TAfbNE9+9nYClRtCahPF6bBz49Xcj0EEuptvc4qy
JkEnEDq68gi857Wed7SahK6Xu78O3yZQ+5D/H/m1JAyab9iaKyXwkP9F9Qf1
JDSEOZCurQROhSyWWDWRsCBsfFV1G4Grkj9PzUhJ2LY1my/oIDBecist408S
tJVfCvRkBLLp7lW1kyRk3G232iUnMFktRen1tKLvItmysIfAJ6wWD91ZEjpp
Qk6jwsf0rSZjlCh4NzrBN3pO4DkL7S0uDAqUEyb6x/oJ/LRv4LFcn4LAuZ1L
04cJ3HJQx1R9OQUh4qE2eEVgui+Hb29EgY11ccQHhVcES/UvfUuBy/7i4X2v
CeQklvoErKNgYE1F93dvCCwQvagvNKfAtTQvt0/hkQxd1UeWFHisqPXKHCVQ
kJcm/n4jBUMS/9HJt4p/XWil8WwoeEgp1Ve8I3DZ5VlOni0FBkrtwoNjBHKv
bizpYiv2jtVytMYJFFcFfZ6zp6DNVmbSofB/YMBP9g==
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, 
       "\!\(\*SubscriptBox[\(H\[Null]\), \(2\)]\)\!\(\*SubscriptBox[\(\[Null]\
\[Null]O\[Null]\), \((\[Null]g)\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        GrayLevel[0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVkH041AcAx48RC8/vzr2JC2kTjxUuRnLui0R646bFljRirmaclyI576I7
98M0ycPphTV0ibsa6ansUilLlpekIh6L0tPSiIvN/vg8n+fz72dVeKwgUptC
oWxf4n/78XhWFIoQ/Yl1w1wTNrw6fc0G9YQwiuLfULHZcN8tYCgJIUYOXjvp
utSOou+XRVsI4eaZ5uTBYsO0pnjygYcQNSW+7C0MNl4ZjjfJ04RIWnwqCaWy
IRuSefM1Qkj70vmZ+mz0pg7vF88cQG9fKl/5gYXE7O3anuwY1HldtDbpY+Fh
BO3tBD0WirCqH/eqWBiUiL23ZceBYhZf/rqUhSD/kLZbxSJ0ywW3g0UsrE0K
C+XK4qGu9nPq2skCmdNpd1OeAPOeVRK2HQvKtLt/CBoSIW/PGVcuY8F1dLq8
vzYJi76csOQxJnzWZpeILx+CWqlTpn+diUujvGYT5WFwlou0uiqYeJ4tPa9q
SIZriHCAksJEmT7uJbamYCszqGxWwIRizpy15vIRnB0L5bvaM7HjQbhM05GK
O20uaq4+E40ytyc9PUchjB9mykcYELXyAirvp2G9rfnz6GsMtHXWvCt4IsbF
t7aeL04wEOW74ZpwIB3/qGf62+MY2P7o5KBzUgY+BLv5+PsxcGfuGX7TZGA0
uHZ8pyUDCb1uG51SMvEvK1zcNU9H+Oot2zy1sqDekzby10M6MtfE/O2bkYXi
Uq4iq36pLZ9Quj9moeY8s7ohl44OicZ6Ijsb1fojbcI9dLhdcBzRaOVA882E
UuVMxzRMm+THc8D3dLoqNaCj8O62KTU1FyHCTYfejRhjt/6JttHCXCg7gyff
txojsoU88xMzD4srpZrkImOctazm8ErzcCLlTE91tDHaj85ToqnHwC3tT4v0
NIb1Vr2Pq8uOQcvg3s0zLGO0PLCVPGbkQze91aroDQ3FHYsOlpX5+NkrsuxN
Ow0nEyYO7OMUwMx1/JdPTtGQyTQnrMoLULJP6dUmokFhq9uZaHkcszjt8dSH
BoP3WituVh2H1lh/wA0ODQ0Ol8RVayQonfIr0HlLxbrwuh0LFyQI8+6wefU7
FcNbWpp22UlhODC/Un6Kiv6zR9bym6V4bTZUXx9DxUJzoLsVtxA6Dft2SLyp
0GmJV+UpClG6uXnAxJSKAIfNPkedZajWja+cekzgfqi98GCzDC3zs5v25xIw
iYi+WqmSQcd+wHIym0BE9Gmj7isyODc+m4nNIjAfT29yapNBQYYVp6YTsMmf
nV9Qy2AtdskoSSGQ03RdWtQnQ8mzJJ/rMQR4egGNqjkZyksexzK+JpBvWKD9
UiNDyKb5ovIgAo9o7UGmizLYTfo1mH9F4AeO05xYm4SvruihTQCBU44mXn4G
JAItpnvd/QnMfDv85yCHBG9h+naEBwGv71ZYG1mQqI2iSl+6EyiMEiTzV5Go
k+31j9lI4DORmnPucxIWhsWqQ64EBHnnI2PWkUgI3rW5gEugSjJyRe5AYjpw
2ZCRI4GJItPlPVwSelOTB0vsCWRUSBVfupD4dG7nkYovln5V36IIN5BIftH9
wcKOALt2UVCxkcThvXmic7YEwutdarp4JNb/GjdmY0NA0Rg3+y+fxNAiGXjB
msB//aEaEA==
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, 
       "\!\(\*SubscriptBox[\(H\[Null]\), \(3\)]\)\!\(\*SuperscriptBox[\(\
\[Null]O\), \(+\)]\)", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVkHs0lGkcgL/5aqNUapNKToYKnU6tpK0w+aGiUuGwtjZdyGS6rIhZCWHk
Nub7lN1VWSm35izJZdSO6H0VQu4phhm5tG6RZCjGjLV/POc5z7+PvoePsxdJ
EMThOf63PYtlQBAccHSq3Xw5R4psauzWtqtx4IYkU9wmkiJLN2ctkSYHdELG
hNalUrTN99wCbz0O8BrY2Vr1UqSTeXOoYQ8HximeJRqVoo+L+wpSQ+b6NBVg
uF2GKClla6XggCEScy2LZejtta6zoZPnwTXlcVxYdSfy5x0mrVddAklghZOF
oAs1eS7/PLjCB4zzpW4dGd2onR9q68C7DJYvm/X8xD3I5eCxkoqbvjDkc8pl
6UAv2hJwyt2U8oPa8JOdZfP/RXRkzeay1CvwqO4no4cWfUgUUl3vnOMPJ6+l
n9vo04929Y7fac0KgOy+Dfb99ADat4V3K/QJF0zDl/LVXw+i/F5W4WrRbzAw
bV+2cHwIvefFC4tyAuHu0NKmdu1hlKQOr/2Lr4Lc232G5TqCcqfWaRs9CYLm
5OK44euf0JEGD0pReQ0urGWknqwYRXmUeUdzczCo96/oseZ9Rr7FLMeU2hA4
pjTSFq8ZQyU1mV9iO0KBxcx4n1M6hth2u0s5bdeBazy6wcvtCzrccrt9R0AY
5Jg25+SrvqCqqU74RxEGp4PN9bLTx9GVt+YWZlfDQdmnlbd9jxx5rD/gYM2I
gCqR0+PzfXIUbnRpzC4sAjo+LFikHTmBwpkdRONMBOydr5GyS28SVfIVhoM8
HshCkv8yqJpE5o+2dSsYkRDk9umhC/srGgedgtS4SDihfzHc8/tvSFDtMFK+
7Ab0LP7g2v/sG3JT/6OkV3ADfnUcioo9PoW8xHRa4sooiL57/T5TbRqlM+/r
sn6PAlubkWEsnEYvgqcJ72XR8NL1aE22nQIZHlKbWZ8UDcJn4p/T5AokbtjE
l2jFgPc72bLQP2fQzUqVCTMlBlJkV1MD9yvR7SuD50/rxgI0PnXf91GJwleu
0zS4EwttqtYDdgIVyt30XY0/Mw6SRmOjQ1izSEPOWFN2Lw4UTXJHr55ZlGOS
H3rPiA+JEURB9UECb/X4+4jyER+4bOq2Io3AXQfEBa6b40GNWMLnThC4NT1o
i1VhPIh8GBPrjjKwstDJ0sBUAK+KKs+opzPwfLFfUVSuAIxrXyUGTzCwo8n+
fcE7KNB0FRDGR0lc6/4D50IhBfujsnwXpJN4taf3s5QiCprcHU6EZJDY0/vB
ksanFLBahAflmSSe9ltRYFZCgbso0rRHSGLjmK/TynIK0rrLtj7PJXFkAYpP
eEfBq4V6Em4xiVlqjnlFUxRIJurHh5pIHLM4lhxQUFBp0ubi8YbELctfuOio
KHCtTxBLWkh8UddsKpSk4e0hTaqqlcR3t622sdeggdKw8MySkXjyl6437bo0
1Casfe4xSGKbM2sMl+jRUM4kjrcPkVjAdg600qdBGpYw5TRM4g2+5boZG2mQ
1BXaWo+S2DlK6HVpKw2PPVXzmBMkvsfvfppqQoMOy6I0aZLEgwk6i5pNabBj
GgRpfiNxWHJ87o8751p/RKWanvt1v4Lg7Kahq66xkjtD4lVZKudkCxpePHC/
9UlJYo/snZl1LBrYZxPPsGdJnJt3+eusFQ17Zb5mncQ8/B/kqnpJ
         "]]}, 
       "\"\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\"", TooltipStyle -> 
       "TextStyling"], 
      Annotation[#, "\!\(\*SubscriptBox[\(O\[Null]\), \(2\)]\)", 
       "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {200., 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Temperature / K\"", TraditionalForm], 
      FormBox["\"Potential / V\"", TraditionalForm]}, FrameStyle -> 
    Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"Helmholtz Energy at 1 bar\"", FontSize -> 34, StripOnInput -> False],
       TraditionalForm], 
    PlotRange -> {{200, 1000}, {-4.735142287753609, 15.674986016813525`}}, 
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
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SuperscriptBox[\\(e\[Null]\\), \\(-\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"H\""}}, AutoDelete -> False, 
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
            "\"\\!\\(\\*SuperscriptBox[\\(H\\), \\(+\\)]\\)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SuperscriptBox[\\(H\\), \\(-\\)]\\)\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\""}}, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]\[Null]O\[Null]\\), \
\\((\[Null]g)\\)]\\)\""}}, AutoDelete -> False, 
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
            "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(3\\)]\\)\\!\\(\\*SuperscriptBox[\\(\[Null]O\\), \\(+\\)]\\)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 0, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], 
            "\"\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\)\""}}, 
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
 CellChangeTimes->{{3.537127843639142*^9, 3.537127866910333*^9}, {
   3.537376143127443*^9, 3.537376168504478*^9}, 3.537377389064999*^9, 
   3.537377571381119*^9, 3.537377653879582*^9, 3.537377748452222*^9, 
   3.537377784869507*^9, 3.537377819866194*^9, 3.537377859203214*^9, 
   3.537377929455155*^9, 3.53737812778203*^9, 3.537378159097982*^9, 
   3.537378190206056*^9, 3.537378223385701*^9, 3.537378337263446*^9, 
   3.53737900555549*^9, {3.537480217745545*^9, 3.537480246264378*^9}, 
   3.537511412517402*^9, 3.537512106830691*^9, 3.537512800738806*^9, 
   3.537736584472684*^9, 3.537736615196942*^9, 3.538177307943312*^9, 
   3.538177341728385*^9, 3.539267354028645*^9, 3.539267385488205*^9, 
   3.539629499796383*^9, 3.539629532260881*^9, 3.540300034008024*^9, 
   3.540300071361448*^9, 3.543309207950276*^9, 3.543574048415075*^9, 
   3.551289503374108*^9, 3.551289534385072*^9, 3.553196279271455*^9, 
   3.553196310651169*^9, 3.553539550435547*^9, 3.553539583676253*^9, 
   3.554812039170844*^9, 3.554812071123749*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJwV0WlQk2cQB/AoNfK8YGFiUIdDEVMriFdRUCmyqWIFjZiAMh4cHhxOCfjm
emkEBKGiUsRJhSCXF+ABBYQUiba6GbyoEAqKih1FRKwgOlQpUKilTz/s7Pw+
7Mzuf2fvipdFTuTxeBJa//eVK4/GRAlYKBQNV6i0BJlue8uX1Lft2otSqDsy
y8/vnMpCz4ht9vfUCU+bXu0QspARdFpRQn0lxSYyaBoLscWzVj2gXnrnxE6w
p/MF+a889hNcGHxqm70LCzuSo5I+UM+JM2wwL2HBy6A2KZMIFq3K1DwJYmF6
9HCXMYXgucToSaVKFl66jR82pxHs8nr4rkXHwmB4+LaOQwSrs/90OmVgwYcd
jXc/StBqs6DG/QELH7RTsjZkERyu68wMG2JBWr1w8KfjBB1yfXFgugLsAodN
dicI3ntRslXspYCU+F0zxXqC1k11yz23KuC6xeQJV/LpvS7mxN4EBRRXT6gZ
LiLYOcQ5fNQrYK+VYd2CMwQ10eZxg1EBXd8k5lSWEDzp5+Y/v0MBmR8aN/19
nqAEv3jsN6aAk+LVPx8vJ7iivtmEjkpI/cFL4lRF8LJTnO2otxIKBlb1szUE
r866VvIoVAl2qXNjhHUEA7OnFCuTlNAr3eKTbCSoLrB+WntKCa4O4S88fyH4
QFSsCTYp4ZqQGe9GgtcdlqlrnyvB4uuxmSE3Ca6sSjDWTVRBoCDAw/4uQXG1
aVeCiwqYfSUFZ+8RTF1YFJUvVkFvN3Ga2UJQ5v9ZdcRuFRTyL5f3tRGsaq0J
6zmognFrC8n+h/Q/Q/2yT0tV4FnC7w59QrAhz3hGf1sFx9IqWjye0f0uZG7u
7FHBo8Nzspq6CNYHM4H3JqvB/zvbkPoeghlxx35Uf66Gs6GzJVG9BLMnlUal
rFVD8jLZJv5bgvNWxEQuilHDCdlc+egAze/J4sbCDDX06scPVQ0StJhRpqi8
qIb2dc55xhGCfg3OqcmNasgZnc5P/4fgjTcL+ipfq2Eov+69L4/BX6v/yEtj
NJCeFfhM+gmDO7vLKqa5aWDso/+4iyWDR2oE/I0bNCBv8x4JsGaw91/bqz1y
DRRqsWKPLYPt9cL73lkasPr9gvxLIYMym1tLPKs04LA0fUrsDAa339f+9c6s
gfUWN2dvdWSwSNgw1fKdBjKep5o8nRnc9/4Kd8uGgwMeFT5yEYMtPjUgXsSB
XfYFu4h5DLocgPZmalG4wMRSa9C8d9tiDs4VtsamUTuufqNTLuFAR2S3yqhj
1ol6Sj04SP0Yon1LzQvKPcIs52BNTsKg1pXBxTHatvvAwXFHnmuuG4NpFy2j
I8QcOH/r3Hme+mFf7lg/dThfn2OkTpTXivirOWivTLN4Sn1X0a9Z7sdBqC6i
e858mldSmEORPwfmZlHtZWrD9f4q1wAOnrUWxzVQW/L2r6mj9gmRu7VTVx7U
y1vWczBQbnVuhHo047cbEzZyEGQbkOfrzqCkMSz4GHXAnfgtUurTzNvX9oEc
THbvE+6mXptFBEs3cdAR+1x3iPqkWV+G1I8zt8vyqPtt5npLpBxcej9fcIna
V2po6aDWP5a2XaPW6b7aEyXj4HVTk66Z+j8ZgjWe
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{280., -3.27},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameLabel->{
    FormBox["\"Temperature / K\"", TraditionalForm], 
    FormBox["\"Potential / V\"", TraditionalForm]},
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotLabel->FormBox[
    StyleBox[
    "\"Helmholtz Energy of \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\\!\\(\\*SubscriptBox[\\(\[Null]O\[Null]\\), \\((\[Null]l)\\)]\\) \
at 1 atm\"", FontSize -> 34, StripOnInput -> False], TraditionalForm],
  PlotRange->{{273.15, 373.15}, {-3.2718764752149703`, -3.184792853634077}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.537127843639142*^9, 3.537127866910333*^9}, {
   3.537376143127443*^9, 3.537376168504478*^9}, 3.537377389064999*^9, 
   3.537377571381119*^9, 3.537377653879582*^9, 3.537377748452222*^9, 
   3.537377784869507*^9, 3.537377819866194*^9, 3.537377859203214*^9, 
   3.537377929455155*^9, 3.53737812778203*^9, 3.537378159097982*^9, 
   3.537378190206056*^9, 3.537378223385701*^9, 3.537378337263446*^9, 
   3.53737900555549*^9, {3.537480217745545*^9, 3.537480246264378*^9}, 
   3.537511412517402*^9, 3.537512106830691*^9, 3.537512800738806*^9, 
   3.537736584472684*^9, 3.537736615196942*^9, 3.538177307943312*^9, 
   3.538177341728385*^9, 3.539267354028645*^9, 3.539267385488205*^9, 
   3.539629499796383*^9, 3.539629532260881*^9, 3.540300034008024*^9, 
   3.540300071361448*^9, 3.543309207950276*^9, 3.543574048415075*^9, 
   3.551289503374108*^9, 3.551289534385072*^9, 3.553196279271455*^9, 
   3.553196310651169*^9, 3.553539550435547*^9, 3.553539583676253*^9, 
   3.554812039170844*^9, 3.554812072350266*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"Subscript", "[", 
      RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], "/", 
     RowBox[{"Subscript", "[", 
      RowBox[{"O\[Null]", ",", " ", "2"}], "]"}]}], " ", "cell", " ", 
    "potential", " ", "at", " ", "1", " ", "atm"}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"In", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"temperature", "/", "K"}], ",", " ", 
      RowBox[{"potential", "/", "V"}]}], "}"}], " ", "pairs", " ", "From", 
    " ", "Larminie2003", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", " ", "33"}], ",", " ", 
      RowBox[{"Table", " ", "2.2"}]}], ")"}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Note", ":", " ", 
     RowBox[{"The", " ", "following", " ", "is", " ", "not", " ", 
      RowBox[{"valid", ".", " ", "Larminie2003"}], " ", "bases", " ", "the", 
      " ", "efficiency", " ", "on", " ", "the", " ", "HHV", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Subscript", "[", 
         RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], 
        "\[Null]\[Null]O\[Null]\[Null]", " ", "as", " ", "liquid"}], 
       ")"}]}]}], ",", " ", 
    RowBox[{
     RowBox[{
     "even", " ", "when", " ", "the", " ", "product", " ", "is", " ", 
      "liquid"}], ";", " ", "therefore"}], ",", " ", 
    RowBox[{
     RowBox[{
     "it", " ", "is", " ", "not", " ", "possible", " ", "to", " ", 
      "calculate", " ", "the", " ", "reversible", " ", "potential", " ", 
      "for", " ", 
      RowBox[{"Subscript", "[", 
       RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], 
      "\[Null]\[Null]O\[Null]\[Null]", " ", "as", " ", 
      RowBox[{"gas", ".", "\n", "DeltaepsilonRevLar"}]}], ":=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "100"}], ",", 
         RowBox[{"1.17", "/", "0.79"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "200"}], ",", 
         RowBox[{"1.14", "/", "0.77"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "400"}], ",", 
         RowBox[{"1.09", "/", "0.74"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "600"}], ",", 
         RowBox[{"1.04", "/", "0.7"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "800"}], ",", 
         RowBox[{"0.98", "/", "0.66"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "1000"}], ",", 
         RowBox[{"0.92", "/", "0.6"}]}], "}"}]}], "}"}]}]}], " ", 
   "*)"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Needs", "[", "\"\<ErrorBarPlots`\>\"", "]"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"From", " ", "Larminie2003"}], ";", " ", 
    RowBox[{"the", " ", "error", " ", "is", " ", "rounding", " ", "error"}]}],
    " ", "*)"}]}], "\n", 
 RowBox[{"DeltaepsilonRevlLar", ":=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"273.15", "+", "25"}], ",", 
        RowBox[{"1.23", "/", "0.83"}]}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"273.15", "+", "80"}], ",", 
        RowBox[{"1.18", "/", "0.8"}]}], "}"}], ",", 
      RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}]}], "}"}]}], "\n", 
 RowBox[{
  RowBox[{"DeltaepsilonIsoLar", ":=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "100"}], ",", "1.17"}], "}"}], ",", 
       RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "200"}], ",", "1.14"}], "}"}], ",", 
       RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "400"}], ",", "1.09"}], "}"}], ",", 
       RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", "\n", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "600"}], ",", "1.04"}], "}"}], ",", 
       RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "800"}], ",", "0.98"}], "}"}], ",", 
       RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "1000"}], ",", "0.92"}], "}"}], ",", 
       RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}]}], "}"}]}], 
  " "}], "\n", 
 RowBox[{
  RowBox[{"DeltaepsilonIsolLar", ":=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "25"}], ",", "1.23"}], "}"}], ",", 
       RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"273.15", "+", "80"}], ",", "1.18"}], "}"}], ",", 
       RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}]}], "}"}]}], " ", "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Reversible", " ", "with", " ", "H2O", 
     RowBox[{"(", "g", ")"}]}], ",", " ", 
    RowBox[{"assuming", " ", "IG"}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"DeltaepsilonEnth", "[", "T_", "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"2", 
       RowBox[{"h0H2", "[", "T", "]"}]}], "+", 
      RowBox[{"h0O2", "[", "T", "]"}], "-", 
      RowBox[{"2", 
       RowBox[{"h0H2O", "[", "T", "]"}]}], "+", 
      RowBox[{"T", "*", 
       RowBox[{"Log", "[", 
        RowBox[{"Uatm", "/", "Ubar"}], "]"}]}]}], ")"}], "/", "4"}]}], " ", 
  "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Reversible", " ", "with", " ", "H2O", 
     RowBox[{"(", "l", ")"}]}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"assuming", " ", "IG"}], ";"}], " ", "**", "adjust"}], " ", 
     "for", " ", "H2O", 
     RowBox[{"(", "l", ")"}], " ", "at", " ", "1", "atm", " ", "rather", " ", 
     "than", " ", "1", 
     RowBox[{"bar", "--"}], "v", "*", "dp", " ", "of", " ", "liquid", " ", 
     "water", " ", "using", " ", "water", " ", "density", " ", 
     RowBox[{"function", ".", "  ", 
      RowBox[{"Subtract", ":", " ", 
       RowBox[{"2", "*", 
        RowBox[{"(", 
         RowBox[{"101325", "-", "1000000"}], ")"}], "*", 
        RowBox[{"UPa", "/", 
         RowBox[{
          RowBox[{"Nprime3", "[", 
           RowBox[{"T", "/", "mH2O"}], "]"}], "."}]}]}]}]}]}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"DeltaepsilonEnthl", "[", "T_", "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"2", 
       RowBox[{"h0H2", "[", "T", "]"}]}], "+", 
      RowBox[{"h0O2", "[", "T", "]"}], "-", 
      RowBox[{"2", 
       RowBox[{"h0H2Ol", "[", "T", "]"}]}], "+", 
      RowBox[{"3", "T", "*", 
       RowBox[{"Log", "[", 
        RowBox[{"Uatm", "/", "Ubar"}], "]"}]}]}], ")"}], "/", "4"}]}], " ", 
  "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Isothermal", " ", "with", " ", "H2O", 
     RowBox[{"(", "g", ")"}]}], ",", " ", 
    RowBox[{"assuming", " ", "IG"}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"DeltaepsilonGibb", "[", "T_", "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"2", 
       RowBox[{"g0H2", "[", "T", "]"}]}], "+", 
      RowBox[{"g0O2", "[", "T", "]"}], "-", 
      RowBox[{"2", 
       RowBox[{"g0H2O", "[", "T", "]"}]}], "+", 
      RowBox[{"T", "*", 
       RowBox[{"Log", "[", 
        RowBox[{"Uatm", "/", "Ubar"}], "]"}]}]}], ")"}], "/", "4"}]}], " ", 
  "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Isothermal", " ", "with", " ", "H2O", 
     RowBox[{"(", "l", ")"}]}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"assuming", " ", "IG"}], ";"}], " ", "**", "adjust"}], " ", 
     "for", " ", "liquid", " ", "H2O", 
     RowBox[{"(", "l", ")"}], " ", "at", " ", "1", "atm", " ", "rather", " ", 
     "than", " ", "1", 
     RowBox[{"bar", "--"}], "v", "*", "dp", " ", "of", " ", "liquid", " ", 
     "water", " ", "using", " ", "water", " ", "density", " ", 
     RowBox[{"function", ".", "  ", 
      RowBox[{"Subtract", ":", " ", 
       RowBox[{"2", "*", 
        RowBox[{"(", 
         RowBox[{"101325", "-", "1000000"}], ")"}], "*", 
        RowBox[{"UPa", "/", 
         RowBox[{
          RowBox[{"Nprime3", "[", 
           RowBox[{"T", "/", "mH2O"}], "]"}], "."}]}]}]}]}]}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"DeltaepsilonGibbl", "[", "T_", "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"2", 
       RowBox[{"g0H2", "[", "T", "]"}]}], "+", 
      RowBox[{"g0O2", "[", "T", "]"}], "-", 
      RowBox[{"2", 
       RowBox[{"g0H2Ol", "[", "T", "]"}]}], "+", 
      RowBox[{"3", "T", "*", 
       RowBox[{"Log", "[", 
        RowBox[{"Uatm", "/", "Ubar"}], "]"}]}]}], ")"}], "/", "4"}]}], 
  " "}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"DeltaepsilonHelm", "[", "T_", "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"2", 
       RowBox[{"a0H2", "[", "T", "]"}]}], "+", 
      RowBox[{"a0O2", "[", "T", "]"}], "-", 
      RowBox[{"2", 
       RowBox[{"a0H2O", "[", "T", "]"}]}], "+", 
      RowBox[{"T", "*", 
       RowBox[{"Log", "[", 
        RowBox[{"Uatm", "/", "Ubar"}], "]"}]}]}], ")"}], "/", "4"}]}], 
  " "}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"DeltaepsilonHelml", "[", "T_", "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"2", 
       RowBox[{"a0H2", "[", "T", "]"}]}], "+", 
      RowBox[{"a0O2", "[", "T", "]"}], "-", 
      RowBox[{"2", 
       RowBox[{"a0H2Ol", "[", "T", "]"}]}], "+", 
      RowBox[{"3", "T", "*", 
       RowBox[{"Log", "[", 
        RowBox[{"Uatm", "/", "Ubar"}], "]"}]}]}], ")"}], "/", "4"}]}], 
  " "}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"DeltaepsilonInt", "[", "T_", "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"2", 
       RowBox[{"u0H2", "[", "T", "]"}]}], "+", 
      RowBox[{"u0O2", "[", "T", "]"}], "-", 
      RowBox[{"2", 
       RowBox[{"u0H2O", "[", "T", "]"}]}], "+", 
      RowBox[{"T", "*", 
       RowBox[{"Log", "[", 
        RowBox[{"Uatm", "/", "Ubar"}], "]"}]}]}], ")"}], "/", "4"}]}], 
  " "}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"DeltaepsilonIntl", "[", "T_", "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"2", 
       RowBox[{"u0H2", "[", "T", "]"}]}], "+", 
      RowBox[{"u0O2", "[", "T", "]"}], "-", 
      RowBox[{"2", 
       RowBox[{"u0H2Ol", "[", "T", "]"}]}], "+", 
      RowBox[{"3", "T", "*", 
       RowBox[{"Log", "[", 
        RowBox[{"Uatm", "/", "Ubar"}], "]"}]}]}], ")"}], "/", "4"}]}], " ", 
  "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Isothermal", " ", "with", " ", "H2O", 
     RowBox[{"(", "l", ")"}]}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"assuming", " ", "IG"}], ";"}], " ", "**", "adjust"}], " ", 
     "for", " ", "liquid", " ", "H2O", 
     RowBox[{"(", "l", ")"}], " ", "at", " ", "1", "atm", " ", "rather", " ", 
     "than", " ", "1", 
     RowBox[{"bar", "--"}], "v", "*", "dp", " ", "of", " ", "liquid", " ", 
     "water", " ", "using", " ", "water", " ", "density", " ", 
     RowBox[{"function", ".", "  ", 
      RowBox[{"Subtract", ":", " ", 
       RowBox[{"2", "*", 
        RowBox[{"(", 
         RowBox[{"101325", "-", "1000000"}], ")"}], "*", 
        RowBox[{"UPa", "/", 
         RowBox[{
          RowBox[{"Nprime3", "[", 
           RowBox[{"T", "/", "mH2O"}], "]"}], "."}]}]}]}]}]}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"LineLegendFromTooltips", "[", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"DeltaepsilonEnth", "[", 
             RowBox[{"T", "*", "UK"}], "]"}], 
            RowBox[{"R", "/", "UV"}]}], ",", 
           "\"\<Enthalpy (via McBride et al.)\>\""}], "]"}], ",", "\n", 
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"DeltaepsilonInt", "[", 
             RowBox[{"T", "*", "UK"}], "]"}], 
            RowBox[{"R", "/", "UV"}]}], ",", 
           "\"\<Internal (via McBride et al.)\>\""}], "]"}], ",", "\n", 
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"DeltaepsilonGibb", "[", 
             RowBox[{"T", "*", "UK"}], "]"}], 
            RowBox[{"R", "/", "UV"}]}], ",", 
           "\"\<Gibbs (via McBride et al.)\>\""}], "]"}], ",", "\n", 
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"DeltaepsilonHelm", "[", 
             RowBox[{"T", "*", "UK"}], "]"}], 
            RowBox[{"R", "/", "UV"}]}], ",", 
           "\"\<Helmholtz (via McBride et al.)\>\""}], "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"T", ",", "200", ",", "1000"}], "}"}], ",", "\n", 
       RowBox[{"PlotLabel", "->", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)/\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\) Cell Potential \
at 1 atm with \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\[Null]\[Null]O\[Null] as Gas\>\"", ",", 
          RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
       RowBox[{"FrameLabel", "->", 
        RowBox[{"{", 
         RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Potential / V\>\""}], 
         "}"}]}]}], "]"}], ",", "\n", 
     RowBox[{"ErrorListPlot", "[", 
      RowBox[{
       RowBox[{"Tooltip", "[", 
        RowBox[{
        "DeltaepsilonIsoLar", ",", "\"\<Isothermal (Larminie & Dicks)\>\""}], 
        "]"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", "Red"}]}], "]"}]}], "]"}], "]"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"The", " ", "Larminie"}], " ", "&"}], " ", "Dicks", " ", "data", 
    " ", 
    RowBox[{"doesn", "'"}], "t", " ", "show", " ", "in", " ", "the", " ", 
    RowBox[{"legend", " ", "**", "Fix"}], " ", 
    RowBox[{"that", "."}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-CellPotGas.pdf\
\>\"", ",", 
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-CellPotGas.\
png\>\""}], "}"}], ",", "%"}], "]"}], ";"}], "\n", 
 RowBox[{
  RowBox[{"LineLegendFromTooltips", "[", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"DeltaepsilonEnthl", "[", 
             RowBox[{"T", "*", "UK"}], "]"}], 
            RowBox[{"R", "/", "UV"}]}], ",", 
           "\"\<Enthalpy (via McBride et al.)\>\""}], "]"}], ",", "\n", 
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"DeltaepsilonIntl", "[", 
             RowBox[{"T", "*", "UK"}], "]"}], 
            RowBox[{"R", "/", "UV"}]}], ",", 
           "\"\<Internal (via McBride et al.)\>\""}], "]"}], ",", "\n", 
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"DeltaepsilonGibbl", "[", 
             RowBox[{"T", "*", "UK"}], "]"}], 
            RowBox[{"R", "/", "UV"}]}], ",", 
           "\"\<Gibbs (via McBride et al.)\>\""}], "]"}], ",", "\n", 
         RowBox[{"Tooltip", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"DeltaepsilonHelml", "[", 
             RowBox[{"T", "*", "UK"}], "]"}], 
            RowBox[{"R", "/", "UV"}]}], ",", 
           "\"\<Helmholtz (via McBride et al.)\>\""}], "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"T", ",", "273.15", ",", "373.15"}], "}"}], ",", "\n", 
       RowBox[{"PlotLabel", "->", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)/\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\) Cell Potential \
at 1 atm with \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\[Null]\[Null]O as Liquid\>\"", ",", 
          RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
       RowBox[{"FrameLabel", "->", 
        RowBox[{"{", 
         RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Potential / V\>\""}], 
         "}"}]}]}], "]"}], ",", 
     RowBox[{"ErrorListPlot", "[", 
      RowBox[{
       RowBox[{"Tooltip", "[", 
        RowBox[{
        "DeltaepsilonRevlLar", ",", "\"\<Reversible (Larminie & Dicks)\>\""}],
         "]"}], ",", "\n", 
       RowBox[{"PlotStyle", "\[Rule]", "Blue"}]}], "]"}], ",", "\n", 
     RowBox[{"ErrorListPlot", "[", 
      RowBox[{
       RowBox[{"Tooltip", "[", 
        RowBox[{
        "DeltaepsilonIsolLar", ",", "\"\<Isothermal (Larminie & Dicks)\>\""}],
         "]"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", "Red"}]}], "]"}]}], "]"}], "]"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"The", " ", "Larminie"}], " ", "&"}], " ", "Dicks", " ", "data", 
    " ", 
    RowBox[{"doesn", "'"}], "t", " ", "show", " ", "in", " ", "the", " ", 
    RowBox[{"legend", " ", "**", "Fix"}], " ", 
    RowBox[{"that", "."}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-CellPotLiq.pdf\
\>\"", ",", 
      "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-CellPotLiq.\
png\>\""}], "}"}], ",", "%"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{{3.537136063623344*^9, 3.537136115588848*^9}, {
   3.537136185194511*^9, 3.537136254679651*^9}, {3.537136460263175*^9, 
   3.537136618053766*^9}, {3.537136673437628*^9, 3.537136743034582*^9}, {
   3.537136780420104*^9, 3.537136795563291*^9}, {3.537136844600388*^9, 
   3.537136857055827*^9}, {3.537136896672305*^9, 3.53713691172172*^9}, {
   3.537377614148791*^9, 3.537377614191984*^9}, {3.537377835665418*^9, 
   3.537377835699355*^9}, {3.539678589459649*^9, 3.539678590203787*^9}, 
   3.55319662185*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{{}, {}, 
      TagBox[
       TooltipBox[{
         RGBColor[0, 0, 1], 
         Thickness[0.003], 
         LineBox[CompressedData["
1:eJwV0Xs01HkYBvBhul+OhEKWoaVUalgqanrfLhKbVrOsZFEjMlon16IaYRCN
+f1ILbMtKkslWTFqXVohFiF0W2bbdJxVUnvane8hxmW/+8d7nvM5z1/Pec1F
x4VB2hwOx53e/7lHILDgcMSo5y1ql42rYUe7y4r+uWK89tpenEO91Vuor9QR
Iz+7b34htW3E0TkhZmK8EP69Rw21cVHWu8fbxMgbalW/pR5ZNFRRIBGjolCU
uXtCDcwfzE7QiLGxU2nC1ajh2emBI/GjoVgyWuaROKmGaKm79vblYag2ei56
MqOGnkDdj8N6xzFoxqGLyyXQL4vfuVcajh+zbvg5zCHg6eZT15wVgcl8XFM7
n4BNTICfHROJ3o8St+ksJsAmt69tKIjCiKuO2RVLCCglbV3C0mhU3Gt776pP
YPOgWvGiOAYVu4wripYTcLaRXoi/ewJX9x3wdVtB4M6goNJQeRLbkri9P5sS
eCXNuFFVGouZJRa9WhYEcubho+iaOOy8wPPMtSRQNm66bNXdUyi5nqb9YTWB
fY9FjKblNMqNrBqk6wiUM06q3t4zeKBWP47LJxBRI/DI65Cg0G+kG78gUNde
9G+6Kh6fHAn1v7+RQLCL433x72fR66nOlTFHAu5Pc/sdYhKQvzRq43EBgdbx
P/EXTQIubUrJ6UICUc+cttjHJeIy7rrS9zsJiFa67t2ulYQft3vWO7sQSFwV
9o9LQhJaSj6s8Hej5qk43ZNJmNv5QBzgTqBFprEalkpxVkhhtMKDgNNt29ca
rWRURsGai18TUKNxRcH5ZHTm3Wls/oaAvG3vh4dLUjB9cJfZKx8C3vMu1Q3K
UzDC8l1RzbcEgqrZa9kGqSgb9WfbAwgU8q6YCC6mYrH/2ME8EYHGMxOckCXn
sN7YxdcniIDVl3MnV+acwzdxATYuIQSqH1vL+vTTsPvHmyfHQwlktUzzeXlp
WBvDi1WFEciNGg49ZJKOOYdvNyWF0z0GpjoWinT8an9gsF4U/Yf17PZo3nl0
ytbT7YkhsJBoGTXkn0edoHVDXrEESvl34vNXyXCL9c3i2acJrBeV7Ju6LcM8
dUlRnoTAgGt1hdfaDKwxMufMnCXwovCUDVRmoEHsgta0JAJTlfu3WtjJkSt3
s32ZTGBWdWRVapkcy81DA03OEfDg73Y+48CgVkfJp8R0Ah1+G8THKhn8LMxw
UCkjYBgYUptXxSCnpb/gV+rAkKuLu+8xqMh469tKPRGpV2Ffx6BT01CPinp1
2tjE1EMGzSXhVdoZBJIr6jMynzPoer3roAe1YK5HedU4g3n1wWYj1GmL0rXf
ahg8ZP1bM6F+qtvoaTxN+w0njk1Tf2diPx6vzWKO5IFSV07gB1vDHXsWssg3
mg+bqUd9B570m7CoOpZkl0K947CR1WIzFvXi+joZanmwMBbMWZx8mRCSS/15
xEOTnyxZ1DZvuHyLWph6IyhsPYtO5QsmeqjzZa/vFfBZLM5/w6qohzONF/Ta
sZj+yMDyL+qEyxllGzexqPYKdv9E3XGlmSN2ZPHA32kDWgyB5cXTwstbWBxx
mopcSC26tamoU8DiQZ+mWQbUZeXhYzPAovio6pIp9X/04Vsw
          "]]}, 
        "\"Enthalpy (via McBride et al.)\"", TooltipStyle -> "TextStyling"], 
       Annotation[#, "Enthalpy (via McBride et al.)", "Tooltip"]& ], 
      TagBox[
       TooltipBox[{
         RGBColor[0, 1, 0], 
         Thickness[0.003], 
         LineBox[CompressedData["
1:eJwV0Xs01HkYBvAZJYnWNbcmxshEITTkNvu+qVBLi2NPt+3YTMp0d+sizWIk
Gn6/dFldFhXZkhz3S6sWUZG2Uil0UTaFbY/6fU9Wg/a7f7znOZ/z/PWc1zpi
V2ikBo/HC6L3fwZIpSIeT47nt1l2vn3HgW+7/+weLTlOF2kPDFP7rA41rtKT
486vreqP1C7RW6ZFWckxSVLpMEltcTF76P63tF/rV2jynoNh3YGK/INyLIo/
P+hPzTxnloJajkEb9ty+Qv3kQN8mxeet6Mrfk7dvkIM4ZZDGEtMd+GO3u3Dl
MAcPZQYjg0a7ULfEda/RBw56VIqlgcrdWOsdM/HXPxyErVzb0JodjcG/RA79
PcKBY3z4BlcmBtNsNc8+/8QBm9q+oCk/FodKL1dPEA6qDrb9GVoShz7pq/vM
Rznw6OdOPy2Kx5v6dz4ZjXGw3FF5TFGzB5vDqw091RyU90srzar2otO4fqLH
BAevlJmXqkv24QWxYcKCrxzkTMe7cdf2Y8yDJJvlfAKlY5Ym82oS0OjV+nj3
KQRW3Y9g1LcOoFpbzQvUJFDGePV2diaiIk6QHaJFIPqaNDi34yAypnZSJ20C
De0XP2X0KlDn1dYABx0Cm/09r8uf/YwDfl1K/kwCQY9P9bjFJyHfh5F+/obA
nbGXWKdOQs0q8b1ufQKxT7y8JfuTMZ0LyzxpSCDCZkXgEn4K3h45HrvTmEDy
vB0f/ZNSsFHkJxSaUAt7eQ/GU7Brv6ytyZTALZVaPKhU4t1uy7UKcwJeV11e
q/mpKOs/qTdrNgEOLSryj6Ric2B0Z4uAQFZb4IcW/UNY/Tx/k8ySwOrpJxv6
sw7hZZs3v76wIhBZz144PisNa+pSNu60JlAgPCeQnkhD0ZwVqb0iAs2JX3hR
+odx+9vRAY+5BMTfaY3b5BzGEr3JZcW2BOrv26u6jdNxhrtHzpiYQPatSWdh
bjqGPHRsW2dH4FTs4NafBBn4rta7+Yw93TPLUk90OgM9Kwrm3J1P/2Gv2R4n
PIKF108Uz3AgoEP45k15R3BN9siL+Y4ESpzLFXnzVBhgAuI1TgScIopXTVxV
YUj50rq4hQT6VtRX/LAgE3f33bCOcybwtCDBESozsWaaj0jhQmCiMsRH5JqF
Q7MNcbsrgan1MdVppVnY2PivS+AiAsHOfssT3Ri08mLLJBICHRsWyrdVMvjb
mzDeVDcCZrKo33OrGdwCkKFFLYs6P/NBLYMvteMNdKi/xBhVSBoY9Ai4aWVI
bZc++mWihcETBh8WCalTK/7IPNrFYOE6lZcPtVQruKx6jMHbZQVNsdTpuhka
79UMRlk6SPZSPzZoDrOYZDDZbkpRAvV2gWRMocGimyL3cDL1GRcz3wAdFpfZ
p/my1J/X9z3qEbDYdQZyiql9N5qLZ1qxOHzlxuRV6qzNofvAmsVyYyaynHpu
dIug0JbF6HBLlzrq0LRLkTucWBRMajW2UuepXtfmO7O4eURX1EY9eNRiRqcr
i7bWMmUHddLZzFL3xSyurJyy7BF1x7lWntyTRdX3qwq6qE2LJkPPerM4nj/E
76GOuLL44j0pi/7Nz8JfUJeW7R79CixKHptd76P+D1UTSyw=
          "]]}, 
        "\"Internal (via McBride et al.)\"", TooltipStyle -> "TextStyling"], 
       Annotation[#, "Internal (via McBride et al.)", "Tooltip"]& ], 
      TagBox[
       TooltipBox[{
         RGBColor[1, 0, 0], 
         Thickness[0.003], 
         LineBox[CompressedData["
1:eJwVx3k4lAkcwPEZW7Fk40EhNFQk0SjMktnfj55CaDWP3Wp1LSmjJNd2MTuM
awzvS6eUoy0lReUqYvepdUS6RHLspkftNqmd9yiWMbWzf3yf7/OxDY8VRepw
OJxgbf/fXyi043DEKPC6whsJYsG3y2/+oK4YB2J1Ji5r7b1RZFo3R4xV5k2d
CVq7xu2eFbVAjCmzgnfqam1ZXvD20TdiHLc23ucSyMLY7L9qSlPEaOqZ33sk
gAVimFgNajEmPg+lTday0HdkZKdkPBoN3xnIPYGFRFmwjs+8GPx96XJ9Fz4L
TyKMKaVJLCobs/SUtiwMKiSrg2T78dK/UHvLhIXQdZub2wri8FJ00bD1DBac
k7ZvXUHEoxKe5W/5yACZ3uV0pzQB32nsOcteM1CX0vlQdDURH+YI2sz6GPh6
lD3dfzEJ5ZOLt71tY2CNs+yopOEnxPfbGgLrGbgxKqw1rzuAvmcjisvKGXgh
y62ov3oQB5sjt9meZOCUHt5PbDqEplUVPzhlMFA9aTPXoeEwcgcc+R5JDKx/
FE6o249gdI/Xq/YIBq4TXkM9PcnYkUi4Z4kYiGsShhR3p2Csj79+qC8DzV3l
jHxIggN1mrPn+Qzs8vNsET//GYN8s9Jm8hgI7i0cdE+SYirr4fO3IQP3Jv/E
W2opFhP2F7nTNCT0ea1yO5SK5Z3HCwVjNIQvDAjy4abhV3LHorfPaUh1iKH9
pGlYZ+F8r6VDa94Q5/F0GvY8HBntaaChXaG2V8pkWDRDkhx+gQavKteXam46
LqksSbY4RgOLljWlOen4/Y6nlf5SGvI6g963GmXg7vSMsNsxNGzUO9E8mpeB
I+0rp8O20BDZSP5yzCwT79kLZfEBNJznlVkJj2fi6IPSgCYBDXeTpzhRRlmY
V3/CI8ieBvtA3emFp7Jw7IHX9AYTGhofOSoGTLNReq4ggODSUND+ic8rzkb3
4nfl3v9QUJigjN5hJcdfk8pEi4YpSDWzmWN3Wo4n7re+39xFQbXjzK5EXg62
ey4a/txAgcEHrsWdkhzkne3NH71AwVX+DUmJgwJTQq3NPQoocAmvXK+pUuBK
B7sD/SkUjAQ01nznlIvdldfqmvZQ0H/+sDPU5uKy6FXrDDZRoKnd4G23Ig+3
d7T0lq6hYEZjfH1mdR6GuiTsylpJQQh/7ZpkdwL7E5ZrBhdQ0L11uXhPLYHf
vih8kWRIgXlE1O3iegK9U80qFmodEXXO8PFNAiPCXsY+mU3BVLxJjVszgYk2
uzXLtF6SPTGlaSXwj8vORq/0KUiv+S03/xmBhaYtpiI9CoS6IdfrJwk0nnuy
yPkLCrJny3XeqAlUPlsaPKRDQa/x3VDLTwRaTxh/ztZ6r5XbpESHRP3G/h2v
uBQUuZr7+huQyJtabXWGQ8F42MjTQSsSDV2jXxtNq8D3Rwt7wwUksv3jbnvV
KsjbJToItiTuDXWSdUypYFFcq9WFxSR6Hs2dL5lUgSizIjLGhcRrye7eY+Mq
KFG8vFnKJ/Go06zUtVor8y31e1aQGCKQtp77qALpmdxqDwGJG5fE+W36oILu
sjaO2JNEzb43mbWsCuZd/CQ6s4pEm74v277SOvyKoPyBkMQwRR83mlFB9fX9
E5+BRMe7gcI2WgX/AbR9WF0=
          "]]}, "\"Gibbs (via McBride et al.)\"", 
        TooltipStyle -> "TextStyling"], 
       Annotation[#, "Gibbs (via McBride et al.)", "Tooltip"]& ], 
      TagBox[
       TooltipBox[{
         RGBColor[0, 1, 1], 
         Thickness[0.003], 
         LineBox[CompressedData["
1:eJwV0Hs0lAkcxvFJSRtFqyQpl9pkJZdlZTL7+yEmMdKkbdvWWZHLWApDKncm
0cy8b7IiFbawNnJcy63jsFFZu6xKLntKUYcu533nfTcZE+3sH8/5ns+/j1nQ
cWGIBofDEaj3f3fzeOYcjgi7fcO2cney4NbLXz+qJUKoHRIvcFlwOShc3agr
wreSirYute1iwpaGm4gwoleE3moblee+7v9GhO65xMYfnFl4o/OqviRZhGba
/dbJTiwQ/xDuoBLhpzCDK+1fsfA4cfxoykwE5s8MDtluYyEuU6DhujYKt70m
75WtZ+Hv4FX0tP5xPB8qqZvVZmFUmuLukxmNx699tj/8IwP+ew61d+fGYNxA
x5W9bxiwjv8xwJ6IRcOiQ+8sxxggJb1WnSViDNUuME94wEBj8oO/hNVxGH24
u/nlbQZ2TLCXnlTEY0P3w+LvfmXAwzrzQsqtEzgsbovi5jNQN8FrMGxMwIo1
MXxLCQPPMmWVTdUn8c2OA0u9xQwULMM/4lpPYevrZV8OBzJQo9xoYHHrNBbq
zV9L3cuAb38QoepJxJEu3c2kCwO1BHdscDAJ31lfFDy2ZCCmled3tS8Zq1SS
E66GDLT3ljM5Yymoa7OQ9bkmA6F85zui4VR82igI1WUVIHhUOOoYn4b7Nwh3
H3umgPvKp9isSkMy9d6YTp8CxI+5Ox1OpaNB652T4y0KCNrk5eO6KAMnnUS+
+hUKSLeIUvDTMtC340xfap7apmOcgY8ZuDIx090xXQE9UtWW6cxMDDyhDORH
KYB70+65apEEh9e9P1L0vQJYNKovOSfBh7K8Vr6nAuQPfN7d1TuDecnjpWCv
gIPL8tsn5GfQsNuKTTFRQEgLeS1vTRYyU4EHDLQVcN201Jj3cxYekSliZz/Q
0JU0xwnXO4vcNM8uq5c0bPHW+rip4CzWBo/oNw3Q0NJvKR1ZnY3tXFMRcYeG
3J4FW9Or2dg3q5xpq6ShUDwdEWicgzp92/e55NOQvmajrvmlHEzdplm+KoOG
GkvN3jjTc2h7tDzeOYoG7X8XressPocR9wuzmw/RUG1bl1JsIUWpa0NB9i4a
tgfd8J2/KcVXk605NTY0jHu11B+wkmF6jGDIxpiGJ9dPW0ODDPtnI8s4WjTM
N+xzMbeXo7x6+b2AVxQsaYltyqqRY2/R4ohjHRT42Xp6JDkS+PZ3i4j1+RT0
BdiIfmogsPG3G8qcKAoMg8PbrjYRyH/Pmo9EUhAc/suKgdsE+tWN7dmq9lys
fr1DO4FTnmcv9kRQsDX7w9z8XQJLk/w3LA6nQFLfITs/ROALkp1KDKKAp+VX
26QkMGFlxanIgxRk6+RoTKkIfFlgktD2LQWPVnX5Gy0QuGScJ16udqSxgzJF
g0SBWBRW6U9BkZ2h225tEkNWZ8DkPgpmDo8/HDUmUZOcrDnsQ4HbkXVbVpiQ
WMbrvHjDmwJ5qPAkmJH4qNMjWbmHgs0xd43LviBxrS7fs8CLAmFWZUjUdhLj
DW3vD3pSUCx9frvElkS9fr9yM7WnzxstH7QnUf7CKD3ag4K0y7Kar51IXDJR
5bByl/qv0m6OyJnEYDuxToA7BWsrFoSXd5LoVjL5osqNgqAqp/I/eSQ6BnCa
51wpqKmN/vAJSGy/3CP1Uvs/QGVZVA==
          "]]}, 
        "\"Helmholtz (via McBride et al.)\"", TooltipStyle -> "TextStyling"], 
       Annotation[#, "Helmholtz (via McBride et al.)", "Tooltip"]& ]}, {{}, 
      TagBox[
       TooltipBox[{
         RGBColor[1, 0, 0], 
         PointBox[{{373.15, 1.17}, {473.15, 1.14}, {673.15, 1.09}, {873.15, 
          1.04}, {1073.15, 0.98}, {1273.15, 0.92}}], {{
           LineBox[{{373.15, 1.1749999999999998`}, {373.15, 1.165}}], 
           LineBox[{
             Offset[{1.5, 0}, {373.15, 1.1749999999999998`}], 
             Offset[{-1.5, 0}, {373.15, 1.1749999999999998`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {373.15, 1.165}], 
             Offset[{-1.5, 0}, {373.15, 1.165}]}]}, {
           LineBox[{{473.15, 1.1449999999999998`}, {473.15, 1.135}}], 
           LineBox[{
             Offset[{1.5, 0}, {473.15, 1.1449999999999998`}], 
             Offset[{-1.5, 0}, {473.15, 1.1449999999999998`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {473.15, 1.135}], 
             Offset[{-1.5, 0}, {473.15, 1.135}]}]}, {
           LineBox[{{673.15, 1.095}, {673.15, 1.0850000000000002`}}], 
           LineBox[{
             Offset[{1.5, 0}, {673.15, 1.095}], 
             Offset[{-1.5, 0}, {673.15, 1.095}]}], 
           LineBox[{
             Offset[{1.5, 0}, {673.15, 1.0850000000000002`}], 
             Offset[{-1.5, 0}, {673.15, 1.0850000000000002`}]}]}, {
           LineBox[{{873.15, 1.045}, {873.15, 1.0350000000000001`}}], 
           LineBox[{
             Offset[{1.5, 0}, {873.15, 1.045}], 
             Offset[{-1.5, 0}, {873.15, 1.045}]}], 
           LineBox[{
             Offset[{1.5, 0}, {873.15, 1.0350000000000001`}], 
             Offset[{-1.5, 0}, {873.15, 1.0350000000000001`}]}]}, {
           LineBox[{{1073.15, 0.985}, {1073.15, 0.975}}], 
           LineBox[{
             Offset[{1.5, 0}, {1073.15, 0.985}], 
             Offset[{-1.5, 0}, {1073.15, 0.985}]}], 
           LineBox[{
             Offset[{1.5, 0}, {1073.15, 0.975}], 
             Offset[{-1.5, 0}, {1073.15, 0.975}]}]}, {
           LineBox[{{1273.15, 0.925}, {1273.15, 0.915}}], 
           LineBox[{
             Offset[{1.5, 0}, {1273.15, 0.925}], 
             Offset[{-1.5, 0}, {1273.15, 0.925}]}], 
           LineBox[{
             Offset[{1.5, 0}, {1273.15, 0.915}], 
             Offset[{-1.5, 0}, {1273.15, 0.915}]}]}}}, 
        "\"Isothermal (Larminie & Dicks)\"", TooltipStyle -> "TextStyling"], 
       Annotation[#, "Isothermal (Larminie & Dicks)", "Tooltip"]& ], {}}}, 
    AspectRatio -> NCache[GoldenRatio^(-1), 0.6180339887498948], 
    AxesOrigin -> {200., 0.98}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Temperature / K\"", TraditionalForm], 
      FormBox["\"Potential / V\"", TraditionalForm]}, FrameStyle -> 
    Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)/\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\) Cell Potential \
at 1 atm with \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\[Null]\[Null]O\[Null] as Gas\"", FontSize -> 34, StripOnInput -> 
       False], TraditionalForm], 
    PlotRange -> {{200, 1000}, {0.9767196397777904, 1.2846971372404943`}}, 
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
             ImageSize -> {24, 8}], "\"Enthalpy (via McBride et al.)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Internal (via McBride et al.)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Gibbs (via McBride et al.)\""}}, 
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
             ImageSize -> {24, 8}], "\"Helmholtz (via McBride et al.)\""}}, 
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
 CellChangeTimes->{{3.537136682076443*^9, 3.537136695810533*^9}, 
   3.537136748461941*^9, 3.53713679792025*^9, 3.537136859313201*^9, {
   3.53713690131036*^9, 3.53713691370804*^9}, {3.537376146363673*^9, 
   3.537376171473886*^9}, 3.537377391922264*^9, 3.537377574356316*^9, 
   3.537377657187287*^9, 3.537377752234451*^9, 3.537377789236316*^9, 
   3.537377823571178*^9, 3.537377863076739*^9, 3.537377933196044*^9, 
   3.537378132735851*^9, 3.537378163092956*^9, 3.537378194206524*^9, 
   3.537378227085517*^9, 3.537378341247974*^9, 3.537379009260888*^9, {
   3.537480221923015*^9, 3.537480249712452*^9}, 3.537511416222777*^9, 
   3.53751211046007*^9, 3.537512804434273*^9, 3.537736588345828*^9, 
   3.537736618847105*^9, 3.538177312275082*^9, 3.538177345845488*^9, 
   3.539267358171495*^9, 3.539267389246777*^9, 3.539629503654064*^9, 
   3.539629536075152*^9, 3.540300038691803*^9, 3.540300075480249*^9, 
   3.543309211687263*^9, 3.543574052618408*^9, 3.551289507300174*^9, 
   3.55128954096609*^9, 3.553196283457855*^9, 3.553196314335824*^9, 
   3.553539554245808*^9, 3.553539589081357*^9, 3.554812043259572*^9, 
   3.554812074757095*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{{}, {}, 
      TagBox[
       TooltipBox[{
         RGBColor[0, 0, 1], 
         Thickness[0.003], 
         LineBox[CompressedData["
1:eJwV0Xs01GkYB/BZnRi23HJomdaSbiqXyiVq3wc7TgrFjN1TSamNqY36zczv
93My7sVKOEmUXLqgFENGLrXLWNRSGa0Q5zBrrfvlpN28i1X77h/vec7nPOc5
53m+r8Xxs/4nNTgcjg95/1cXl0uiEEMKxMl2cYvNGOkMmXL/JNbgOqyYI+5N
eXgveBUF9xao7HfEEf0vRwKNKBjjZcqHiWti9U4KjCl4xJeqVcQ7nmcGgykF
PR3h+wqJbYQFh0wtKZhpbdjrQ7w2vMq73Z6CQ3vm+wqaMMr7OoXpE1Cgq5ms
Yf0LRndlocuLJBRcjdIyUCkxGnTqnlFlUPDW/f5xWQNGFemzawqqKHDRXrTW
rcfo8wDDyi1vKPj37wub6n7CCFerU4LmKBCMZtrseYqRWRZSvjMRQ/NStGCg
DqMXfxQedHMSQ1BcFje1FqMVL6udHQ+K4ahFYKR5DbnXsl02HiEGWqEIanuM
kXqONVvKFoOX06svZFUYMaHtn6rqxGDUcjHDQIHRDb611+ZeMRzmf2QaHmHk
o9z2lr8oBvXpXZv9KjDaWfuqUcmTQEt94stxOUaP1oTrL7hK4EDi0kBOGUZP
zJ8W9hyRgNfg9gHbUoz2p6/Ml0RJYCJms2//A4zomyv6FQUS2GZl+DS8BKM3
VvmMsFECou4pntZ9jOrNHGjF7xLIKenrrynGyKU8oq5aQwqTFuN3vIswcqto
PB5hKYWa1/OP5+9iFGeTF5LjRvp6qtyyOxj5e62rOHZCCqcVI9H82xiVv64M
Go6XAtfeKu1DAfmfuSl/3SIpJJQapCbnY9R0ve529jMpjP38EFnlkf3upwSo
h6UQ+8MAp+cmRrVCnf0vtGio2LcsJywHo6TwtDJ6Aw1yZfM23g2M0pcXhcR6
0lDCg+DX2Rht3Ck6aSuiwbl01u90Fsmvz641N4kGrdIQR7NrGC1bXSyWl9Aw
1pjeUX4VI37TV3HRrTQIj60MDMzAqGFy64R8jIb5E81n9a5g1FYxej1Bh4Gh
jTFbitMxCh4qLjW2ZqDNff2AMA2j5EpDTV9vBrxnUm1HL2M0/lH/yXAYA4zX
GU5sCkZdtUadrqkMyEJ8n9tdIvnotdg7ljMQwQswafkRo8Od5z/MtDPw5aBI
QCWRfIyaVnFnGLgV4LuwNhGjc+9r2BY9FuJkytm6CxipdleCmy0LUQGsPDQB
I8sY6HpFvPjt5LNgYkbZfuqQHQuWd4Xqw8Q8j8kMiT0L+pc19Q8Qi/ZYDRdt
J/PPR845E3MEWck6zixE06l22sR2ovO/dQILoRrm9x7EY5RQwg095sZCZpFF
fSFx90TW4hRx8ZBJVz6xLExhpenBQnPHgMZV4l/FU4wznwXlme4jkcTBUUFm
eV4s5HKOGngTV9VPlW/ay8Ku+GsbPIm5nMhvqom/i6nfDcTy+Oww1T4WNN+P
ndpBvJDU0fCZLws9nbmNPGKf1iBhGvE/06E9xsS3dKbHTPez4ClYN61P7Jmq
bbjjAAswyqxeTnyjPbtYSWw0omPzKQ6jKb31rj5+LEybXPGYJ0Z+Vape4q0O
2gf/Is7IcP8+xJ+FmwGS8Gni/wAI32LV
          "]]}, 
        "\"Enthalpy (via McBride et al.)\"", TooltipStyle -> "TextStyling"], 
       Annotation[#, "Enthalpy (via McBride et al.)", "Tooltip"]& ], 
      TagBox[
       TooltipBox[{
         RGBColor[0, 1, 0], 
         Thickness[0.003], 
         LineBox[CompressedData["
1:eJwV0WlQU1cUB/AII1ujcYCiBmwVxbqytLIYhHtQsKJEBNEWqwygQJQBfUne
e1EBAR0ziCyNrQERMGoCypIIkc0KobgAIlSQvYIWcQGk6Kh3RFt7++HMmd/M
+XDO/yyKPBgcZcThcISk/u8CwSlRtCUFFdlJNk9KMbIY4Zs9Jb5pvXRqgLg/
vaQowoqCR1yT1ofEskdtz3ZbU2AliE9qJq5O5kVtt6GgRTbwUku85u4vEcCn
4I7Tq9YkYseQwl18ewoyk+P1dsSL4/UB7S4UhJabzQ8twSjfO50Z2E5B8cV0
x8orGF1KiJmpllDQo0zctbIYoyfuPZMdCgrqP+GrpRqMdFmvFxTqKVAJdlbP
VmP0xQ7LilUPKZh6Grs84xJGuGo4Pew9Bbq4tc/HVRjZnkWGqbliOLnue03w
BYzu/XU51MddDIoGI4fuAoy4bVUebqFiGHYr0Ljnk3vt2xNeysQQ+HxL8/U8
jIbfs7b/KMUgK1l0yfMcRkxM+2d9rRjYoOZkVQ5GuX4r/Ff2i+GTs/aDvRIj
oeHbPr+PYsjLyJCf+BWjtTX3Gw12ElAKhkZencHo2oL4OdOeEvC9OPhYrMCo
7usbl3v3SMCbbuX1ZWMUmDWrQJIogfHO6aEfszCi87iPKgslYDs7YKo2A6OH
SwqYkEYJrDmMe+1PY1Rv60pXPpbAzgC3rUWnMBJoZbVVRlKQnr87i5uGkY+u
MVJmL4V5sYObT8sxSnHMjz7nI4VFY/O9rE9iFOzvoAvfK4UgTdvBhBMYaR9U
hI2mSqH0uMPnz6nkP+8ngmerpdDoFt60NwWjppxalfKOFOpUZXYdx8h+xek7
hkel8PZvK/2OJIxqQiwC75nScHFTgei3BIzk8Zll9Dc0rEr0C/A+ilHWTHV0
8kYayuq4RXcPY7RsrSjKSURDofE6cxcZyW/AueW8nIZBY23mdQYj43kacfkV
GszfmPL4NEZ+TQtTklpoaNO66nIlGDWMrx4rf0HDrbdGNxaKMWrVPc85bsHA
UOdMvfwQRhEjmlKbFQzMENIPzA9ilFZhabI1gIE8596u2DiMXv47p240joGB
0S/du2Mx6q6x7vLMIPOX+xpCD5B8eLdd3LQMTHe+tqkXYfRT15F3k+0MFP+Q
k+YVQ/KxbrIym2TAqZzZdCsKo0NvqtnbPBbeZFrlr9iHUYdXBfg4sfCniH5W
EomR/THovk/cfSDeQ03MGNr373Jm4XD17lMFxHYbxhUSFxbCVPMcfyYWbVoy
qv6OhbohLs0Qc7afTbPwYEGZPcjxIXYWHensAhYEDjd5PREYHb9iFhPuw8JI
s294B3HP2NmPE8SHTA26ZuKEuMolJhtYOPkuO+gGcbN4gvHwY4E6c15xgTgi
Mcw235+F5SuFlrHE+voJ7fLNLPiWmUXuIzbjHPWtIh68WnVtD3F5qjKuYwsL
KV+Nb9tGPC3/o2HGVhbWG1VmuhILW8JCMomH7IyHHIkvWLx6wQ9koSjVb/Uy
4o0Z5pZrtrGQO1d1j0+c267UGIhf2NTxrYkneEs9hUEsrPO/vX8WMQrSd/QT
f4j+vcaEWKFYvy86mIUn8mumHOL/ABaNXJg=
          "]]}, 
        "\"Internal (via McBride et al.)\"", TooltipStyle -> "TextStyling"], 
       Annotation[#, "Internal (via McBride et al.)", "Tooltip"]& ], 
      TagBox[
       TooltipBox[{
         RGBColor[1, 0, 0], 
         Thickness[0.003], 
         LineBox[CompressedData["
1:eJwV0X001XcYAPCb8tJNRJ0sV2fNGFoTSS9Uz2OFbrreLr3KuoS7c4ru/d37
+5G0ZJ0ySdkWvci09Cp0cXHXcNesWty7iGKsSbfyMrPft9Spxb7743ue8znn
Oc/b94O4lMgEM4FAIKHv/+jn95U80V6BDVus5W2TXoCw39HqCfU7fW2jlror
5+pF2UwFltgccThNndrb8jRmlgKlTtduxVPX7rdNkM5WoFHV7vFS8AIW3/pG
ho4KDE0qe+lA7RlVvMXRWYFhXMbVbeMEPkyuXm/wVqBblTBv4A2BolU5bLdU
gWlNhbpkQuD7vUnmpYwCN/7rE68eJtC3tHPEmK9Ar+iTqSUmApV5/8wtrlZg
vPcauxV/EJgWba9ZcJ/2r6nZt/EBgVfaRzmxYwpMLz3c02ckIDoBTaMOSkyO
Tr5x/DaBu4/Pbw5YqkSLBWuNej0B6xbtsiWblchNdGyQ6Qh0ORv2DqQqMfDV
qsb9VQQejXGidwVKjBOLzZvLCLBJhonqeiV6hWdDWimBk4HzxR93KXHtFJvm
srMEJE2LHga+VWKNvO5ieAGB5XWt+iYnBrcqijPnHCNwfW7yjDf+DCokNnay
bAK69384/2AbgxJ9SPqcAwTC8qafZTIYlEldQ8PTCahPW/dWFTOoiw6WvWYI
3Hc5y0bpGTxftHle804CDSJfddWfDLpcsaq1TSTgV5FarzVToV3xT5YtsQQC
KvVxqc4qbA6+bzLfRCDTsyjxVIAK3Uwrf4+PIBApdq3cHq/Cc56FEz7rCFTc
08SaDqgweKDWI3M1/Z+x4UibUhWOxQX34woCNwvrSwp+UaGlg12riy+d71JO
9COTCqW3I3wPehKoixKG3bVUo9OSspJNbgQOJR+9pnZT49ug+OBL8wjkmZcm
7g9So1g79WuRIwH35fKEhXI1+qT4Sc1m0vt1e905c0iNd9t7W3dYE5j83gVl
+WU1rk+7McffnEDgzXmZ++6osWBkeu+RcR4ahz4ZLH+uRge2XGj2modfK58V
ZglZbG3p54ZGeZD1XyibPZ/Fe/2T+8IGecjW2FuErmex+2DuE/d+HgbGZ+hM
u1gs+kyw07WHh466We3+uSz2nFvOnOngIdK22XtJBc13t8k6bOBha/uelyMG
Fi2n+baP3OKhaNbNmVYjLOrqo91T9Tzs5mu5ZlsOFzfkj7I6HowrNRiwkMOk
Kd5f/l3Fg/MX2NFKPXrZRtZGzTYZPt/ixaHkme2qGmqn1UP5jDeHpx7se72H
Wr7WxVTqw+EMgXWKBbVAeiJbuIzDbZoncXM1PHjJ97S1I4eayTkJIZU8ZF22
StoewOGNq0+DPKk7B0+8HaY+3Jbobke9d1eVi8VqDn88c2+os4KH28phdlkg
hzlFG1Rx1LKMWFGRmNZnREfSynmobhiu8FjHYYyHNiWG2kqQvkZLndnESIG6
/EDBLmMIhxUxW0Xm1G8O/dY4KZTDnvGHZceu8SC5Ext1lDrjYP5xhvo74V/P
HcPofs4p7AbqoNyp9ovDObxu/y06UZ80FFxoom690us6UcbDsO1H/pIIDvte
iac9poaIamMXdcii7tGfqfPzP92RGMnh7sHczovU/wFfelkD
          "]]}, 
        "\"Gibbs (via McBride et al.)\"", TooltipStyle -> "TextStyling"], 
       Annotation[#, "Gibbs (via McBride et al.)", "Tooltip"]& ], 
      TagBox[
       TooltipBox[{
         RGBColor[0, 1, 1], 
         Thickness[0.003], 
         LineBox[CompressedData["
1:eJwV0XtUjHkYB/AkbTOsMlJUDloiNZTaqFmeJ4nNlsuoc7BqRSVsMbf3TRIl
GzuqFboaEVNqqTZjkkuX00bXSSKVtbl10xT7/myd49b+9o/nPOdzzveP5znf
OTv2iUMNDQwM/Oj8vz08fg0PE0jwS/DWz2UDBPivrExeU5fprlzKpu5U/p4f
PFWCT2bPXnuYOupZU+82cwkeck9MX01ddsQ0dJOFBPvy3V0f9xNwvX8mGK0k
uPzeQgXXR2CRf85WK1sJvhU6ThP2EvgmUuOrc5bgvBlWzbkvCahWKJmuTRIU
BGb3jnYRuBSza4JaJsEsi8KrrW0EXixtH25JlaCl6UBVaxOBkpR/ZuZoJNiw
I0f1XS2BiQGCUsdHEqxRn4t1qCAwqu1WBo1IsMNBePaYloB1GlS9s5Si0xk3
U+NiAo0vL2/xXCpFjz2aQd4VApOatMvctkhx1Hx6/IEL9F9bXcxAlBRnOTxZ
8HMmge4R1vpzuhRT76qSE1IJMLt0Y5py6r8ahTwlgUzvhT4OnVLsf1uxxiyB
gF/Vkg7vj1KUKHlGCTEE3G82V1fZyNBxaCRjpoLAHzMjzT6IZBi6Wy9wjyRw
a9bty08CZegZ8PJqdRiB9Slfn5cdkmFw3vu/G38ioMie9Ox6jgxzIS7NazOB
R3PPM/7VMtyPIU+fbyBQYf2t4vpzGXb7hswf8yHgURxVrjWUY9aMi1LlSgKe
JdU7omzlaPfiRnSGiEDcIlVYlqccAyuPH2xwJSD2mVeyfaccj8+JfbdHSKC4
tTSoJ16Og6LyLKUd7WdEL56slqPr0NkZ1rMI1GSUX0y/J8euD4LCFkt63xVl
QHePHOt8E/vHTyFw05+/vvErBU52WbM/n0cgMTL5mmK+AqPGv97eYEggZYI6
7MhqBfr6t3dM+cTBAvfw0MXhCsy6l8Cvf8+BX5dT/blEBV5wsLMbG+Jg/PQ8
aVGBAiMLXDereznwrpkdF1uvQLMVbs4N3RxUDgrfFPUr8JXxUMDUTg4aSvoy
jvIZrGP2jDW1chD8Ku+qxUIGecPiR0aNHJwoFRiv82XQvq79+LUaDga+mN3q
iWBw3KeC3Og7HDy+ad4mSmIw+HnN3tobHIhNa53dihnc1l0YH1fEwY9t0f8O
6xg8HRfCu53Pgcq8ZqrJMIM+glhm+kUO9nNlbK0pi+oHPdl9mRy0LC9Fz8Us
1louvuNymgPbw/i4mbrx7qmH06iZKt3urU40/9FyYDSVAxuvwVSZM4t9+t8s
7lCHfz+3R+3Coq/lEtkqaoNNaSf4y1hkmpe4BJziwCk8+mEbsviLnb2OSeHg
aIHJru2eLE5s4Q1spm5/k/ZRTy0emWwkoo6JuD7X2IvF2OqjHmPJHNRJ9cwy
bxZFf9oUJFIHHwqyVvmwOKjiJWUkcaCp0Bfbr2UxxN++MJraxODgKi21kX7v
/W3URfHpES0/sOh4ItBwDvWHxAeV49axuEb49kDBSdpnfZB/MvVOjTBDSX2B
P9RvtZ7FTxtTtBHUq5N4AtcNLPK9KokzdaYuPa+KOvfpSYE5td7UTuS3kUVn
+1jnESUHsFHT0kk9LeT0hg7q1NSVIWFiFrU2TftuUf8HxQ5euA==
          "]]}, 
        "\"Helmholtz (via McBride et al.)\"", TooltipStyle -> "TextStyling"], 
       Annotation[#, "Helmholtz (via McBride et al.)", "Tooltip"]& ]}, {{}, 
      TagBox[
       TooltipBox[{
         RGBColor[0, 0, 1], 
         PointBox[{{298.15, 1.4819277108433735`}, {353.15, 
          1.4749999999999999`}}], {{
           
           LineBox[{{298.15, 1.4869277108433734`}, {298.15, 
            1.4769277108433736`}}], 
           LineBox[{
             Offset[{1.5, 0}, {298.15, 1.4869277108433734`}], 
             Offset[{-1.5, 0}, {298.15, 1.4869277108433734`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {298.15, 1.4769277108433736`}], 
             Offset[{-1.5, 0}, {298.15, 1.4769277108433736`}]}]}, {
           LineBox[{{353.15, 1.4799999999999998`}, {353.15, 1.47}}], 
           LineBox[{
             Offset[{1.5, 0}, {353.15, 1.4799999999999998`}], 
             Offset[{-1.5, 0}, {353.15, 1.4799999999999998`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {353.15, 1.47}], 
             Offset[{-1.5, 0}, {353.15, 1.47}]}]}}}, 
        "\"Reversible (Larminie & Dicks)\"", TooltipStyle -> "TextStyling"], 
       Annotation[#, "Reversible (Larminie & Dicks)", "Tooltip"]& ], {}}, {{}, 
      TagBox[
       TooltipBox[{
         RGBColor[1, 0, 0], 
         PointBox[{{298.15, 1.23}, {353.15, 1.18}}], {{
           LineBox[{{298.15, 1.2349999999999999`}, {298.15, 1.225}}], 
           LineBox[{
             Offset[{1.5, 0}, {298.15, 1.2349999999999999`}], 
             Offset[{-1.5, 0}, {298.15, 1.2349999999999999`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {298.15, 1.225}], 
             Offset[{-1.5, 0}, {298.15, 1.225}]}]}, {
           LineBox[{{353.15, 1.1849999999999998`}, {353.15, 1.175}}], 
           LineBox[{
             Offset[{1.5, 0}, {353.15, 1.1849999999999998`}], 
             Offset[{-1.5, 0}, {353.15, 1.1849999999999998`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {353.15, 1.175}], 
             Offset[{-1.5, 0}, {353.15, 1.175}]}]}}}, 
        "\"Isothermal (Larminie & Dicks)\"", TooltipStyle -> "TextStyling"], 
       Annotation[#, "Isothermal (Larminie & Dicks)", "Tooltip"]& ], {}}}, 
    AspectRatio -> NCache[GoldenRatio^(-1), 0.6180339887498948], 
    AxesOrigin -> {280., 1.16}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Temperature / K\"", TraditionalForm], 
      FormBox["\"Potential / V\"", TraditionalForm]}, FrameStyle -> 
    Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)/\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\) Cell Potential \
at 1 atm with \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\[Null]\[Null]O as Liquid\"", FontSize -> 34, StripOnInput -> 
       False], TraditionalForm], 
    PlotRange -> {{273.15, 373.15}, {1.1591133467752974`, 
     1.4855914160221713`}}, PlotRangeClipping -> True, PlotRangePadding -> {
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
             ImageSize -> {24, 8}], "\"Enthalpy (via McBride et al.)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Internal (via McBride et al.)\""}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Gibbs (via McBride et al.)\""}}, 
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
             ImageSize -> {24, 8}], "\"Helmholtz (via McBride et al.)\""}}, 
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
 CellChangeTimes->{{3.537136682076443*^9, 3.537136695810533*^9}, 
   3.537136748461941*^9, 3.53713679792025*^9, 3.537136859313201*^9, {
   3.53713690131036*^9, 3.53713691370804*^9}, {3.537376146363673*^9, 
   3.537376171473886*^9}, 3.537377391922264*^9, 3.537377574356316*^9, 
   3.537377657187287*^9, 3.537377752234451*^9, 3.537377789236316*^9, 
   3.537377823571178*^9, 3.537377863076739*^9, 3.537377933196044*^9, 
   3.537378132735851*^9, 3.537378163092956*^9, 3.537378194206524*^9, 
   3.537378227085517*^9, 3.537378341247974*^9, 3.537379009260888*^9, {
   3.537480221923015*^9, 3.537480249712452*^9}, 3.537511416222777*^9, 
   3.53751211046007*^9, 3.537512804434273*^9, 3.537736588345828*^9, 
   3.537736618847105*^9, 3.538177312275082*^9, 3.538177345845488*^9, 
   3.539267358171495*^9, 3.539267389246777*^9, 3.539629503654064*^9, 
   3.539629536075152*^9, 3.540300038691803*^9, 3.540300075480249*^9, 
   3.543309211687263*^9, 3.543574052618408*^9, 3.551289507300174*^9, 
   3.55128954096609*^9, 3.553196283457855*^9, 3.553196314335824*^9, 
   3.553539554245808*^9, 3.553539589081357*^9, 3.554812043259572*^9, 
   3.554812078586257*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Needs", "[", "\"\<ErrorBarPlots`\>\"", "]"}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"From", " ", "Larminie2003"}], ";", " ", 
     RowBox[{
     "the", " ", "error", " ", "is", " ", "rounding", " ", "error"}]}], " ", 
    "*)"}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"Isothermal", " ", "with", " ", "H2O", 
      RowBox[{"(", "l", ")"}]}], ",", " ", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"assuming", " ", "IG"}], ";"}], " ", "**", "adjust"}], " ", 
      "for", " ", "liquid", " ", "H2O", 
      RowBox[{"(", "l", ")"}], " ", "at", " ", "1", "atm", " ", "rather", " ",
       "than", " ", "1", 
      RowBox[{"bar", "--"}], "v", "*", "dp", " ", "of", " ", "liquid", " ", 
      "water", " ", "using", " ", "water", " ", "density", " ", 
      RowBox[{"function", ".", "  ", 
       RowBox[{"Subtract", ":", " ", 
        RowBox[{"2", "*", 
         RowBox[{"(", 
          RowBox[{"101325", "-", "1000000"}], ")"}], "*", 
         RowBox[{"UPa", "/", 
          RowBox[{
           RowBox[{"Nprime3", "[", 
            RowBox[{"T", "/", "mH2O"}], "]"}], "."}]}]}]}]}]}]}], " ", "*)"}],
    "\n", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"DeltaepsilonEnth", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], 
          RowBox[{"R", "/", "UV"}]}], ",", "\n", 
         RowBox[{
          RowBox[{"DeltaepsilonGibb", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], 
          RowBox[{"R", "/", "UV"}]}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"T", ",", "200", ",", "1000"}], "}"}], ",", "\n", 
       RowBox[{"PlotLabel", "->", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)/\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\) Cell Potential \
at 1 atm with \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\[Null]\[Null]O\[Null] as Gas\>\"", ",", 
          RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
       RowBox[{"FrameLabel", "->", 
        RowBox[{"{", 
         RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Potential / V\>\""}], 
         "}"}]}]}], "]"}], ",", "\n", 
     RowBox[{"ErrorListPlot", "[", 
      RowBox[{
       RowBox[{"Tooltip", "[", 
        RowBox[{
        "DeltaepsilonIsoLar", ",", "\"\<Isothermal (Larminie & Dicks)\>\""}], 
        "]"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"Directive", "[", 
         RowBox[{"Red", ",", " ", 
          RowBox[{"Thickness", "[", "0.0015", "]"}]}], "]"}]}], ",", 
       RowBox[{"PlotMarkers", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Graphics", "@", 
           RowBox[{"{", 
            RowBox[{"Red", ",", 
             RowBox[{"Thickness", "[", "0.2", "]"}], ",", 
             RowBox[{"Circle", "[", "]"}]}], "}"}]}], ",", "0.015"}], 
         "}"}]}]}], "]"}]}], "]"}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"The", " ", "Larminie"}], " ", "&"}], " ", "Dicks", " ", "data",
      " ", 
     RowBox[{"doesn", "'"}], "t", " ", "show", " ", "in", " ", "the", " ", 
     RowBox[{"legend", " ", "**", "Fix"}], " ", 
     RowBox[{"that", "."}]}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-CellPotGas.\
pdf\>\"", ",", 
        "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-CellPotGas.\
png\>\""}], "}"}], ",", "%"}], "]"}], ";"}], "\n", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"DeltaepsilonEnthl", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], 
          RowBox[{"R", "/", "UV"}]}], ",", "\n", 
         RowBox[{
          RowBox[{"DeltaepsilonGibbl", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], 
          RowBox[{"R", "/", "UV"}]}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"T", ",", "273.15", ",", "373.15"}], "}"}], ",", "\n", 
       RowBox[{"PlotLabel", "->", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)/\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\) Cell Potential \
at 1 atm with \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\[Null]\[Null]O as Liquid\>\"", ",", 
          RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
       RowBox[{"FrameLabel", "->", 
        RowBox[{"{", 
         RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Potential / V\>\""}], 
         "}"}]}]}], "]"}], ",", 
     RowBox[{"ErrorListPlot", "[", 
      RowBox[{"DeltaepsilonRevlLar", ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"Directive", "[", 
         RowBox[{"Red", ",", " ", 
          RowBox[{"Thickness", "[", "0.0015", "]"}]}], "]"}]}], ",", "\n", 
       RowBox[{"PlotMarkers", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Graphics", "@", 
           RowBox[{"{", 
            RowBox[{"Red", ",", 
             RowBox[{"Thickness", "[", "0.2", "]"}], ",", 
             RowBox[{"Circle", "[", "]"}]}], "}"}]}], ",", "0.015"}], 
         "}"}]}]}], "]"}], ",", "\n", 
     RowBox[{"ErrorListPlot", "[", 
      RowBox[{"DeltaepsilonIsolLar", ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"Directive", "[", 
         RowBox[{"Red", ",", " ", 
          RowBox[{"Thickness", "[", "0.0015", "]"}]}], "]"}]}], ",", 
       RowBox[{"PlotMarkers", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Graphics", "@", 
           RowBox[{"{", 
            RowBox[{"Red", ",", 
             RowBox[{"Thickness", "[", "0.2", "]"}], ",", 
             RowBox[{"Circle", "[", "]"}]}], "}"}]}], ",", "0.015"}], 
         "}"}]}]}], "]"}]}], "]"}], "\n", 
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-CellPotLiq.\
pdf\>\"", ",", 
        "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-CellPotLiq.\
png\>\""}], "}"}], ",", "%"}], "]"}], ";"}]}]}]], "Input",
 CellChangeTimes->{{3.543309131287912*^9, 3.543309175501034*^9}, {
   3.543316350904776*^9, 3.543316464225425*^9}, {3.543574026106753*^9, 
   3.543574026812547*^9}, {3.543574164122318*^9, 3.54357418492508*^9}, {
   3.543574222642063*^9, 3.543574273021072*^9}, {3.543574324425902*^9, 
   3.543574353938826*^9}, {3.543574483949816*^9, 3.54357451225381*^9}, {
   3.543574564648691*^9, 3.543574601620314*^9}, {3.543574634060942*^9, 
   3.543574694261543*^9}, {3.543574738126633*^9, 3.543574772241166*^9}, {
   3.54357534334032*^9, 3.54357544668426*^9}, 3.5435755262957*^9, 
   3.54357556972533*^9, {3.543575880404707*^9, 3.543575931845518*^9}, {
   3.543575994318893*^9, 3.543576133324595*^9}, {3.543576172090708*^9, 
   3.543576237119618*^9}, {3.543576271691049*^9, 3.5435763182115*^9}, {
   3.543576391436918*^9, 3.543576391603782*^9}, {3.543576435159941*^9, 
   3.543576513194212*^9}}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJwV0Xs01HkYBvBhul+OhEKWoaVUalgqanrfLhKbVrOsZFEjMlon16IaYRCN
+f1ILbMtKkslWTFqXVohFiF0W2bbdJxVUnvane8hxmW/+8d7nvM5z1/Pec1F
x4VB2hwOx53e/7lHILDgcMSo5y1ql42rYUe7y4r+uWK89tpenEO91Vuor9QR
Iz+7b34htW3E0TkhZmK8EP69Rw21cVHWu8fbxMgbalW/pR5ZNFRRIBGjolCU
uXtCDcwfzE7QiLGxU2nC1ajh2emBI/GjoVgyWuaROKmGaKm79vblYag2ei56
MqOGnkDdj8N6xzFoxqGLyyXQL4vfuVcajh+zbvg5zCHg6eZT15wVgcl8XFM7
n4BNTICfHROJ3o8St+ksJsAmt69tKIjCiKuO2RVLCCglbV3C0mhU3Gt776pP
YPOgWvGiOAYVu4wripYTcLaRXoi/ewJX9x3wdVtB4M6goNJQeRLbkri9P5sS
eCXNuFFVGouZJRa9WhYEcubho+iaOOy8wPPMtSRQNm66bNXdUyi5nqb9YTWB
fY9FjKblNMqNrBqk6wiUM06q3t4zeKBWP47LJxBRI/DI65Cg0G+kG78gUNde
9G+6Kh6fHAn1v7+RQLCL433x72fR66nOlTFHAu5Pc/sdYhKQvzRq43EBgdbx
P/EXTQIubUrJ6UICUc+cttjHJeIy7rrS9zsJiFa67t2ulYQft3vWO7sQSFwV
9o9LQhJaSj6s8Hej5qk43ZNJmNv5QBzgTqBFprEalkpxVkhhtMKDgNNt29ca
rWRURsGai18TUKNxRcH5ZHTm3Wls/oaAvG3vh4dLUjB9cJfZKx8C3vMu1Q3K
UzDC8l1RzbcEgqrZa9kGqSgb9WfbAwgU8q6YCC6mYrH/2ME8EYHGMxOckCXn
sN7YxdcniIDVl3MnV+acwzdxATYuIQSqH1vL+vTTsPvHmyfHQwlktUzzeXlp
WBvDi1WFEciNGg49ZJKOOYdvNyWF0z0GpjoWinT8an9gsF4U/Yf17PZo3nl0
ytbT7YkhsJBoGTXkn0edoHVDXrEESvl34vNXyXCL9c3i2acJrBeV7Ju6LcM8
dUlRnoTAgGt1hdfaDKwxMufMnCXwovCUDVRmoEHsgta0JAJTlfu3WtjJkSt3
s32ZTGBWdWRVapkcy81DA03OEfDg73Y+48CgVkfJp8R0Ah1+G8THKhn8LMxw
UCkjYBgYUptXxSCnpb/gV+rAkKuLu+8xqMh469tKPRGpV2Ffx6BT01CPinp1
2tjE1EMGzSXhVdoZBJIr6jMynzPoer3roAe1YK5HedU4g3n1wWYj1GmL0rXf
ahg8ZP1bM6F+qtvoaTxN+w0njk1Tf2diPx6vzWKO5IFSV07gB1vDHXsWssg3
mg+bqUd9B570m7CoOpZkl0K947CR1WIzFvXi+joZanmwMBbMWZx8mRCSS/15
xEOTnyxZ1DZvuHyLWph6IyhsPYtO5QsmeqjzZa/vFfBZLM5/w6qohzONF/Ta
sZj+yMDyL+qEyxllGzexqPYKdv9E3XGlmSN2ZPHA32kDWgyB5cXTwstbWBxx
mopcSC26tamoU8DiQZ+mWQbUZeXhYzPAovio6pIp9X/04Vsw
      "]]}, 
    {RGBColor[0, 1, 0], Thickness[0.003], LineBox[CompressedData["
1:eJwVx3k4lAkcwPEZW7Fk40EhNFQk0SjMktnfj55CaDWP3Wp1LSmjJNd2MTuM
awzvS6eUoy0lReUqYvepdUS6RHLspkftNqmd9yiWMbWzf3yf7/OxDY8VRepw
OJxgbf/fXyi043DEKPC6whsJYsG3y2/+oK4YB2J1Ji5r7b1RZFo3R4xV5k2d
CVq7xu2eFbVAjCmzgnfqam1ZXvD20TdiHLc23ucSyMLY7L9qSlPEaOqZ33sk
gAVimFgNajEmPg+lTday0HdkZKdkPBoN3xnIPYGFRFmwjs+8GPx96XJ9Fz4L
TyKMKaVJLCobs/SUtiwMKiSrg2T78dK/UHvLhIXQdZub2wri8FJ00bD1DBac
k7ZvXUHEoxKe5W/5yACZ3uV0pzQB32nsOcteM1CX0vlQdDURH+YI2sz6GPh6
lD3dfzEJ5ZOLt71tY2CNs+yopOEnxPfbGgLrGbgxKqw1rzuAvmcjisvKGXgh
y62ov3oQB5sjt9meZOCUHt5PbDqEplUVPzhlMFA9aTPXoeEwcgcc+R5JDKx/
FE6o249gdI/Xq/YIBq4TXkM9PcnYkUi4Z4kYiGsShhR3p2Csj79+qC8DzV3l
jHxIggN1mrPn+Qzs8vNsET//GYN8s9Jm8hgI7i0cdE+SYirr4fO3IQP3Jv/E
W2opFhP2F7nTNCT0ea1yO5SK5Z3HCwVjNIQvDAjy4abhV3LHorfPaUh1iKH9
pGlYZ+F8r6VDa94Q5/F0GvY8HBntaaChXaG2V8pkWDRDkhx+gQavKteXam46
LqksSbY4RgOLljWlOen4/Y6nlf5SGvI6g963GmXg7vSMsNsxNGzUO9E8mpeB
I+0rp8O20BDZSP5yzCwT79kLZfEBNJznlVkJj2fi6IPSgCYBDXeTpzhRRlmY
V3/CI8ieBvtA3emFp7Jw7IHX9AYTGhofOSoGTLNReq4ggODSUND+ic8rzkb3
4nfl3v9QUJigjN5hJcdfk8pEi4YpSDWzmWN3Wo4n7re+39xFQbXjzK5EXg62
ey4a/txAgcEHrsWdkhzkne3NH71AwVX+DUmJgwJTQq3NPQoocAmvXK+pUuBK
B7sD/SkUjAQ01nznlIvdldfqmvZQ0H/+sDPU5uKy6FXrDDZRoKnd4G23Ig+3
d7T0lq6hYEZjfH1mdR6GuiTsylpJQQh/7ZpkdwL7E5ZrBhdQ0L11uXhPLYHf
vih8kWRIgXlE1O3iegK9U80qFmodEXXO8PFNAiPCXsY+mU3BVLxJjVszgYk2
uzXLtF6SPTGlaSXwj8vORq/0KUiv+S03/xmBhaYtpiI9CoS6IdfrJwk0nnuy
yPkLCrJny3XeqAlUPlsaPKRDQa/x3VDLTwRaTxh/ztZ6r5XbpESHRP3G/h2v
uBQUuZr7+huQyJtabXWGQ8F42MjTQSsSDV2jXxtNq8D3Rwt7wwUksv3jbnvV
KsjbJToItiTuDXWSdUypYFFcq9WFxSR6Hs2dL5lUgSizIjLGhcRrye7eY+Mq
KFG8vFnKJ/Go06zUtVor8y31e1aQGCKQtp77qALpmdxqDwGJG5fE+W36oILu
sjaO2JNEzb43mbWsCuZd/CQ6s4pEm74v277SOvyKoPyBkMQwRR83mlFB9fX9
E5+BRMe7gcI2WgX/AbR9WF0=
      "]]}}, 
   GraphicsComplexBox[{{373.15, 1.17}, {473.15, 1.14}, {673.15, 1.09}, {
    873.15, 1.04}, {1073.15, 0.98}, {1273.15, 0.92}, {373.15, 1.17}, {473.15, 
    1.14}, {673.15, 1.09}, {873.15, 1.04}, {1073.15, 0.98}, {1273.15, 0.92}}, {
     {RGBColor[1, 0, 0], Thickness[0.0015], {InsetBox[
        GraphicsBox[
         {RGBColor[1, 0, 0], Thickness[0.2], CircleBox[{0, 0}]}], 7, 
        Automatic, Scaled[{0.015, 0.015}]], {
        LineBox[{{373.15, 1.1749999999999998`}, {373.15, 1.165}}], 
        LineBox[{
         Offset[{1.5, 0}, {373.15, 1.1749999999999998`}], 
          Offset[{-1.5, 0}, {373.15, 1.1749999999999998`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {373.15, 1.165}], 
          Offset[{-1.5, 0}, {373.15, 1.165}]}]}}, {InsetBox[
        GraphicsBox[
         {RGBColor[1, 0, 0], Thickness[0.2], CircleBox[{0, 0}]}], 8, 
        Automatic, Scaled[{0.015, 0.015}]], {
        LineBox[{{473.15, 1.1449999999999998`}, {473.15, 1.135}}], 
        LineBox[{
         Offset[{1.5, 0}, {473.15, 1.1449999999999998`}], 
          Offset[{-1.5, 0}, {473.15, 1.1449999999999998`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {473.15, 1.135}], 
          Offset[{-1.5, 0}, {473.15, 1.135}]}]}}, {InsetBox[
        GraphicsBox[
         {RGBColor[1, 0, 0], Thickness[0.2], CircleBox[{0, 0}]}], 9, 
        Automatic, Scaled[{0.015, 0.015}]], {
        LineBox[{{673.15, 1.095}, {673.15, 1.0850000000000002`}}], 
        LineBox[{
         Offset[{1.5, 0}, {673.15, 1.095}], 
          Offset[{-1.5, 0}, {673.15, 1.095}]}], 
        LineBox[{
         Offset[{1.5, 0}, {673.15, 1.0850000000000002`}], 
          Offset[{-1.5, 0}, {673.15, 1.0850000000000002`}]}]}}, {InsetBox[
        GraphicsBox[
         {RGBColor[1, 0, 0], Thickness[0.2], CircleBox[{0, 0}]}], 10, 
        Automatic, Scaled[{0.015, 0.015}]], {
        LineBox[{{873.15, 1.045}, {873.15, 1.0350000000000001`}}], 
        LineBox[{
         Offset[{1.5, 0}, {873.15, 1.045}], 
          Offset[{-1.5, 0}, {873.15, 1.045}]}], 
        LineBox[{
         Offset[{1.5, 0}, {873.15, 1.0350000000000001`}], 
          Offset[{-1.5, 0}, {873.15, 1.0350000000000001`}]}]}}, {InsetBox[
        GraphicsBox[
         {RGBColor[1, 0, 0], Thickness[0.2], CircleBox[{0, 0}]}], 11, 
        Automatic, Scaled[{0.015, 0.015}]], {
        LineBox[{{1073.15, 0.985}, {1073.15, 0.975}}], 
        LineBox[{
         Offset[{1.5, 0}, {1073.15, 0.985}], 
          Offset[{-1.5, 0}, {1073.15, 0.985}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1073.15, 0.975}], 
          Offset[{-1.5, 0}, {1073.15, 0.975}]}]}}, {InsetBox[
        GraphicsBox[
         {RGBColor[1, 0, 0], Thickness[0.2], CircleBox[{0, 0}]}], 12, 
        Automatic, Scaled[{0.015, 0.015}]], {
        LineBox[{{1273.15, 0.925}, {1273.15, 0.915}}], 
        LineBox[{
         Offset[{1.5, 0}, {1273.15, 0.925}], 
          Offset[{-1.5, 0}, {1273.15, 0.925}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1273.15, 0.915}], 
          Offset[{-1.5, 0}, {1273.15, 0.915}]}]}}}, {}}]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{200., 1.},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameLabel->{
    FormBox["\"Temperature / K\"", TraditionalForm], 
    FormBox["\"Potential / V\"", TraditionalForm]},
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotLabel->FormBox[
    StyleBox[
    "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)/\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\) Cell Potential \
at 1 atm with \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\[Null]\[Null]O\[Null] as Gas\"", FontSize -> 34, StripOnInput -> 
     False], TraditionalForm],
  PlotRange->{{200, 1000}, {0.9982629964052353, 1.2846971372404943`}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{3.543576479263139*^9, 3.551289546048183*^9, 
  3.553196318963831*^9, 3.553539594499095*^9, 3.554812080824752*^9}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJwV0Xs01GkYB/BZnRi23HJomdaSbiqXyiVq3wc7TgrFjN1TSamNqY36zczv
93My7sVKOEmUXLqgFENGLrXLWNRSGa0Q5zBrrfvlpN28i1X77h/vec7nPOc5
53m+r8Xxs/4nNTgcjg95/1cXl0uiEEMKxMl2cYvNGOkMmXL/JNbgOqyYI+5N
eXgveBUF9xao7HfEEf0vRwKNKBjjZcqHiWti9U4KjCl4xJeqVcQ7nmcGgykF
PR3h+wqJbYQFh0wtKZhpbdjrQ7w2vMq73Z6CQ3vm+wqaMMr7OoXpE1Cgq5ms
Yf0LRndlocuLJBRcjdIyUCkxGnTqnlFlUPDW/f5xWQNGFemzawqqKHDRXrTW
rcfo8wDDyi1vKPj37wub6n7CCFerU4LmKBCMZtrseYqRWRZSvjMRQ/NStGCg
DqMXfxQedHMSQ1BcFje1FqMVL6udHQ+K4ahFYKR5DbnXsl02HiEGWqEIanuM
kXqONVvKFoOX06svZFUYMaHtn6rqxGDUcjHDQIHRDb611+ZeMRzmf2QaHmHk
o9z2lr8oBvXpXZv9KjDaWfuqUcmTQEt94stxOUaP1oTrL7hK4EDi0kBOGUZP
zJ8W9hyRgNfg9gHbUoz2p6/Ml0RJYCJms2//A4zomyv6FQUS2GZl+DS8BKM3
VvmMsFECou4pntZ9jOrNHGjF7xLIKenrrynGyKU8oq5aQwqTFuN3vIswcqto
PB5hKYWa1/OP5+9iFGeTF5LjRvp6qtyyOxj5e62rOHZCCqcVI9H82xiVv64M
Go6XAtfeKu1DAfmfuSl/3SIpJJQapCbnY9R0ve529jMpjP38EFnlkf3upwSo
h6UQ+8MAp+cmRrVCnf0vtGio2LcsJywHo6TwtDJ6Aw1yZfM23g2M0pcXhcR6
0lDCg+DX2Rht3Ck6aSuiwbl01u90Fsmvz641N4kGrdIQR7NrGC1bXSyWl9Aw
1pjeUX4VI37TV3HRrTQIj60MDMzAqGFy64R8jIb5E81n9a5g1FYxej1Bh4Gh
jTFbitMxCh4qLjW2ZqDNff2AMA2j5EpDTV9vBrxnUm1HL2M0/lH/yXAYA4zX
GU5sCkZdtUadrqkMyEJ8n9tdIvnotdg7ljMQwQswafkRo8Od5z/MtDPw5aBI
QCWRfIyaVnFnGLgV4LuwNhGjc+9r2BY9FuJkytm6CxipdleCmy0LUQGsPDQB
I8sY6HpFvPjt5LNgYkbZfuqQHQuWd4Xqw8Q8j8kMiT0L+pc19Q8Qi/ZYDRdt
J/PPR845E3MEWck6zixE06l22sR2ovO/dQILoRrm9x7EY5RQwg095sZCZpFF
fSFx90TW4hRx8ZBJVz6xLExhpenBQnPHgMZV4l/FU4wznwXlme4jkcTBUUFm
eV4s5HKOGngTV9VPlW/ay8Ku+GsbPIm5nMhvqom/i6nfDcTy+Oww1T4WNN+P
ndpBvJDU0fCZLws9nbmNPGKf1iBhGvE/06E9xsS3dKbHTPez4ClYN61P7Jmq
bbjjAAswyqxeTnyjPbtYSWw0omPzKQ6jKb31rj5+LEybXPGYJ0Z+Vape4q0O
2gf/Is7IcP8+xJ+FmwGS8Gni/wAI32LV
      "]]}, 
    {RGBColor[0, 1, 0], Thickness[0.003], LineBox[CompressedData["
1:eJwV0X001XcYAPCb8tJNRJ0sV2fNGFoTSS9Uz2OFbrreLr3KuoS7c4ru/d37
+5G0ZJ0ySdkWvci09Cp0cXHXcNesWty7iGKsSbfyMrPft9Spxb7743ue8znn
Oc/b94O4lMgEM4FAIKHv/+jn95U80V6BDVus5W2TXoCw39HqCfU7fW2jlror
5+pF2UwFltgccThNndrb8jRmlgKlTtduxVPX7rdNkM5WoFHV7vFS8AIW3/pG
ho4KDE0qe+lA7RlVvMXRWYFhXMbVbeMEPkyuXm/wVqBblTBv4A2BolU5bLdU
gWlNhbpkQuD7vUnmpYwCN/7rE68eJtC3tHPEmK9Ar+iTqSUmApV5/8wtrlZg
vPcauxV/EJgWba9ZcJ/2r6nZt/EBgVfaRzmxYwpMLz3c02ckIDoBTaMOSkyO
Tr5x/DaBu4/Pbw5YqkSLBWuNej0B6xbtsiWblchNdGyQ6Qh0ORv2DqQqMfDV
qsb9VQQejXGidwVKjBOLzZvLCLBJhonqeiV6hWdDWimBk4HzxR93KXHtFJvm
srMEJE2LHga+VWKNvO5ieAGB5XWt+iYnBrcqijPnHCNwfW7yjDf+DCokNnay
bAK69384/2AbgxJ9SPqcAwTC8qafZTIYlEldQ8PTCahPW/dWFTOoiw6WvWYI
3Hc5y0bpGTxftHle804CDSJfddWfDLpcsaq1TSTgV5FarzVToV3xT5YtsQQC
KvVxqc4qbA6+bzLfRCDTsyjxVIAK3Uwrf4+PIBApdq3cHq/Cc56FEz7rCFTc
08SaDqgweKDWI3M1/Z+x4UibUhWOxQX34woCNwvrSwp+UaGlg12riy+d71JO
9COTCqW3I3wPehKoixKG3bVUo9OSspJNbgQOJR+9pnZT49ug+OBL8wjkmZcm
7g9So1g79WuRIwH35fKEhXI1+qT4Sc1m0vt1e905c0iNd9t7W3dYE5j83gVl
+WU1rk+7McffnEDgzXmZ++6osWBkeu+RcR4ahz4ZLH+uRge2XGj2modfK58V
ZglZbG3p54ZGeZD1XyibPZ/Fe/2T+8IGecjW2FuErmex+2DuE/d+HgbGZ+hM
u1gs+kyw07WHh466We3+uSz2nFvOnOngIdK22XtJBc13t8k6bOBha/uelyMG
Fi2n+baP3OKhaNbNmVYjLOrqo91T9Tzs5mu5ZlsOFzfkj7I6HowrNRiwkMOk
Kd5f/l3Fg/MX2NFKPXrZRtZGzTYZPt/ixaHkme2qGmqn1UP5jDeHpx7se72H
Wr7WxVTqw+EMgXWKBbVAeiJbuIzDbZoncXM1PHjJ97S1I4eayTkJIZU8ZF22
StoewOGNq0+DPKk7B0+8HaY+3Jbobke9d1eVi8VqDn88c2+os4KH28phdlkg
hzlFG1Rx1LKMWFGRmNZnREfSynmobhiu8FjHYYyHNiWG2kqQvkZLndnESIG6
/EDBLmMIhxUxW0Xm1G8O/dY4KZTDnvGHZceu8SC5Ext1lDrjYP5xhvo74V/P
HcPofs4p7AbqoNyp9ovDObxu/y06UZ80FFxoom690us6UcbDsO1H/pIIDvte
iac9poaIamMXdcii7tGfqfPzP92RGMnh7sHczovU/wFfelkD
      "]]}}, 
   GraphicsComplexBox[{{298.15, 1.4819277108433735`}, {353.15, 
    1.4749999999999999`}, {298.15, 1.4819277108433735`}, {353.15, 
    1.4749999999999999`}}, {
     {RGBColor[1, 0, 0], Thickness[0.0015], {InsetBox[
        GraphicsBox[
         {RGBColor[1, 0, 0], Thickness[0.2], CircleBox[{0, 0}]}], 3, 
        Automatic, Scaled[{0.015, 0.015}]], {
        LineBox[{{298.15, 1.4869277108433734`}, {298.15, 
         1.4769277108433736`}}], 
        LineBox[{
         Offset[{1.5, 0}, {298.15, 1.4869277108433734`}], 
          Offset[{-1.5, 0}, {298.15, 1.4869277108433734`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {298.15, 1.4769277108433736`}], 
          Offset[{-1.5, 0}, {298.15, 1.4769277108433736`}]}]}}, {InsetBox[
        GraphicsBox[
         {RGBColor[1, 0, 0], Thickness[0.2], CircleBox[{0, 0}]}], 4, 
        Automatic, Scaled[{0.015, 0.015}]], {
        LineBox[{{353.15, 1.4799999999999998`}, {353.15, 1.47}}], 
        LineBox[{
         Offset[{1.5, 0}, {353.15, 1.4799999999999998`}], 
          Offset[{-1.5, 0}, {353.15, 1.4799999999999998`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {353.15, 1.47}], 
          Offset[{-1.5, 0}, {353.15, 1.47}]}]}}}, {}}], 
   GraphicsComplexBox[{{298.15, 1.23}, {353.15, 1.18}, {298.15, 1.23}, {
    353.15, 1.18}}, {
     {RGBColor[1, 0, 0], Thickness[0.0015], {InsetBox[
        GraphicsBox[
         {RGBColor[1, 0, 0], Thickness[0.2], CircleBox[{0, 0}]}], 3, 
        Automatic, Scaled[{0.015, 0.015}]], {
        LineBox[{{298.15, 1.2349999999999999`}, {298.15, 1.225}}], 
        LineBox[{
         Offset[{1.5, 0}, {298.15, 1.2349999999999999`}], 
          Offset[{-1.5, 0}, {298.15, 1.2349999999999999`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {298.15, 1.225}], 
          Offset[{-1.5, 0}, {298.15, 1.225}]}]}}, {InsetBox[
        GraphicsBox[
         {RGBColor[1, 0, 0], Thickness[0.2], CircleBox[{0, 0}]}], 4, 
        Automatic, Scaled[{0.015, 0.015}]], {
        LineBox[{{353.15, 1.1849999999999998`}, {353.15, 1.175}}], 
        LineBox[{
         Offset[{1.5, 0}, {353.15, 1.1849999999999998`}], 
          Offset[{-1.5, 0}, {353.15, 1.1849999999999998`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {353.15, 1.175}], 
          Offset[{-1.5, 0}, {353.15, 1.175}]}]}}}, {}}]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{280., 1.17},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameLabel->{
    FormBox["\"Temperature / K\"", TraditionalForm], 
    FormBox["\"Potential / V\"", TraditionalForm]},
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotLabel->FormBox[
    StyleBox[
    "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)/\\!\\(\\*SubscriptBox[\\(O\[Null]\\), \\(2\\)]\\) Cell Potential \
at 1 atm with \\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\[Null]\[Null]O as Liquid\"", FontSize -> 34, StripOnInput -> 
     False], TraditionalForm],
  PlotRange->{{273.15, 373.15}, {1.16715225038811, 1.4855914160221713`}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{3.543576479263139*^9, 3.551289546048183*^9, 
  3.553196318963831*^9, 3.553539594499095*^9, 3.554812082627168*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Cell", " ", "potential", " ", 
     RowBox[{"(", 
      RowBox[{"/", "V"}], ")"}], " ", "from", " ", "FCSys", " ", "model", " ",
      "at", " ", "60", " ", "degC"}], ",", " ", 
    RowBox[{"149.6", " ", "kPa"}], ",", " ", 
    RowBox[{"H2", "/", "air"}], ",", " ", 
    RowBox[{
    "with", " ", "65", "%", " ", "RH", " ", "in", " ", "anode", " ", "and", 
     " ", "cathode"}], ",", " ", 
    RowBox[{
     RowBox[{"as", " ", "of", " ", 
      RowBox[{
       RowBox[{"3", "/", "1"}], "/", "12"}]}], ":"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"1.20119", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
     "Gibbs", " ", "potential", " ", "difference", " ", "potential", " ", 
      "at", " ", "60", " ", "degC"}], ",", " ", 
     RowBox[{"149.6", " ", "kPa"}], ",", " ", 
     RowBox[{"H2", "/", "air"}], ",", " ", 
     RowBox[{
     "with", " ", "65", "%", " ", "RH", " ", "in", " ", "anode", " ", "and", 
      " ", 
      RowBox[{"cathode", ":"}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"DeltaepsilonGibb", "[", "T_", "]"}], ":=", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"2", 
        RowBox[{"g0H2", "[", "T", "]"}]}], "+", 
       RowBox[{"g0O2", "[", "T", "]"}], "-", 
       RowBox[{"2", 
        RowBox[{"g0H2O", "[", "T", "]"}]}], "+", 
       RowBox[{"2", "T", "*", 
        RowBox[{"Log", "[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"149.6", "-", 
            RowBox[{"0.65", "*", "19.9473825216"}]}], ")"}], 
          RowBox[{"UkPa", "/", "Ubar"}]}], "]"}]}], " ", "+", " ", 
       RowBox[{"T", "*", 
        RowBox[{"Log", "[", 
         RowBox[{"0.20946", 
          RowBox[{"(", 
           RowBox[{"149.6", "-", 
            RowBox[{"0.65", "*", "19.9473825216"}]}], ")"}], 
          RowBox[{"UkPa", "/", "Ubar"}]}], "]"}]}], "-", " ", 
       RowBox[{"2", "T", "*", 
        RowBox[{"Log", "[", 
         RowBox[{"0.65", "*", "19.9473825216", 
          RowBox[{"UkPa", "/", "Ubar"}]}], "]"}]}]}], ")"}], "/", "4"}]}], 
   " ", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"DeltaepsilonGibb", "[", 
     RowBox[{"333.15", "*", "UK"}], "]"}], 
    RowBox[{"R", "/", "UV"}]}]}]}]], "Input",
 CellChangeTimes->{{3.538177362853221*^9, 3.538177380092956*^9}, 
   3.538177414720552*^9, {3.53962955405283*^9, 3.539629583921062*^9}, {
   3.539629617675835*^9, 3.539629636878041*^9}, {3.53962967364623*^9, 
   3.539629729256932*^9}, {3.539631893890887*^9, 3.539631913880089*^9}, {
   3.539631972984293*^9, 3.539631991149697*^9}, {3.539632028194105*^9, 
   3.539632389641384*^9}, {3.539632470631769*^9, 3.539632502618249*^9}}],

Cell[BoxData["1.20119`"], "Output",
 CellChangeTimes->{3.539632184914115*^9, 3.53963222273995*^9, 
  3.539632397393165*^9, 3.539632510189914*^9, 3.540300079837736*^9, 
  3.551289548963984*^9, 3.553196321714824*^9, 3.553539597274454*^9, 
  3.55481208362653*^9}],

Cell[BoxData["1.2011928924301436`"], "Output",
 CellChangeTimes->{3.539632184914115*^9, 3.53963222273995*^9, 
  3.539632397393165*^9, 3.539632510189914*^9, 3.540300079837736*^9, 
  3.551289548963984*^9, 3.553196321714824*^9, 3.553539597274454*^9, 
  3.554812083632809*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"H\[Null]2O", " ", "saturation", " ", "pressure"}], " ", 
  "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Saturated", " ", "H\[Null]2O", " ", "gas", " ", "data", " ", "in", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"temperature", "/", "K"}], ",", " ", 
      RowBox[{"pressure", "/", "kPa"}]}], "}"}], " ", "pairs", " ", "based", 
    " ", "on", " ", "Moran2008", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"pp", ".", " ", "817"}], "-", "818"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"See", " ", "dModel"}], "-", 
      RowBox[{"H2O", ".", "xls", "."}]}], ")"}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"The", " ", "error", " ", "is", " ", "rounding", " ", 
    RowBox[{"error", "."}]}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"psatMor", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"273.16", ",", "0.611"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"277.15", ",", "0.813"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"278.15", ",", "0.872"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"279.15", ",", "0.935"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"281.15", ",", "1.072"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"283.15", ",", "1.228"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"284.15", ",", "1.312"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"285.15", ",", "1.402"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"286.15", ",", "1.497"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"287.15", ",", "1.598"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"288.15", ",", "1.705"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"289.15", ",", "1.818"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"290.15", ",", "1.938"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"291.15", ",", "2.064"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"292.15", ",", "2.198"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"293.15", ",", "2.339"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"294.15", ",", "2.487"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"295.15", ",", "2.645"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"296.15", ",", "2.81"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"297.15", ",", "2.985"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"298.15", ",", "3.169"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"299.15", ",", "3.363"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"300.15", ",", "3.567"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"301.15", ",", "3.782"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"302.15", ",", "4.008"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"303.15", ",", "4.246"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"304.15", ",", "4.496"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"305.15", ",", "4.759"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"306.15", ",", "5.034"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"307.15", ",", "5.324"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"308.15", ",", "5.628"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"309.15", ",", "5.947"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"311.15", ",", "6.632"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"313.15", ",", "7.384"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"318.15", ",", "9.593"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.0005", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"323.15", ",", "12.35"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"328.15", ",", "15.76"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"333.15", ",", "19.94"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"338.15", ",", "25.03"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"343.15", ",", "31.19"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"348.15", ",", "38.58"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"353.15", ",", "47.39"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"358.15", ",", "57.83"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"363.15", ",", "70.14"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"368.15", ",", "84.55"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.005", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"373.15", ",", "101.4"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.05", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"383.15", ",", "143.3"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.05", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"393.15", ",", "198.5"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.05", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"403.15", ",", "270.1"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.05", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"413.15", ",", "361.3"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.05", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"423.15", ",", "475.8"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.05", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"433.15", ",", "617.8"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.05", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"443.15", ",", "791.7"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.05", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"453.15", ",", "1002"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"463.15", ",", "1254"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"473.15", ",", "1554"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"483.15", ",", "1906"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"493.15", ",", "2318"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"503.15", ",", "2795"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"513.15", ",", "3344"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"523.15", ",", "3973"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"533.15", ",", "4688"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"543.15", ",", "5499"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"553.15", ",", "6412"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"563.15", ",", "7436"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"573.15", ",", "8581"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "0.5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"593.15", ",", "11270"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"613.15", ",", "14590"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"633.15", ",", "18650"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "5", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"647.096", ",", "22090"}], "}"}], ",", 
         RowBox[{"ErrorBar", "[", "5", "]"}]}], "}"}]}], "}"}]}], ";"}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
     "Using", " ", "Gibbs", " ", "energy", " ", "of", " ", "formation", " ", 
      "via", " ", "McBride2002"}], ",", " ", 
     RowBox[{
     "which", " ", "uses", " ", "reference", " ", "pressure", " ", "of", " ", 
      "100", " ", "kPa"}]}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"psat", "[", "T_", "]"}], ":=", 
     RowBox[{"1", "Ubar", "*", 
      RowBox[{"Exp", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"g0H2Ol", "[", "T", "]"}], "-", 
          RowBox[{"g0H2O", "[", "T", "]"}]}], ")"}], "/", "T"}], "]"}]}]}], 
    ";"}], " ", "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"From", " ", 
       RowBox[{"Modelica", ".", "Media", ".", "Air", ".", "MoistAir"}]}], ";",
       " ", 
      RowBox[{
       RowBox[{"valid", " ", "for", " ", "273.16", "K"}], " ", "<=", " ", "T",
        " ", "<=", " ", 
       RowBox[{"373.16", "K"}]}], ";", " ", 
      RowBox[{"Outside", " ", "this", " ", "range"}]}], ",", " ", 
     RowBox[{"a", " ", "less", " ", "accurate", " ", "result", " ", "is", " ", 
      RowBox[{"returned", "."}]}]}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"psatMod", "[", "T_", "]"}], ":=", 
     RowBox[{"611.657", "UPa", "*", 
      RowBox[{"Exp", "[", 
       RowBox[{"17.2799", "-", 
        RowBox[{"4102.99", "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"T", "/", "UK"}], "-", "35.719"}], ")"}]}]}], "]"}]}]}], 
    ";"}], " ", "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"Eq", ".", " ", "15"}], " ", "in", " ", 
       RowBox[{"(", 
        RowBox[{"Springer", " ", "et", " ", 
         RowBox[{"al", ".", " ", "1991"}]}], ")"}]}], ";", " ", 
      RowBox[{
       RowBox[{
       "more", " ", "accurate", " ", "than", " ", "equation", " ", "above", 
        " ", "over", " ", "entire", " ", "range", " ", "273.16", "K"}], " ", "<=",
        " ", "T", " ", "<=", " ", 
       RowBox[{"423.16", "K"}]}], ";", " ", "However"}], ",", " ", 
     RowBox[{"it", " ", "is", " ", "more", " ", "complicated"}], ",", " ", 
     RowBox[{
      RowBox[{"and", " ", "273.16", "K"}], " ", "<=", " ", "T", " ", "<=", 
      " ", 
      RowBox[{
      "373.16", "K", " ", "is", " ", "sufficient", " ", "for", " ", "PEMFC", 
       " ", 
       RowBox[{"use", "."}]}]}]}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"psatSpr", "[", "T_", "]"}], ":=", 
     RowBox[{"1", "Uatm", "*", 
      RowBox[{"Exp", "[", 
       RowBox[{
        RowBox[{"Log", "[", "10", "]"}], 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "20.04328416"}], "+", 
          RowBox[{"0.112053341", 
           RowBox[{"T", "/", "UK"}]}], "-", 
          RowBox[{"0.00021028", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"T", "/", "UK"}], ")"}], "^", "2"}]}], "+", 
          RowBox[{"1.4454*^-7", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"T", "/", "UK"}], ")"}], "^", "3"}]}]}], ")"}]}], 
       "]"}]}]}], ";"}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"Kaye", " ", "and", " ", "Laby", " ", "Online"}], ",", " ", 
     "2005"}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{"tau", "[", "T_", "]"}], ":=", 
    RowBox[{"1", "-", 
     RowBox[{
      RowBox[{"T", "/", "UK"}], "/", "647.096"}]}]}], "\n", 
   RowBox[{
    RowBox[{"psatKaytau", "[", "tau_", "]"}], ":=", 
    RowBox[{"22064*^3", "UPa", "*", 
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"1.80122502", 
                RowBox[{"tau", "^", "3.5"}]}], "-", "15.9618719"}], ")"}], 
             "tau"}], "+", 
            RowBox[{"22.6807411", 
             RowBox[{"Sqrt", "[", "tau", "]"}]}], "-", "11.7866497"}], ")"}], 
          
          RowBox[{"tau", "^", "2"}]}], "+", 
         RowBox[{"1.84408259", 
          RowBox[{"Sqrt", "[", "tau", "]"}]}], "-", "7.85951783"}], ")"}], 
       RowBox[{"tau", "/", 
        RowBox[{"(", 
         RowBox[{"1", "-", "tau"}], ")"}]}]}], "]"}]}]}], "\n", 
   RowBox[{
    RowBox[{"psatKay", "[", "T_", "]"}], ":=", 
    RowBox[{"psatKaytau", "[", 
     RowBox[{"tau", "[", "T", "]"}], "]"}]}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"Pa", ";", " ", 
      RowBox[{
       RowBox[{"Kaye", " ", "&"}], " ", "Laby", " ", "Online"}]}], ",", " ", 
     "2005"}], " ", "*)"}], "\n", 
   RowBox[{"(*", " ", 
    RowBox[{"Plot", "."}], " ", "*)"}], "\n", 
   RowBox[{"LineLegendFromTooltips", "[", 
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"{", "\n", 
         RowBox[{
          RowBox[{"Tooltip", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"psat", "[", 
              RowBox[{"T", "*", "UK"}], "]"}], "/", "UkPa"}], ",", 
            "\"\<via Gibbs function\>\""}], "]"}], ",", "\n", 
          RowBox[{"Tooltip", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"psatMod", "[", 
              RowBox[{"T", "*", "UK"}], "]"}], "/", "UkPa"}], ",", 
            "\"\<Modelica\>\""}], "]"}], ",", 
          RowBox[{"Tooltip", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"psatSpr", "[", 
              RowBox[{"T", "*", "UK"}], "]"}], "/", "UkPa"}], ",", 
            "\"\<Springer et al. 1991\>\""}], "]"}], ",", "\n", 
          RowBox[{"Tooltip", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"psatKay", "[", 
              RowBox[{"T", "*", "UK"}], "]"}], "/", "UkPa"}], ",", 
            "\"\<Kaye & Laby Online, 2005\>\""}], "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"T", ",", "273.15", ",", "373.15"}], "}"}], ",", "\n", 
        RowBox[{"PlotLabel", "->", 
         RowBox[{"Style", "[", 
          RowBox[{
          "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \
\\(2\\)]\\)\[Null]\[Null]O Saturation Pressure\>\"", ",", 
           RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
        RowBox[{"FrameLabel", "->", 
         RowBox[{"{", 
          RowBox[{"\"\<Temperature / K\>\"", ",", "\"\<Pressure / kPa\>\""}], 
          "}"}]}]}], "]"}], ",", "\n", 
      RowBox[{"ErrorListPlot", "[", 
       RowBox[{
        RowBox[{"Tooltip", "[", 
         RowBox[{"psatMor", ",", "\"\<Moran & Shapiro, 2008\>\""}], "]"}], 
        ",", 
        RowBox[{"PlotStyle", "->", "Red"}]}], "]"}]}], "]"}], "]"}], "\n", 
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-H2OSatPress.\
pdf\>\"", ",", 
        "\"\<~/Documents/LaTeX/Dissertation/Figures/dModel-Thermo-H2OSatPress.\
png\>\""}], "}"}], ",", "%"}], "]"}], ";"}]}]}]], "Code",
 CellChangeTimes->{
  3.537377614210886*^9, 3.537377835718679*^9, 3.539678194404659*^9, {
   3.539678242732761*^9, 3.539678263979648*^9}, {3.539678313305885*^9, 
   3.539678321024525*^9}, {3.539678602850649*^9, 3.539678631995762*^9}, {
   3.53967892991769*^9, 3.539678940393981*^9}, {3.539679083883527*^9, 
   3.539679088735354*^9}, {3.539679138707357*^9, 3.539679141470885*^9}, {
   3.539679184372026*^9, 3.539679383909325*^9}, {3.53967953873127*^9, 
   3.539679619067364*^9}}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{{}, {}, 
      TagBox[
       TooltipBox[{
         RGBColor[0, 0, 1], 
         Thickness[0.003], 
         LineBox[CompressedData["
1:eJwVx3s0VAkAx3GPUztUiKhMUihbIsN4n7o/oVhJzdBcPSwVps5G87pXUpTd
tVLZ5rSJSB2ppfKcvHoYRBTDhtm0a7VNHiGLNq2wdvaP7/mez+oDMZwILQ0N
jQB1/9/d/Sw/0lAAUW1gVatUReiqTBlv1ZbvC6ueylYR3al3bocbCUBEhoTb
5KuI2J6W/n1LBLC9WHcnp0ZFVCTqR3BNBNBpOE61jKgI9tNL4TAV4Ep9nIGb
71vCLihnj6mFAKyzP/bFaPcRltGy7QqWAAXN9kmq1H4ie3Mq9YorAH/s7u5/
nIeI3PioeXkiAa4W2CnZzFHiTxflaJtUgE6d9zfY7HGiOG3cLEcmwGZCZqtU
fiAWBBuWbugUoImccejNmiQ+lfemhk4KYOOs7D03N0UwLxPysaVCaPkrBp1r
Zonnb26GeLoIcdBIqqXo1MDClnJX5xAhYj7w/IvY2ui2UMS/ixXCeaF7YnLh
PPRO0szZdCE+zobd1gxjgIpSzMmqhLi0dEumIGcBMnzW+9l0C1F+ZPrUTzN6
CJA7vPSZFqKqIq6xPWkx3Cpba+UrRJBNp5zrrzBCiVm0wWcPEf7+3a03fMYY
1eYPbv66X4TG2w+FMaXLEJi26JropAgRWb851J1gQnJ1YU9Zjgje01Oa+oqV
6LS6RgXVitDg1V/S4LAaj5lOkrLXInxa/HAqgWEJ96LYqnItMQplzIhmpzXw
LK49EGshxlR35r6L0dY4bZcdmekpxjDP3mmsZR04fmuKww6KYbw0Y8I7YwOK
fikN7TsjBnfAd8H3xzYie3KEo5cnxsS74L2Fh1iov1J1I71RDMYjhfkRO0dI
fk4N7u0TozrVdf+TGTYqg3QDn38hQeMst3I/0wXJ0RfuSawlCDPIXskg3JA2
Ly8ycasEGcNK/75ED3zpxo/YyJfAxt45NM9qMwJe2TdnJUugN8KvfhYBaC+7
JSzMlyAna3x7+7gnfOpXnT7VLIHLo7WWkgQv1AzbDhUOSjBL1n09sMoHz4oH
riTpUqgYqHnLmb8N4apbd03WUyi7f/Fk/rAvUkoN5+/YTuFJ/O618pX+ePev
QXXfUQr88127WTEB6Kpc0uFxnsKmZV16yx8FgqPfwHIuouBY+Eb5wHEX9nbE
fRxVUOiR1UdxkznIXlJvxBil0GpcqT0xyMWxiQq6QZ/GD99Ej6oSg9G2qRSe
G2mMlwgKDhvzYJGArla1L/U/f31vBQ+UXHF4jz2N69o9nz5Y8rDCa1gqYtHw
Yc01fefAA9/Xqi/PkUbdXY6WPJAHDe7lFF1XGuzuNRZpZ3mw58e96ACNIVvv
vExNEkn5jKgwTxpd48tzmToklEOXp0fUfnF67tw1AxLxR8us5nvR0I5KtS4w
J9EkHKFcfWgs4o4lvNxEIvxkKDPbjwZx5/hiaRwJ2eORonVf0fg29/4c6wwJ
hsYJ73K1fQYSXnekkCg8k360zZ+Gmbj9uFkGic/J7TWaO2i0m382aaogEdAc
GnRBbcrE/AZdQ+K67vtB00Aaadfvr1r3lMTW8zqG7J00cuOiNKRKEhmK9Fty
tf9yTQ73+4PEiP5aj4BdNErYIVVa/SSIXbK2brWdtlkzHr8nIZVuORTJobGz
P27HiY8k/gNG2Tni
          "]]}, "\"via Gibbs function\"", TooltipStyle -> 
        "TextStyling"], Annotation[#, "via Gibbs function", "Tooltip"]& ], 
      TagBox[
       TooltipBox[{
         RGBColor[0, 1, 0], 
         Thickness[0.003], 
         LineBox[CompressedData["
1:eJwVzn081AcAx/Gb1IRNYabTVURJFuY51e97cUo5dIifLXMq0dK6h9/9bj1s
4lU0lXX1wlmoeZoeOOc65JV4KaV0aqTURJ0rSaaH0dzMbn98X9/X+7+PfeJ3
vO1GDAaDa9j/v3LlT8lJlgJoGCeY5HEtYaplmgwa/MF1660suZbozT5fwbcS
QN0e4tBUqiWkfR3Pv7YWwFHv2u3fqCXq0iy2R9oI4OmUcoga0hJeN07xwRTg
pHFOCCNokFgRVRzHdBAg5Z3xc/H0ILF4typU4yGA7d/m91KynhOFa7IljyIF
uPDNvGcKr2GiZP+OmWUiAURuBU9dmKPEU9+e0U6ZwbYdvnFebwhFzhtWsUqA
cM/GnW0P3hFm0ZZK124BKJWZWXHRODGh7s+OHxfgj7IQFcdokrDLJZrHPhdC
VTJ+yah1irj9rJRk+wpBTLCHOA8YMO9Q+/mQQvx5Triq33cGeh00+19KhRAl
f7srQzkT/eO03VSeELP89CdebzOBZIdmWtUgROgp0rKwzAxyjkvI8l4hNM7Z
dZ7GFuA2f/mQoxeizblBfDprLvzr77Q0zxdholqS//qKFWpYu+dMBoiQbx7c
8XiGDS4vbCx9sEUEecRyvq7RFuE5nxSJDojwRPD0/bFMO1C/mPfVFougDp5g
mfYtQLdjkSSqRYSaoz0fAlbZo8nOm6odEKHrcftCwnoxVlZLG9RGYtha6mh5
kBPYipZEqYMY5WWsiKG0pTi4ojCpgC1GyhWbxL3aZeCFOCkStooxtC1xjLzk
iup7ynhduhgFVcu3PJG5oXB8hPdpmRgbHrv3v/3eA635DWfz2sTYHHx3MGu9
J6jfsqP7dWLcrmxpXzffG/VRpuG3P6bwYWdYeRfbF5m7j1+kllLQLVn/wiXV
Hzkzy5LSgimsPljh01MXAGf/5O1uyRR+Hcg9czNpDbiP3NtPZ1IwFm/YM34U
mGFbLqyqpFDUeM27ZtFacFoXHfyhnYLYfkKtVAfi6qsvhquGKNxQRJ47yefg
luJFfoapBD77Ou3beevA15ZfsHGRYLG2S38tKARHlJazwkIlSE2v457M3IiX
/865rEuVYB0tvN74kov79dZdAcckqNmXYO/vFAGexXUPn2oJ7tWXvJ86tAlf
de39a1QjgTRsV8pDHQ+F1q1WJqMSeMs/y/0nKgp73tbR1y1ozI0LbKSmotG5
Wgm2G43oi8NvI0ti4PAj7t8xuIk5mzV8LgaSZk1KnDuNjeEZEenKGMwPfCUT
edD44cba+/UtMUhe76gr86TReniCv2YgBozI3COmfjTmNdQPnWfFwj157+9d
oMGd7lNaFcQio9JkRwKbxuXpoievzsaiZzhXP2JwQneefVtlLPan1jrOCqTh
Uzo2mtYQi5vCEYkfh0YtI63WojcW/APxdoUhNDabRwbLbEmomkaql20w9Ac4
M48uImHC2BekNnhsYYB5ljOJqvS81M6NNIwUfaGH/UhMZt69+lEYDUIvDD0d
S4LbHh913GC+WLagIoHEGdPXQ8xwGt4/Sy1VySSCj8229IqgoY6O53dLScg1
eeXNBt+dxJUXaSRGLJYEcDfRKPVTrJrKIkFsUnX2Ghx4iTVgfYKETLZ2WxLP
0OOkr1ghJ/EfV1w3Og==
          "]]}, "\"Modelica\"", TooltipStyle -> 
        "TextStyling"], Annotation[#, "Modelica", "Tooltip"]& ], 
      TagBox[
       TooltipBox[{
         RGBColor[1, 0, 0], 
         Thickness[0.003], 
         LineBox[CompressedData["
1:eJwVzms0lAkcBvCRk52VmlwipC2KauVSkku8D4OSpBmsmXZTUzH6wO7c3lcR
lW0dnOqkItWwWqPrGjG51MFIVkrG0m3slmoaxYxZqaUo7eyH5zznd/4f/s/i
nT+yk2bQaLRoY/7vgID8lGQrAUqZ7MwpkZYw1zjQXxl9xT4rWJitJdQFVy7w
rAU4nON23JCvJdKfdg3+YCOAf2vu24lyLVF/gJEUayvArYaWF9E9WsKn4yQP
DgK0N305R/cYJDziyrY6OAuwOa3/5N2RQcIlTbGp29t4n7y60iL7DSENLiD7
YwV4GKQ6cydQT/yWyZ8pEwlgEkBrDrIbJV6sfWRQFRr33TbbrWaOEdXH3jqV
KQSw2IKh87r3xKx4qxr3BwLssXYas7k+QUzUDRQkjgvwjIr92GU/RTgWEcpR
OyG+Wt7El6uniXsvK7gha4Vo2ysLi+GZwKKrzs+XK8RI8vMLZIsp1M7dmUPp
Qnw2WadR+ZphYJxy/FwsxCjd9v1MLR0kv/uLolEIHwslj77IAiXhKyK/VQvh
Evesh5nOQLRy1ZPwKSH2518fkTZbwr/hfqtygQhNlz3ZSf9Y45pT2tzJQBG+
M7hvPeFlixvf3Kx4vE0EwbtRl9cv5yPm2OxS0X4RCnU9pfUXHSE5a/G0tkwE
bdDsTtbEQjxYUkrGtYrw86sPjQ3hi9HsuEZS+1yE5pW6jHkOLgiQpzfWzRDD
Vb3jlW/EUoRUt+5MdxaDDAw4HJvlhoMe0uQzIWI4CqdM8/5eDnbk0uodu8Qo
ro7dxrvkDvmfNYnaQ2Lc9kjMGDzoCem4nj1HJkbJoaTS42neaDvdWF78hxjt
R0oUdgGrIblYED+gFWPeJzmlNF+DhjjzmHtfSbCsvMpQ6b4WuWlHf5e4SSCI
ePsOcf44NlOWfCBCAl7jMPvFmUAs809J8kyRYN/Nj5OGsGBE93t1nsuVYEIj
j0nfC5jOrxRWXZIgMUflPss8FOFtiw5mdUrQa99/WX6OiRbdyuGqNxJ8WrfB
o5sZjrvVr0/nmJPYrhlVxXqtB09TedV2BYn3pZ4VYU6RyKuxMtu8iQRNZt3b
yo3C0PTcG9pUEqfaslh1img8bLDpCzxCYoXlUuYjsy1gM9q9feUkTrpmzLm1
k4Xv+/b9a+gmccInKiapiQ2pTZs13UAi/mIOcc01Dj+N1VPtDArrd68zfd0R
D1VQDUI8KXCKti80S06AczYe3jf6cl49n0pNAKns3rPVi4JIUyIbFidgAVNX
KPKmoNIfpT3OSUDKhiVa2WoKTm5rgjvKE0CLLcoz96NQGCr2MnuWAK+Ufb19
oDBj8JdaGoeDnEt0/o4QCrpaIevadg4eDRdN6Y3WbCgY3cXnIDO1dokZk8L5
4/2rVSQHd4R60i+cQjXDsb/pFAe8/YmO0kgKQ+yz01N9HCia9fLlGykwx/0G
uv7igE7LCKszuupsSkeZhoOqQ8WpqigKUkv76qh3HEzm9rSYbDb+r/gyctOK
i+jOxLijRovGUm2lDlz8aj7yxiGGAl8nizzgzEXEka+tfLZQuKtg9G5axUVJ
d3Gl0ugnlnOX+QZwoWe4BkazjPtWUfmLQ7kgWAqV2uiu7Ksf52zkorAwdHcy
m8KHNDtymsXFfyrsNlw=
          "]]}, "\"Springer et al. 1991\"", TooltipStyle -> 
        "TextStyling"], Annotation[#, "Springer et al. 1991", "Tooltip"]& ], 
      TagBox[
       TooltipBox[{
         RGBColor[0, 1, 1], 
         Thickness[0.003], 
         LineBox[CompressedData["
1:eJwVy31czAcAx/FDca44qxy6SE8jPV8plfy+6YHixFXuLqSi69qrh93T7xdq
kW2h1HazQqqhIg+VagmTa02WuNADhYWrPHRLjDItuf3xfX1e7z++FjHJvNjJ
NBqNq9v/9fI6IBYZSSDdV5E0M1dDMDSm9D6dXeOzszyPaojurLOnoo0luJcw
GPJVqYZIeXxrYLOJBAnDht2PrmiIi7uZsaEsCRgWzpypLzWE241D0TCVoGSH
3CHBv49wDCuOMLWUIO/MwLO8iT7CKql2rdpFgqNj7uzRzAGicEUW2RMqgRvp
7vkf5xVxMjVOv1QmQXS59zhvzhDx1KNrqE0pAdtjIiae84aoyn0zv7hWAuUp
Iz9+5z+EQbhRtX2HBIoPzJy7BSPEaF1vVuSIBNo37HrXiX8Jdh6hGp4jxXG3
BU/vXxsnWp+VCH09pGjdmS+50kmD4a26Ze5CKXKFds9S3aeg21Kd+jJFiuBT
ya+3XdBH7wjFHs+XYqOWsdphOx1knHqi9pIUyQ9qlaJSAxwJWBJk1y3F3poH
5kV6THBVnAcBY1JszU7P8tz/BTzrbzeqzGQYTQzcNtFgjAvzk2Z99JbBJs9h
83Z9Fi6bXym5v0WGd127ot5dnYuQ3BlFsjQZpMp30+cdYENRYPi4pliGhA6l
7awnC9BhXUSGNcrg8/ys/msfCzSwlypqnshwouXnUkOWFbwqUy7VTZaD69Xe
ERtoA9+qxpgUSznk+Rlp2RmLsMexUHTUV46J95kWzX224AXZVEVtk6OnLSjp
06/2qLxbHdmfIcdgeEHzj0onFI5oeTNL5VjgPqeJucMFTYcvHc9vliPUvu/M
yUBXKE5nhff2y+H0vWGR5bylqA9jhLROU4DdUxI1uNwDmUk55xWLFLB9YmBn
K/JErn6paHegAubWmUP+Fd5Y7CmOdRIrsINfSdwQrgC3x7nlWKYCWtUk4/Rv
gSlzy6QV5QqIjqlWlcxeiYCmhXu+aVHgYbtZ79XTfrg26PCq4oUC+zh+01as
D8DNqueH9zJIcH74rsjMZxWiNWXnWEtIuG8ZKwhdEoT91UZT160lEaO0jDSO
W4OXn2Zd7k8k0WUyvjvgdy46603avQ+SINuGZv82Yz14zOsu7pUk3lqu4qrj
N2BT+873Q2oSTbSQ0aI/eCg0aTKmD5HQi0i4ae0Yhq/fXqSuMyk40H0bzreF
o82nGr5OFPwqzxm4JvFhmY7O2zpvdKzbVKbgg1Sp4yOcKTy2++kEO40PM79B
pcyFQr4simWYzYd4tXV/qSuFrS9Sjuud4YMWmrefsYyCmUtocdgAH87inffa
QYFFpzFkUQLsLafHRflSGB5IG7MRC9D1Km9MqzMrp3K4J1mA1MQa66l+uv+N
28+D0wX4U6ollwVQcHoUbuJXJEB0WiS7MIhCeb2q8dAjAWobtJW2wRT01wSb
i/sEoNN2+dfpbG9kmOmjFaAiIz+xbQ2FGNeH5NCYAB8z71ybtI6Cf5K5RswW
gtsSGZajc/Pbp4VrrYT4hfH3C9MQCh9GrEQcOyECD043cltPIcWmdaGetxBH
1PllKp33XZ9sMrxSCC3zS2/uBgrL70Sy/goWgthQ29atc9qJ1YvVPCGUypXb
RTwK4jLbYFWEEJ8BYtwk0g==
          "]]}, "\"Kaye & Laby Online, 2005\"", 
        TooltipStyle -> "TextStyling"], 
       Annotation[#, "Kaye & Laby Online, 2005", "Tooltip"]& ]}, {{}, 
      TagBox[
       TooltipBox[{
         RGBColor[1, 0, 0], 
         PointBox[CompressedData["
1:eJw10ntIU1EcB/A1S50MqWUWYWEapUgslbII2c+kfCSl6wGKREmFRJT33G0+
ljldoiNC0iwt/CNDehA9FkWFgq2SLAuRLPojYo4Itch8JCJS9/j9deBy+XDO
/b3OXVN0ynpUr9PpdmqPfL+YiitsMClUcGTb1z3nA5ZjclkVOt5pa1qxcAQu
Uqi6Of3cie+jsFDoR96T1bWjP+FGhSbnPpQNr/sNexX6/H56b6BjAvYp9Pba
jscTc5PwgEIy2+WTf+AhhZ6/kQem4XGFXkXfF8UXZmC9oEx/RcTdjFnYJCjb
qE+oi5yDYwRtOvgsy6j/CycJytWim9w6mvd2QeYva4OrmxfAVkHubplQDxcJ
yknxpB36FgQLQfGFDb6puEVwjSCnlt1fEQw3Cpovxx8Ctwtanxh6J6rAAHsF
zysM9gkau9GzK8VjhAcE3ZRMC4eHBA1q00sMXQyPC7okP59l61X2EtikIp5h
KRyjkqy+PyYCTlLJ2/ZLO7GM+1d5HpHcv0qVFm1ivcu5X5Xk9BLqVnJ/HN+z
iutT6UD4Bm+bOZbj2yhZrodxPB8b1Y7KH8LM/dlISQ37dH0smeuz4/5CtnI+
O/Y3Wng+dtJUkpqdzv05yCp/rwcZfD8O7I/k8HwduJ/6PJ5PKeqJ3c/9ldKV
Vm3l5/M82cOHub8y0snVX8z9lGPfX8L1l9O7Pm1ddHC9FXBnJdfnxHu3m+tx
4vuues5/GvFzGzg/u6WJ81fCmS2c/wz8uo3zs6PaOX8V/LEDfRpccPRtOJ8d
dg++xc71wjNs5yM4qxo2PoVb/7sLHoZdvm7YU4P9oB443g1X9cG9sGvzAO0L
dFx9ueUs3DhI/wDF3a4a
          "]], {{
           LineBox[{{273.16, 0.6114999999999999}, {273.16, 0.6105}}], 
           LineBox[{
             Offset[{1.5, 0}, {273.16, 0.6114999999999999}], 
             Offset[{-1.5, 0}, {273.16, 0.6114999999999999}]}], 
           LineBox[{
             Offset[{1.5, 0}, {273.16, 0.6105}], 
             Offset[{-1.5, 0}, {273.16, 0.6105}]}]}, {
           LineBox[{{277.15, 0.8134999999999999}, {277.15, 0.8125}}], 
           LineBox[{
             Offset[{1.5, 0}, {277.15, 0.8134999999999999}], 
             Offset[{-1.5, 0}, {277.15, 0.8134999999999999}]}], 
           LineBox[{
             Offset[{1.5, 0}, {277.15, 0.8125}], 
             Offset[{-1.5, 0}, {277.15, 0.8125}]}]}, {
           LineBox[{{278.15, 0.8724999999999999}, {278.15, 0.8715}}], 
           LineBox[{
             Offset[{1.5, 0}, {278.15, 0.8724999999999999}], 
             Offset[{-1.5, 0}, {278.15, 0.8724999999999999}]}], 
           LineBox[{
             Offset[{1.5, 0}, {278.15, 0.8715}], 
             Offset[{-1.5, 0}, {278.15, 0.8715}]}]}, {
           LineBox[{{279.15, 0.9355}, {279.15, 0.9345000000000001}}], 
           LineBox[{
             Offset[{1.5, 0}, {279.15, 0.9355}], 
             Offset[{-1.5, 0}, {279.15, 0.9355}]}], 
           LineBox[{
             Offset[{1.5, 0}, {279.15, 0.9345000000000001}], 
             Offset[{-1.5, 0}, {279.15, 0.9345000000000001}]}]}, {
           LineBox[{{281.15, 1.0725}, {281.15, 1.0715000000000001`}}], 
           LineBox[{
             Offset[{1.5, 0}, {281.15, 1.0725}], 
             Offset[{-1.5, 0}, {281.15, 1.0725}]}], 
           LineBox[{
             Offset[{1.5, 0}, {281.15, 1.0715000000000001`}], 
             Offset[{-1.5, 0}, {281.15, 1.0715000000000001`}]}]}, {
           LineBox[{{283.15, 1.2285}, {283.15, 1.2275}}], 
           LineBox[{
             Offset[{1.5, 0}, {283.15, 1.2285}], 
             Offset[{-1.5, 0}, {283.15, 1.2285}]}], 
           LineBox[{
             Offset[{1.5, 0}, {283.15, 1.2275}], 
             Offset[{-1.5, 0}, {283.15, 1.2275}]}]}, {
           LineBox[{{284.15, 1.3125}, {284.15, 1.3115}}], 
           LineBox[{
             Offset[{1.5, 0}, {284.15, 1.3125}], 
             Offset[{-1.5, 0}, {284.15, 1.3125}]}], 
           LineBox[{
             Offset[{1.5, 0}, {284.15, 1.3115}], 
             Offset[{-1.5, 0}, {284.15, 1.3115}]}]}, {
           LineBox[{{285.15, 1.4024999999999999`}, {285.15, 1.4015}}], 
           LineBox[{
             Offset[{1.5, 0}, {285.15, 1.4024999999999999`}], 
             Offset[{-1.5, 0}, {285.15, 1.4024999999999999`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {285.15, 1.4015}], 
             Offset[{-1.5, 0}, {285.15, 1.4015}]}]}, {
           LineBox[{{286.15, 1.4975}, {286.15, 1.4965000000000002`}}], 
           LineBox[{
             Offset[{1.5, 0}, {286.15, 1.4975}], 
             Offset[{-1.5, 0}, {286.15, 1.4975}]}], 
           LineBox[{
             Offset[{1.5, 0}, {286.15, 1.4965000000000002`}], 
             Offset[{-1.5, 0}, {286.15, 1.4965000000000002`}]}]}, {
           LineBox[{{287.15, 1.5985}, {287.15, 1.5975000000000001`}}], 
           LineBox[{
             Offset[{1.5, 0}, {287.15, 1.5985}], 
             Offset[{-1.5, 0}, {287.15, 1.5985}]}], 
           LineBox[{
             Offset[{1.5, 0}, {287.15, 1.5975000000000001`}], 
             Offset[{-1.5, 0}, {287.15, 1.5975000000000001`}]}]}, {
           LineBox[{{288.15, 1.7055}, {288.15, 1.7045000000000001`}}], 
           LineBox[{
             Offset[{1.5, 0}, {288.15, 1.7055}], 
             Offset[{-1.5, 0}, {288.15, 1.7055}]}], 
           LineBox[{
             Offset[{1.5, 0}, {288.15, 1.7045000000000001`}], 
             Offset[{-1.5, 0}, {288.15, 1.7045000000000001`}]}]}, {
           LineBox[{{289.15, 1.8185}, {289.15, 1.8175000000000001`}}], 
           LineBox[{
             Offset[{1.5, 0}, {289.15, 1.8185}], 
             Offset[{-1.5, 0}, {289.15, 1.8185}]}], 
           LineBox[{
             Offset[{1.5, 0}, {289.15, 1.8175000000000001`}], 
             Offset[{-1.5, 0}, {289.15, 1.8175000000000001`}]}]}, {
           LineBox[{{290.15, 1.9385}, {290.15, 1.9375}}], 
           LineBox[{
             Offset[{1.5, 0}, {290.15, 1.9385}], 
             Offset[{-1.5, 0}, {290.15, 1.9385}]}], 
           LineBox[{
             Offset[{1.5, 0}, {290.15, 1.9375}], 
             Offset[{-1.5, 0}, {290.15, 1.9375}]}]}, {
           LineBox[{{291.15, 2.0645000000000002`}, {291.15, 2.0635}}], 
           LineBox[{
             Offset[{1.5, 0}, {291.15, 2.0645000000000002`}], 
             Offset[{-1.5, 0}, {291.15, 2.0645000000000002`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {291.15, 2.0635}], 
             Offset[{-1.5, 0}, {291.15, 2.0635}]}]}, {
           LineBox[{{292.15, 2.1985}, {292.15, 2.1975}}], 
           LineBox[{
             Offset[{1.5, 0}, {292.15, 2.1985}], 
             Offset[{-1.5, 0}, {292.15, 2.1985}]}], 
           LineBox[{
             Offset[{1.5, 0}, {292.15, 2.1975}], 
             Offset[{-1.5, 0}, {292.15, 2.1975}]}]}, {
           LineBox[{{293.15, 2.3395}, {293.15, 2.3385}}], 
           LineBox[{
             Offset[{1.5, 0}, {293.15, 2.3395}], 
             Offset[{-1.5, 0}, {293.15, 2.3395}]}], 
           LineBox[{
             Offset[{1.5, 0}, {293.15, 2.3385}], 
             Offset[{-1.5, 0}, {293.15, 2.3385}]}]}, {
           LineBox[{{294.15, 2.4875000000000003`}, {294.15, 2.4865}}], 
           LineBox[{
             Offset[{1.5, 0}, {294.15, 2.4875000000000003`}], 
             Offset[{-1.5, 0}, {294.15, 2.4875000000000003`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {294.15, 2.4865}], 
             Offset[{-1.5, 0}, {294.15, 2.4865}]}]}, {
           LineBox[{{295.15, 2.6455}, {295.15, 2.6445}}], 
           LineBox[{
             Offset[{1.5, 0}, {295.15, 2.6455}], 
             Offset[{-1.5, 0}, {295.15, 2.6455}]}], 
           LineBox[{
             Offset[{1.5, 0}, {295.15, 2.6445}], 
             Offset[{-1.5, 0}, {295.15, 2.6445}]}]}, {
           LineBox[{{296.15, 2.8105}, {296.15, 2.8095}}], 
           LineBox[{
             Offset[{1.5, 0}, {296.15, 2.8105}], 
             Offset[{-1.5, 0}, {296.15, 2.8105}]}], 
           LineBox[{
             Offset[{1.5, 0}, {296.15, 2.8095}], 
             Offset[{-1.5, 0}, {296.15, 2.8095}]}]}, {
           LineBox[{{297.15, 2.9855}, {297.15, 2.9844999999999997`}}], 
           LineBox[{
             Offset[{1.5, 0}, {297.15, 2.9855}], 
             Offset[{-1.5, 0}, {297.15, 2.9855}]}], 
           LineBox[{
             Offset[{1.5, 0}, {297.15, 2.9844999999999997`}], 
             Offset[{-1.5, 0}, {297.15, 2.9844999999999997`}]}]}, {
           LineBox[{{298.15, 3.1695}, {298.15, 3.1685}}], 
           LineBox[{
             Offset[{1.5, 0}, {298.15, 3.1695}], 
             Offset[{-1.5, 0}, {298.15, 3.1695}]}], 
           LineBox[{
             Offset[{1.5, 0}, {298.15, 3.1685}], 
             Offset[{-1.5, 0}, {298.15, 3.1685}]}]}, {
           LineBox[{{299.15, 3.3635}, {299.15, 3.3625}}], 
           LineBox[{
             Offset[{1.5, 0}, {299.15, 3.3635}], 
             Offset[{-1.5, 0}, {299.15, 3.3635}]}], 
           LineBox[{
             Offset[{1.5, 0}, {299.15, 3.3625}], 
             Offset[{-1.5, 0}, {299.15, 3.3625}]}]}, {
           LineBox[{{300.15, 3.5675000000000003`}, {300.15, 3.5665}}], 
           LineBox[{
             Offset[{1.5, 0}, {300.15, 3.5675000000000003`}], 
             Offset[{-1.5, 0}, {300.15, 3.5675000000000003`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {300.15, 3.5665}], 
             Offset[{-1.5, 0}, {300.15, 3.5665}]}]}, {
           LineBox[{{301.15, 3.7825}, {301.15, 3.7815}}], 
           LineBox[{
             Offset[{1.5, 0}, {301.15, 3.7825}], 
             Offset[{-1.5, 0}, {301.15, 3.7825}]}], 
           LineBox[{
             Offset[{1.5, 0}, {301.15, 3.7815}], 
             Offset[{-1.5, 0}, {301.15, 3.7815}]}]}, {
           LineBox[{{302.15, 4.0085}, {302.15, 4.0075}}], 
           LineBox[{
             Offset[{1.5, 0}, {302.15, 4.0085}], 
             Offset[{-1.5, 0}, {302.15, 4.0085}]}], 
           LineBox[{
             Offset[{1.5, 0}, {302.15, 4.0075}], 
             Offset[{-1.5, 0}, {302.15, 4.0075}]}]}, {
           LineBox[{{303.15, 4.2465}, {303.15, 4.245500000000001}}], 
           LineBox[{
             Offset[{1.5, 0}, {303.15, 4.2465}], 
             Offset[{-1.5, 0}, {303.15, 4.2465}]}], 
           LineBox[{
             Offset[{1.5, 0}, {303.15, 4.245500000000001}], 
             Offset[{-1.5, 0}, {303.15, 4.245500000000001}]}]}, {
           LineBox[{{304.15, 4.4965}, {304.15, 4.495500000000001}}], 
           LineBox[{
             Offset[{1.5, 0}, {304.15, 4.4965}], 
             Offset[{-1.5, 0}, {304.15, 4.4965}]}], 
           LineBox[{
             Offset[{1.5, 0}, {304.15, 4.495500000000001}], 
             Offset[{-1.5, 0}, {304.15, 4.495500000000001}]}]}, {
           LineBox[{{305.15, 4.7595}, {305.15, 4.758500000000001}}], 
           LineBox[{
             Offset[{1.5, 0}, {305.15, 4.7595}], 
             Offset[{-1.5, 0}, {305.15, 4.7595}]}], 
           LineBox[{
             Offset[{1.5, 0}, {305.15, 4.758500000000001}], 
             Offset[{-1.5, 0}, {305.15, 4.758500000000001}]}]}, {
           LineBox[{{306.15, 5.0344999999999995`}, {306.15, 5.0335}}], 
           LineBox[{
             Offset[{1.5, 0}, {306.15, 5.0344999999999995`}], 
             Offset[{-1.5, 0}, {306.15, 5.0344999999999995`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {306.15, 5.0335}], 
             Offset[{-1.5, 0}, {306.15, 5.0335}]}]}, {
           LineBox[{{307.15, 5.3245}, {307.15, 5.3235}}], 
           LineBox[{
             Offset[{1.5, 0}, {307.15, 5.3245}], 
             Offset[{-1.5, 0}, {307.15, 5.3245}]}], 
           LineBox[{
             Offset[{1.5, 0}, {307.15, 5.3235}], 
             Offset[{-1.5, 0}, {307.15, 5.3235}]}]}, {
           LineBox[{{308.15, 5.6285}, {308.15, 5.6275}}], 
           LineBox[{
             Offset[{1.5, 0}, {308.15, 5.6285}], 
             Offset[{-1.5, 0}, {308.15, 5.6285}]}], 
           LineBox[{
             Offset[{1.5, 0}, {308.15, 5.6275}], 
             Offset[{-1.5, 0}, {308.15, 5.6275}]}]}, {
           LineBox[{{309.15, 5.9475}, {309.15, 5.9465}}], 
           LineBox[{
             Offset[{1.5, 0}, {309.15, 5.9475}], 
             Offset[{-1.5, 0}, {309.15, 5.9475}]}], 
           LineBox[{
             Offset[{1.5, 0}, {309.15, 5.9465}], 
             Offset[{-1.5, 0}, {309.15, 5.9465}]}]}, {
           LineBox[{{311.15, 6.632499999999999}, {311.15, 6.6315}}], 
           LineBox[{
             Offset[{1.5, 0}, {311.15, 6.632499999999999}], 
             Offset[{-1.5, 0}, {311.15, 6.632499999999999}]}], 
           LineBox[{
             Offset[{1.5, 0}, {311.15, 6.6315}], 
             Offset[{-1.5, 0}, {311.15, 6.6315}]}]}, {
           LineBox[{{313.15, 7.389}, {313.15, 7.3790000000000004`}}], 
           LineBox[{
             Offset[{1.5, 0}, {313.15, 7.389}], 
             Offset[{-1.5, 0}, {313.15, 7.389}]}], 
           LineBox[{
             Offset[{1.5, 0}, {313.15, 7.3790000000000004`}], 
             Offset[{-1.5, 0}, {313.15, 7.3790000000000004`}]}]}, {
           LineBox[{{318.15, 9.5935}, {318.15, 9.5925}}], 
           LineBox[{
             Offset[{1.5, 0}, {318.15, 9.5935}], 
             Offset[{-1.5, 0}, {318.15, 9.5935}]}], 
           LineBox[{
             Offset[{1.5, 0}, {318.15, 9.5925}], 
             Offset[{-1.5, 0}, {318.15, 9.5925}]}]}, {
           LineBox[{{323.15, 12.355}, {323.15, 12.344999999999999`}}], 
           LineBox[{
             Offset[{1.5, 0}, {323.15, 12.355}], 
             Offset[{-1.5, 0}, {323.15, 12.355}]}], 
           LineBox[{
             Offset[{1.5, 0}, {323.15, 12.344999999999999`}], 
             Offset[{-1.5, 0}, {323.15, 12.344999999999999`}]}]}, {
           LineBox[{{328.15, 15.765}, {328.15, 15.754999999999999`}}], 
           LineBox[{
             Offset[{1.5, 0}, {328.15, 15.765}], 
             Offset[{-1.5, 0}, {328.15, 15.765}]}], 
           LineBox[{
             Offset[{1.5, 0}, {328.15, 15.754999999999999`}], 
             Offset[{-1.5, 0}, {328.15, 15.754999999999999`}]}]}, {
           LineBox[{{333.15, 19.945}, {333.15, 19.935000000000002`}}], 
           LineBox[{
             Offset[{1.5, 0}, {333.15, 19.945}], 
             Offset[{-1.5, 0}, {333.15, 19.945}]}], 
           LineBox[{
             Offset[{1.5, 0}, {333.15, 19.935000000000002`}], 
             Offset[{-1.5, 0}, {333.15, 19.935000000000002`}]}]}, {
           LineBox[{{338.15, 25.035}, {338.15, 25.025000000000002`}}], 
           LineBox[{
             Offset[{1.5, 0}, {338.15, 25.035}], 
             Offset[{-1.5, 0}, {338.15, 25.035}]}], 
           LineBox[{
             Offset[{1.5, 0}, {338.15, 25.025000000000002`}], 
             Offset[{-1.5, 0}, {338.15, 25.025000000000002`}]}]}, {
           LineBox[{{343.15, 31.195}, {343.15, 31.185000000000002`}}], 
           LineBox[{
             Offset[{1.5, 0}, {343.15, 31.195}], 
             Offset[{-1.5, 0}, {343.15, 31.195}]}], 
           LineBox[{
             Offset[{1.5, 0}, {343.15, 31.185000000000002`}], 
             Offset[{-1.5, 0}, {343.15, 31.185000000000002`}]}]}, {
           LineBox[{{348.15, 38.585}, {348.15, 38.574999999999996`}}], 
           LineBox[{
             Offset[{1.5, 0}, {348.15, 38.585}], 
             Offset[{-1.5, 0}, {348.15, 38.585}]}], 
           LineBox[{
             Offset[{1.5, 0}, {348.15, 38.574999999999996`}], 
             Offset[{-1.5, 0}, {348.15, 38.574999999999996`}]}]}, {
           LineBox[{{353.15, 47.395}, {353.15, 47.385}}], 
           LineBox[{
             Offset[{1.5, 0}, {353.15, 47.395}], 
             Offset[{-1.5, 0}, {353.15, 47.395}]}], 
           LineBox[{
             Offset[{1.5, 0}, {353.15, 47.385}], 
             Offset[{-1.5, 0}, {353.15, 47.385}]}]}, {
           LineBox[{{358.15, 57.835}, {358.15, 57.824999999999996`}}], 
           LineBox[{
             Offset[{1.5, 0}, {358.15, 57.835}], 
             Offset[{-1.5, 0}, {358.15, 57.835}]}], 
           LineBox[{
             Offset[{1.5, 0}, {358.15, 57.824999999999996`}], 
             Offset[{-1.5, 0}, {358.15, 57.824999999999996`}]}]}, {
           LineBox[{{363.15, 70.145}, {363.15, 70.135}}], 
           LineBox[{
             Offset[{1.5, 0}, {363.15, 70.145}], 
             Offset[{-1.5, 0}, {363.15, 70.145}]}], 
           LineBox[{
             Offset[{1.5, 0}, {363.15, 70.135}], 
             Offset[{-1.5, 0}, {363.15, 70.135}]}]}, {
           LineBox[{{368.15, 84.55499999999999}, {368.15, 84.545}}], 
           LineBox[{
             Offset[{1.5, 0}, {368.15, 84.55499999999999}], 
             Offset[{-1.5, 0}, {368.15, 84.55499999999999}]}], 
           LineBox[{
             Offset[{1.5, 0}, {368.15, 84.545}], 
             Offset[{-1.5, 0}, {368.15, 84.545}]}]}, {
           LineBox[{{373.15, 101.45}, {373.15, 101.35000000000001`}}], 
           LineBox[{
             Offset[{1.5, 0}, {373.15, 101.45}], 
             Offset[{-1.5, 0}, {373.15, 101.45}]}], 
           LineBox[{
             Offset[{1.5, 0}, {373.15, 101.35000000000001`}], 
             Offset[{-1.5, 0}, {373.15, 101.35000000000001`}]}]}, {
           LineBox[{{383.15, 143.35000000000002`}, {383.15, 143.25}}], 
           LineBox[{
             Offset[{1.5, 0}, {383.15, 143.35000000000002`}], 
             Offset[{-1.5, 0}, {383.15, 143.35000000000002`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {383.15, 143.25}], 
             Offset[{-1.5, 0}, {383.15, 143.25}]}]}, {
           LineBox[{{393.15, 198.55}, {393.15, 198.45}}], 
           LineBox[{
             Offset[{1.5, 0}, {393.15, 198.55}], 
             Offset[{-1.5, 0}, {393.15, 198.55}]}], 
           LineBox[{
             Offset[{1.5, 0}, {393.15, 198.45}], 
             Offset[{-1.5, 0}, {393.15, 198.45}]}]}, {
           LineBox[{{403.15, 270.15000000000003`}, {403.15, 270.05}}], 
           LineBox[{
             Offset[{1.5, 0}, {403.15, 270.15000000000003`}], 
             Offset[{-1.5, 0}, {403.15, 270.15000000000003`}]}], 
           LineBox[{
             Offset[{1.5, 0}, {403.15, 270.05}], 
             Offset[{-1.5, 0}, {403.15, 270.05}]}]}, {
           LineBox[{{413.15, 361.35}, {413.15, 361.25}}], 
           LineBox[{
             Offset[{1.5, 0}, {413.15, 361.35}], 
             Offset[{-1.5, 0}, {413.15, 361.35}]}], 
           LineBox[{
             Offset[{1.5, 0}, {413.15, 361.25}], 
             Offset[{-1.5, 0}, {413.15, 361.25}]}]}, {
           LineBox[{{423.15, 475.85}, {423.15, 475.75}}], 
           LineBox[{
             Offset[{1.5, 0}, {423.15, 475.85}], 
             Offset[{-1.5, 0}, {423.15, 475.85}]}], 
           LineBox[{
             Offset[{1.5, 0}, {423.15, 475.75}], 
             Offset[{-1.5, 0}, {423.15, 475.75}]}]}, {
           LineBox[{{433.15, 617.8499999999999}, {433.15, 617.75}}], 
           LineBox[{
             Offset[{1.5, 0}, {433.15, 617.8499999999999}], 
             Offset[{-1.5, 0}, {433.15, 617.8499999999999}]}], 
           LineBox[{
             Offset[{1.5, 0}, {433.15, 617.75}], 
             Offset[{-1.5, 0}, {433.15, 617.75}]}]}, {
           LineBox[{{443.15, 791.75}, {443.15, 791.6500000000001}}], 
           LineBox[{
             Offset[{1.5, 0}, {443.15, 791.75}], 
             Offset[{-1.5, 0}, {443.15, 791.75}]}], 
           LineBox[{
             Offset[{1.5, 0}, {443.15, 791.6500000000001}], 
             Offset[{-1.5, 0}, {443.15, 791.6500000000001}]}]}, {
           LineBox[{{453.15, 1002.5}, {453.15, 1001.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {453.15, 1002.5}], 
             Offset[{-1.5, 0}, {453.15, 1002.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {453.15, 1001.5}], 
             Offset[{-1.5, 0}, {453.15, 1001.5}]}]}, {
           LineBox[{{463.15, 1254.5}, {463.15, 1253.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {463.15, 1254.5}], 
             Offset[{-1.5, 0}, {463.15, 1254.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {463.15, 1253.5}], 
             Offset[{-1.5, 0}, {463.15, 1253.5}]}]}, {
           LineBox[{{473.15, 1554.5}, {473.15, 1553.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {473.15, 1554.5}], 
             Offset[{-1.5, 0}, {473.15, 1554.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {473.15, 1553.5}], 
             Offset[{-1.5, 0}, {473.15, 1553.5}]}]}, {
           LineBox[{{483.15, 1906.5}, {483.15, 1905.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {483.15, 1906.5}], 
             Offset[{-1.5, 0}, {483.15, 1906.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {483.15, 1905.5}], 
             Offset[{-1.5, 0}, {483.15, 1905.5}]}]}, {
           LineBox[{{493.15, 2318.5}, {493.15, 2317.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {493.15, 2318.5}], 
             Offset[{-1.5, 0}, {493.15, 2318.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {493.15, 2317.5}], 
             Offset[{-1.5, 0}, {493.15, 2317.5}]}]}, {
           LineBox[{{503.15, 2795.5}, {503.15, 2794.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {503.15, 2795.5}], 
             Offset[{-1.5, 0}, {503.15, 2795.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {503.15, 2794.5}], 
             Offset[{-1.5, 0}, {503.15, 2794.5}]}]}, {
           LineBox[{{513.15, 3344.5}, {513.15, 3343.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {513.15, 3344.5}], 
             Offset[{-1.5, 0}, {513.15, 3344.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {513.15, 3343.5}], 
             Offset[{-1.5, 0}, {513.15, 3343.5}]}]}, {
           LineBox[{{523.15, 3973.5}, {523.15, 3972.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {523.15, 3973.5}], 
             Offset[{-1.5, 0}, {523.15, 3973.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {523.15, 3972.5}], 
             Offset[{-1.5, 0}, {523.15, 3972.5}]}]}, {
           LineBox[{{533.15, 4688.5}, {533.15, 4687.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {533.15, 4688.5}], 
             Offset[{-1.5, 0}, {533.15, 4688.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {533.15, 4687.5}], 
             Offset[{-1.5, 0}, {533.15, 4687.5}]}]}, {
           LineBox[{{543.15, 5499.5}, {543.15, 5498.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {543.15, 5499.5}], 
             Offset[{-1.5, 0}, {543.15, 5499.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {543.15, 5498.5}], 
             Offset[{-1.5, 0}, {543.15, 5498.5}]}]}, {
           LineBox[{{553.15, 6412.5}, {553.15, 6411.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {553.15, 6412.5}], 
             Offset[{-1.5, 0}, {553.15, 6412.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {553.15, 6411.5}], 
             Offset[{-1.5, 0}, {553.15, 6411.5}]}]}, {
           LineBox[{{563.15, 7436.5}, {563.15, 7435.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {563.15, 7436.5}], 
             Offset[{-1.5, 0}, {563.15, 7436.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {563.15, 7435.5}], 
             Offset[{-1.5, 0}, {563.15, 7435.5}]}]}, {
           LineBox[{{573.15, 8581.5}, {573.15, 8580.5}}], 
           LineBox[{
             Offset[{1.5, 0}, {573.15, 8581.5}], 
             Offset[{-1.5, 0}, {573.15, 8581.5}]}], 
           LineBox[{
             Offset[{1.5, 0}, {573.15, 8580.5}], 
             Offset[{-1.5, 0}, {573.15, 8580.5}]}]}, {
           LineBox[{{593.15, 11275.}, {593.15, 11265.}}], 
           LineBox[{
             Offset[{1.5, 0}, {593.15, 11275.}], 
             Offset[{-1.5, 0}, {593.15, 11275.}]}], 
           LineBox[{
             Offset[{1.5, 0}, {593.15, 11265.}], 
             Offset[{-1.5, 0}, {593.15, 11265.}]}]}, {
           LineBox[{{613.15, 14595.}, {613.15, 14585.}}], 
           LineBox[{
             Offset[{1.5, 0}, {613.15, 14595.}], 
             Offset[{-1.5, 0}, {613.15, 14595.}]}], 
           LineBox[{
             Offset[{1.5, 0}, {613.15, 14585.}], 
             Offset[{-1.5, 0}, {613.15, 14585.}]}]}, {
           LineBox[{{633.15, 18655.}, {633.15, 18645.}}], 
           LineBox[{
             Offset[{1.5, 0}, {633.15, 18655.}], 
             Offset[{-1.5, 0}, {633.15, 18655.}]}], 
           LineBox[{
             Offset[{1.5, 0}, {633.15, 18645.}], 
             Offset[{-1.5, 0}, {633.15, 18645.}]}]}, {
           LineBox[{{647.096, 22095.}, {647.096, 22085.}}], 
           LineBox[{
             Offset[{1.5, 0}, {647.096, 22095.}], 
             Offset[{-1.5, 0}, {647.096, 22095.}]}], 
           LineBox[{
             Offset[{1.5, 0}, {647.096, 22085.}], 
             Offset[{-1.5, 0}, {647.096, 22085.}]}]}}}, 
        "\"Moran & Shapiro, 2008\"", TooltipStyle -> "TextStyling"], 
       Annotation[#, "Moran & Shapiro, 2008", "Tooltip"]& ], {}}}, 
    AspectRatio -> NCache[GoldenRatio^(-1), 0.6180339887498948], 
    AxesOrigin -> {280., 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Temperature / K\"", TraditionalForm], 
      FormBox["\"Pressure / kPa\"", TraditionalForm]}, FrameStyle -> Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\[Null]\[Null]O \
Saturation Pressure\"", FontSize -> 34, StripOnInput -> False], 
      TraditionalForm], 
    PlotRange -> {{273.15, 373.15}, {0., 102.39347266699019`}}, 
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
             ImageSize -> {24, 8}], "\"via Gibbs function\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Modelica\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Springer et al. 1991\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 1], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Kaye & Laby Online, 2005\""}}, 
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
 CellChangeTimes->{
  3.539679269205918*^9, {3.53967954060354*^9, 3.539679593101547*^9}, 
   3.54030004536904*^9, 3.540300080373183*^9, 3.543309216264053*^9, 
   3.54357405754099*^9, 3.551289511833006*^9, 3.551289549485609*^9, 
   3.553196288226787*^9, 3.553196322236744*^9, 3.55353955875304*^9, 
   3.5535395978656*^9, 3.554812048070741*^9, 3.554812084129726*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "Since", " ", "the", " ", "saturation", " ", "pressure", " ", "models", 
     " ", "above", " ", "cannot", " ", "be", " ", "inverted"}], ",", " ", 
    RowBox[{"create", " ", "a", " ", "function", " ", "for", " ", 
     RowBox[{"Subscript", "[", 
      RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], 
     "\[Null]\[Null]O\[Null]\[Null]", " ", "temperature", " ", "as", " ", "a",
      " ", "function", " ", "of", " ", "pressure", " ", "at", " ", 
     RowBox[{"saturation", "."}]}]}], " ", "*)"}], "\n", 
  RowBox[{"(*", " ", 
   RowBox[{"Saturated", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], "O", " ", "gas", " ", "data",
     " ", "in", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"pressure", "/", "MPa"}], ",", " ", 
      RowBox[{"temperature", "/", "K"}]}], "}"}], " ", "pairs", " ", "based", 
    " ", "on", " ", "Moran2008", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"pp", ".", " ", "817"}], "-", "818"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"See", " ", "dModel"}], "-", 
      RowBox[{"H2O", ".", "xls", "."}]}], ")"}]}], " ", "*)"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Tsat", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"0.000611", ",", "273.16"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.000813", ",", "277.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.000872", ",", "278.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.000935", ",", "279.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.001072", ",", "281.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.001228", ",", "283.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.001312", ",", "284.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.001402", ",", "285.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.001497", ",", "286.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.001598", ",", "287.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.001705", ",", "288.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.001818", ",", "289.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.001938", ",", "290.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.002064", ",", "291.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.002198", ",", "292.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.002339", ",", "293.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.002487", ",", "294.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.002645", ",", "295.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.00281", ",", "296.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.002985", ",", "297.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.003169", ",", "298.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.003363", ",", "299.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.003567", ",", "300.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.003782", ",", "301.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.004008", ",", "302.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.004246", ",", "303.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.004496", ",", "304.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.004759", ",", "305.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.005034", ",", "306.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.005324", ",", "307.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.005628", ",", "308.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.005947", ",", "309.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.006632", ",", "311.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.007384", ",", "313.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.009593", ",", "318.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.01235", ",", "323.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.01576", ",", "328.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.01994", ",", "333.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.02503", ",", "338.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.03199", ",", "343.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.03858", ",", "348.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.04739", ",", "353.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.05783", ",", "358.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.07014", ",", "363.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.08455", ",", "368.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.1014", ",", "373.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.1433", ",", "383.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.1985", ",", "393.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.2701", ",", "403.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.3613", ",", "413.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.4758", ",", "423.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.6178", ",", "433.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0.7917", ",", "443.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1.002", ",", "453.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1.254", ",", "463.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1.554", ",", "473.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1.906", ",", "483.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"2.318", ",", "493.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"2.795", ",", "503.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3.344", ",", "513.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3.973", ",", "523.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"4.688", ",", "533.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"5.499", ",", "543.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"6.412", ",", "553.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"7.436", ",", "563.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"8.581", ",", "573.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"11.27", ",", "593.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"14.59", ",", "613.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"18.65", ",", "633.15"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"22.09", ",", "647.096"}], "}"}]}], "}"}]}], ";"}], "\n", 
 RowBox[{"Tsatfit", "=", 
  RowBox[{"Fit", "[", 
   RowBox[{"Tsat", ",", 
    RowBox[{"{", 
     RowBox[{"1", ",", 
      RowBox[{"Log", "[", "P", "]"}], ",", 
      RowBox[{
       RowBox[{"Log", "[", "P", "]"}], "^", "2"}], ",", 
      RowBox[{
       RowBox[{"Log", "[", "P", "]"}], "^", "3"}], ",", 
      RowBox[{
       RowBox[{"Log", "[", "P", "]"}], "^", "4"}]}], "}"}], ",", "P"}], 
   "]"}]}], "\n", 
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Show", "[", 
   RowBox[{
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{"Tsatfit", ",", "\"\<Fit\>\""}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"P", ",", "0.6*^-3", ",", "23"}], "}"}], ",", "\n", 
      RowBox[{"PlotLabel", "->", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\[Null]\[Null]O \
Saturation Temperature\>\"", ",", 
         RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
      RowBox[{"FrameLabel", "->", 
       RowBox[{"{", 
        RowBox[{"\"\<Pressure / MPa\>\"", ",", "\"\<Temperature / K\>\""}], 
        "}"}]}]}], "]"}], ",", 
    RowBox[{"ListPlot", "[", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{"Tsat", ",", "\"\<Data (Moran & Shapiro, 2008)\>\""}], "]"}], 
      ",", 
      RowBox[{"PlotStyle", "->", "Red"}]}], "]"}]}], "]"}], "]"}]}], "Code",
 CellChangeTimes->{3.53737761425079*^9, 3.537377835752213*^9}],

Cell[BoxData[
 RowBox[{"452.9476515413908`", "\[VeryThinSpace]", "+", 
  RowBox[{"43.71212947383102`", " ", 
   RowBox[{"Log", "[", "P", "]"}]}], "+", 
  RowBox[{"4.705377977189522`", " ", 
   SuperscriptBox[
    RowBox[{"Log", "[", "P", "]"}], "2"]}], "+", 
  RowBox[{"0.4151611584657809`", " ", 
   SuperscriptBox[
    RowBox[{"Log", "[", "P", "]"}], "3"]}], "+", 
  RowBox[{"0.018214895593842463`", " ", 
   SuperscriptBox[
    RowBox[{"Log", "[", "P", "]"}], "4"]}]}]], "Output",
 CellChangeTimes->{{3.537127850612829*^9, 3.537127872503782*^9}, {
   3.537376151192247*^9, 3.537376175575556*^9}, 3.537377395721564*^9, 
   3.537377578617953*^9, 3.537377661569317*^9, 3.537377757901128*^9, 
   3.537377794672296*^9, 3.537377831187881*^9, 3.537377869118062*^9, 
   3.537377939231716*^9, 3.537377991642238*^9, 3.537378138874727*^9, 
   3.537378169293036*^9, 3.537378200260392*^9, 3.537378232934751*^9, 
   3.537378347418277*^9, 3.537379015166392*^9, {3.537480227816898*^9, 
   3.537480254983321*^9}, 3.537511422071491*^9, 3.537512116298494*^9, 
   3.53751281005412*^9, {3.537736594763468*^9, 3.53773662455137*^9}, 
   3.538177318847806*^9, 3.53817735211904*^9, 3.539267364964198*^9, 
   3.53926739499768*^9, 3.539629510541569*^9, 3.539629542010017*^9, 
   3.540300048555034*^9, 3.540300082011515*^9, 3.543309218146498*^9, 
   3.543574060275657*^9, 3.551289513777346*^9, 3.551289551017674*^9, 
   3.553196290192975*^9, 3.553196323926695*^9, 3.553539561242667*^9, 
   3.553539599552445*^9, 3.554812050087946*^9, 3.554812085774395*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{{}, {}, 
      TagBox[
       TooltipBox[{
         RGBColor[0, 0, 1], 
         Thickness[0.003], 
         LineBox[CompressedData["
1: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
nqXQGh/i7Tlv3V9Uvs3NUbjdPy19ed7/AR6ZOhI=
          "]]}, "\"Fit\"", 
        TooltipStyle -> "TextStyling"], 
       Annotation[#, "Fit", "Tooltip"]& ]}, {{}, 
      TagBox[
       TooltipBox[{
         RGBColor[1, 0, 0], 
         PointBox[CompressedData["
1:eJwtkwtMTXEcx9NCNSZNnvOIXPKI8sqovuSVyKsiiXaJyqjzP/eVct17U3qw
S6Sl5NEiLXRR85jKlSkb0liMKLHJI6muK1Lc/X//7ezss/85/+/38zs7ztKY
9RHWVlZWy/5flnv3SD9dbN8lPvdNk7foHQWUNpXMbstf6bPTstYLyHxZerch
YxVnqYA1C7rnhOQHcGYCSmTeC/2PruOcIaBx6m3TqTGBnK8JCBvesvSbOoiz
UUC5U6pd9K9gznUCUn4adO+SN3F+L2DuJ/+YA26bObcLqP4c/NTveyhnawaf
nrrz3jVhnB0Zhq4tvKiv3MZ5PENkiFmf9CmcswfDddzxTesj5byYwe3hVAcv
1+3kx/Dq6wrT6W07yI/hm6lVby6KID+GmXmLfHttdnHWMbxxHV3cK0aSL8Ns
3ZEv70xRnM8zmO4mN948vJv8GcY02Kanee4hf4aYn/0f7fmzl/wZOmyMAYbo
WPJnGJfl2Y4dAvkzVBp2PY2IZuQvwj28JmiaWiR/EUOymp1S8mTkLyJJ5bI1
74mc/EVM6hpcIR2oJH8RG10khU2hKvIX4Xys7MekKfHkK6LcPC/yqrea/ESc
tJ9SpC5IpH4iape8bOtcmUrny3CvN/ja9glHaT4yfI06VCHZfYL8ZGhqLW5Q
nMumfnI8GJW9vCf8LOXJ4emh775XmU/zkeN3ztoUjW8h+SkQlyF7/CHnMn0f
BaLmuLQaOg00XwXM8sbcwQWlNB8lkhJqr4eYbpGfElqJMfniRiPNU4ncqnEl
LLKG/FQYcPySbp3fM/KJQ5+31nZpY+upfxxSOl/Xa8W31HcfoqxitDYPmqlf
PPyr+3vlBLVQn3i8ULVI3G3bKD8BRT/qVksdOik/AcryMyNnNPyi/P34WDv+
dZe6h/LVmNhPm+mbbg2er8YWvfH/n9mPMzuAI1l7HRMr7THLsuw0kDpsmn+j
ehDnEA3tO3K+pOHn9zhx7tLg1RPzhuaCEZz9tLC8rSgfzTlbi7KOv89Vrs6c
W7Swr8+P9UqTcE7V4crypn1D3KZzdk3kvS54cK5JhOVx+2FzEdhckFPleRD/
AOS75o8=
          "]]}, "\"Data (Moran & Shapiro, 2008)\"", TooltipStyle -> 
        "TextStyling"], 
       Annotation[#, "Data (Moran & Shapiro, 2008)", "Tooltip"]& ], {}}}, 
    AspectRatio -> NCache[GoldenRatio^(-1), 0.6180339887498948], 
    AxesOrigin -> {0, 270.}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Pressure / MPa\"", TraditionalForm], 
      FormBox["\"Temperature / K\"", TraditionalForm]}, FrameStyle -> 
    Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\[Null]\[Null]O \
Saturation Temperature\"", FontSize -> 34, StripOnInput -> False], 
      TraditionalForm], 
    PlotRange -> {{0.0006, 23}, {273.3048791058392, 650.8252162554329}}, 
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
             ImageSize -> {24, 8}], "\"Fit\""}}, AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[1, 0, 0], 
              PointBox[{0, 0}]}, AspectRatio -> 2, ImagePadding -> 0, 
             ImageSize -> {4, 8}], "\"Data (Moran & Shapiro, 2008)\""}}, 
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
 CellChangeTimes->{{3.537127850612829*^9, 3.537127872503782*^9}, {
   3.537376151192247*^9, 3.537376175575556*^9}, 3.537377395721564*^9, 
   3.537377578617953*^9, 3.537377661569317*^9, 3.537377757901128*^9, 
   3.537377794672296*^9, 3.537377831187881*^9, 3.537377869118062*^9, 
   3.537377939231716*^9, 3.537377991642238*^9, 3.537378138874727*^9, 
   3.537378169293036*^9, 3.537378200260392*^9, 3.537378232934751*^9, 
   3.537378347418277*^9, 3.537379015166392*^9, {3.537480227816898*^9, 
   3.537480254983321*^9}, 3.537511422071491*^9, 3.537512116298494*^9, 
   3.53751281005412*^9, {3.537736594763468*^9, 3.53773662455137*^9}, 
   3.538177318847806*^9, 3.53817735211904*^9, 3.539267364964198*^9, 
   3.53926739499768*^9, 3.539629510541569*^9, 3.539629542010017*^9, 
   3.540300048555034*^9, 3.540300082011515*^9, 3.543309218146498*^9, 
   3.543574060275657*^9, 3.551289513777346*^9, 3.551289551017674*^9, 
   3.553196290192975*^9, 3.553196323926695*^9, 3.553539561242667*^9, 
   3.553539599552445*^9, 3.554812050087946*^9, 3.554812085794011*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"h0H2O", "[", 
   RowBox[{"333.15", "UK"}], "]"}], 
  RowBox[{"R", "/", "UV"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"h0Hplus", "[", 
   RowBox[{"333.15", "UK"}], "]"}], 
  RowBox[{"R", "/", "UV"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"h0O2", "[", 
   RowBox[{"333.15", "UK"}], "]"}], 
  RowBox[{"R", "/", "UV"}]}]}], "Input",
 CellChangeTimes->{{3.53754361553982*^9, 3.537543694957648*^9}}],

Cell[BoxData[
 RowBox[{"-", "2.4941228949523087`"}]], "Output",
 CellChangeTimes->{{3.537543611013796*^9, 3.537543695647077*^9}, 
   3.537736624628182*^9, 3.53817735231478*^9, 3.539267395099911*^9, 
   3.539629542082668*^9, 3.540300082201899*^9, 3.551289551134641*^9, 
   3.553196324083788*^9, 3.553539599654608*^9, 3.554812085893529*^9}],

Cell[BoxData["15.929534099214397`"], "Output",
 CellChangeTimes->{{3.537543611013796*^9, 3.537543695647077*^9}, 
   3.537736624628182*^9, 3.53817735231478*^9, 3.539267395099911*^9, 
   3.539629542082668*^9, 3.540300082201899*^9, 3.551289551134641*^9, 
   3.553196324083788*^9, 3.553539599654608*^9, 3.554812085895347*^9}],

Cell[BoxData["0.010691992940411177`"], "Output",
 CellChangeTimes->{{3.537543611013796*^9, 3.537543695647077*^9}, 
   3.537736624628182*^9, 3.53817735231478*^9, 3.539267395099911*^9, 
   3.539629542082668*^9, 3.540300082201899*^9, 3.551289551134641*^9, 
   3.553196324083788*^9, 3.553539599654608*^9, 3.554812085896945*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"1", 
  RowBox[{"Ubar", "/", 
   RowBox[{"(", 
    RowBox[{"R", "*", "333.15", "UK"}], ")"}]}], "*", 
  RowBox[{
   RowBox[{"Exp", "[", 
    RowBox[{
     RowBox[{"-", 
      RowBox[{"h0H2O", "[", 
       RowBox[{"333.15", "UK"}], "]"}]}], "/", 
     RowBox[{"(", 
      RowBox[{"333.15", "UK"}], ")"}]}], "]"}], "/", 
   RowBox[{"(", 
    RowBox[{"UC", "/", 
     RowBox[{"Um", "^", "3"}]}], ")"}]}]}]], "Input",
 CellChangeTimes->{{3.537543504751486*^9, 3.537543576556442*^9}}],

Cell[BoxData["1.8714368990359896`*^44"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543577350944*^9}, 3.53773662464385*^9, 3.538177352447973*^9, 
   3.539267395115678*^9, 3.53962954209914*^9, 3.540300082218858*^9, 
   3.551289551150172*^9, 3.553196324100792*^9, 3.553539599672772*^9, 
   3.554812085981207*^9}],

Cell[BoxData["1.8714368990359896`*^44"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543577350944*^9}, 3.53773662464385*^9, 3.538177352447973*^9, 
   3.539267395115678*^9, 3.53962954209914*^9, 3.540300082218858*^9, 
   3.551289551150172*^9, 3.553196324100792*^9, 3.553539599672772*^9}],

Cell[BoxData["1.8714368990359896`*^44"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543577350944*^9}, 3.53773662464385*^9, 3.538177352447973*^9, 
   3.539267395115678*^9, 3.53962954209914*^9, 3.540300082218858*^9, 
   3.551289551150172*^9, 3.553196324100792*^9}],

Cell[BoxData["1.8714368990359896`*^44"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543577350944*^9}, 3.53773662464385*^9, 3.538177352447973*^9, 
   3.539267395115678*^9, 3.53962954209914*^9, 3.540300082218858*^9, 
   3.551289551150172*^9}],

Cell[BoxData["1.8714368990359896`*^44"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543577350944*^9}, 3.53773662464385*^9, 3.538177352447973*^9, 
   3.539267395115678*^9, 3.53962954209914*^9, 3.540300082218858*^9}],

Cell[BoxData["1.8714368990359896`*^44"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543577350944*^9}, 3.53773662464385*^9, 3.538177352447973*^9, 
   3.539267395115678*^9, 3.53962954209914*^9}],

Cell[BoxData["1.8714368990359896`*^44"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543577350944*^9}, 3.53773662464385*^9, 3.538177352447973*^9, 
   3.539267395115678*^9}],

Cell[BoxData["1.8714368990359896`*^44"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543577350944*^9}, 3.53773662464385*^9, 3.538177352447973*^9}],

Cell[BoxData["1.8714368990359896`*^44"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543577350944*^9}, 3.53773662464385*^9}],

Cell[BoxData["1.8714368990359896`*^44"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543577350944*^9}}],

Cell[BoxData["1.8714368990359895`*^38"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543560949168*^9}}],

Cell[BoxData["6.48333463569271`*^-38"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543548349409*^9}}],

Cell[BoxData["5.021052302990476`"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543541599346*^9}}],

Cell[BoxData["6.48333463569271`*^-38"], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.537511134352581*^9, 3.537511144990519*^9}, 
   3.537511192632675*^9, {3.537511236985093*^9, 3.537511255491128*^9}, 
   3.537511422189671*^9, {3.537511543182117*^9, 3.537511552266911*^9}, {
   3.537511634781504*^9, 3.537511651819231*^9}, 3.537511702782943*^9, 
   3.537511829621018*^9, 3.53751211646525*^9, {3.537512242938478*^9, 
   3.537512257395253*^9}, {3.537512810160903*^9, 3.537512850264878*^9}, 
   3.537512895830834*^9, 3.537512991636865*^9, 3.537513036544697*^9, {
   3.537513092548728*^9, 3.537513121747732*^9}, {3.537513158744044*^9, 
   3.537513175706274*^9}, {3.537514390765647*^9, 3.537514412851355*^9}, {
   3.537531680991089*^9, 3.537531699009073*^9}, 3.537531755432093*^9, {
   3.537531800158689*^9, 3.537531900838162*^9}, 3.537532248667212*^9, {
   3.537539652295544*^9, 3.537539676438677*^9}, {3.537543472352499*^9, 
   3.537543513591851*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Attempt", " ", "to", " ", "find", " ", "the", " ", "temperature", " ", 
    RowBox[{"(", 
     RowBox[{"other", " ", "than", " ", "300", "K"}], ")"}], " ", "at", " ", 
    "which", " ", "the", " ", "enthalpy", " ", "is", " ", "equal", " ", "to", 
    " ", "the", " ", "enthalpy", " ", "of", " ", 
    RowBox[{"formation", "."}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Not", " ", "possible", " ", "for", " ", "e"}], "-"}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"h0eminus", "[", 
         RowBox[{"300", "UK"}], "]"}], 
        RowBox[{"R", "/", "UV"}]}], ",", 
       RowBox[{
        RowBox[{"h0eminus", "[", 
         RowBox[{"T", "*", "UK"}], "]"}], 
        RowBox[{"R", "/", "UV"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"T", ",", "1", ",", "1000"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"10.8960", "K", " ", "for", " ", "H2", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"from", " ", "e"}], "-", " ", 
       RowBox[{"and", " ", "H"}], "+"}], ")"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"h0eminus", "[", 
            RowBox[{"300", "UK"}], "]"}]}], "+", 
          RowBox[{"2", 
           RowBox[{"h0Hplus", "[", 
            RowBox[{"300", "UK"}], "]"}]}], "-", 
          RowBox[{"h0H2", "[", 
           RowBox[{"300", "UK"}], "]"}]}], ")"}], 
        RowBox[{"R", "/", "UV"}]}], ",", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"h0eminus", "[", 
            RowBox[{"T", "*", "UK"}], "]"}]}], "+", 
          RowBox[{"2", 
           RowBox[{"h0Hplus", "[", 
            RowBox[{"T", "*", "UK"}], "]"}]}], "-", 
          RowBox[{"h0H2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}]}], ")"}], 
        RowBox[{"R", "/", "UV"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"T", ",", "1", ",", "1000"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"h0eminus", "[", 
            RowBox[{"300", "UK"}], "]"}]}], "+", 
          RowBox[{"2", 
           RowBox[{"h0Hplus", "[", 
            RowBox[{"300", "UK"}], "]"}]}], "-", 
          RowBox[{"h0H2", "[", 
           RowBox[{"300", "UK"}], "]"}]}], ")"}], 
        RowBox[{"R", "/", "UV"}]}], ",", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"h0eminus", "[", 
            RowBox[{"T", "*", "UK"}], "]"}]}], "+", 
          RowBox[{"2", 
           RowBox[{"h0Hplus", "[", 
            RowBox[{"T", "*", "UK"}], "]"}]}], "-", 
          RowBox[{"h0H2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}]}], ")"}], 
        RowBox[{"R", "/", "UV"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"T", ",", "10.8958", ",", "10.8962"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"Not", " ", "possible", " ", "for", " ", "H2O", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"from", " ", "e"}], "-"}], ",", " ", 
       RowBox[{"H", "+"}], ",", " ", 
       RowBox[{"and", " ", "O2"}]}], ")"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"4", 
           RowBox[{"h0eminus", "[", 
            RowBox[{"300", "UK"}], "]"}]}], "+", 
          RowBox[{"4", 
           RowBox[{"h0Hplus", "[", 
            RowBox[{"300", "UK"}], "]"}]}], "+", 
          RowBox[{"h0O2", "[", 
           RowBox[{"300", "UK"}], "]"}], "-", 
          RowBox[{"2", 
           RowBox[{"h0H2O", "[", 
            RowBox[{"300", "UK"}], "]"}]}]}], ")"}], 
        RowBox[{"R", "/", "UV"}]}], ",", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"4", 
           RowBox[{"h0eminus", "[", 
            RowBox[{"T", "*", "UK"}], "]"}]}], "+", 
          RowBox[{"4", 
           RowBox[{"h0Hplus", "[", 
            RowBox[{"T", "*", "UK"}], "]"}]}], "+", 
          RowBox[{"h0O2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "-", 
          RowBox[{"2", 
           RowBox[{"h0H2O", "[", 
            RowBox[{"T", "*", "UK"}], "]"}]}]}], ")"}], 
        RowBox[{"R", "/", "UV"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"T", ",", "1", ",", "1000"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"Not", " ", "possible", " ", "for", " ", "H2O", " ", 
     RowBox[{"(", 
      RowBox[{"from", " ", "H2", " ", "and", " ", "O2"}], ")"}]}], " ", 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"4", 
           RowBox[{"h0H2", "[", 
            RowBox[{"300", "UK"}], "]"}]}], "+", 
          RowBox[{"h0O2", "[", 
           RowBox[{"300", "UK"}], "]"}], "-", 
          RowBox[{"2", 
           RowBox[{"h0H2O", "[", 
            RowBox[{"300", "UK"}], "]"}]}]}], ")"}], 
        RowBox[{"R", "/", "UV"}]}], ",", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"h0H2", "[", 
            RowBox[{"T", "*", "UK"}], "]"}]}], "+", 
          RowBox[{"h0O2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}], "-", 
          RowBox[{"2", 
           RowBox[{"h0H2O", "[", 
            RowBox[{"T", "*", "UK"}], "]"}]}]}], ")"}], 
        RowBox[{"R", "/", "UV"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"T", ",", "1", ",", "1000"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"Solve", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"h0eminus", "[", 
            RowBox[{"T", "*", "UK"}], "]"}]}], "+", 
          RowBox[{"2", 
           RowBox[{"h0Hplus", "[", 
            RowBox[{"T", "*", "UK"}], "]"}]}], "-", 
          RowBox[{"h0H2", "[", 
           RowBox[{"T", "*", "UK"}], "]"}]}], ")"}], 
        RowBox[{"R", "/", "UV"}]}], "==", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"h0eminus", "[", 
            RowBox[{"300", "UK"}], "]"}]}], "+", 
          RowBox[{"2", 
           RowBox[{"h0Hplus", "[", 
            RowBox[{"300", "UK"}], "]"}]}], "-", 
          RowBox[{"h0H2", "[", 
           RowBox[{"300", "UK"}], "]"}]}], ")"}], 
        RowBox[{"R", "/", "UV"}]}]}], ",", "T"}], "]"}], "*)"}]}]}]], "Input",\

 CellChangeTimes->{{3.537376096496005*^9, 3.53737611562839*^9}, {
  3.537376203834493*^9, 3.537376243301209*^9}, {3.537376285282234*^9, 
  3.537376350966933*^9}, {3.537376390567413*^9, 3.537376448475544*^9}, {
  3.537376481466407*^9, 3.537376508911962*^9}, {3.537376551269232*^9, 
  3.537376557638774*^9}, {3.537376798233411*^9, 3.537376979030181*^9}, {
  3.537377015296407*^9, 3.537377188999988*^9}, {3.537377231239202*^9, 
  3.537377338306161*^9}, {3.537511096035247*^9, 3.537511102019766*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQfeLO6QRRhg/2dav3O8yQs7KPWN7+5NVsVQcYv+dl
Vd/L2SZw/qsV4f0c713g/EmX6uVO3faD81fV1yVEeYfA+bpL17XHT4qE84uO
pk6yro+D83Ot2ndefpUI5z+/tOHd5M4UOP/Qi7lT7X+nwfl6x5rVNy/MhPN/
K+hqC0nnwPn9e1YX/27Pg/Nv9U8MvjalAM6XZdBfpnK+EM7XvOLx7ppyMZw/
w+NshF9RCZy/o9q4xnpVKZy/QEhsas+fMjjfMuNWWrBFBZw/S1Far66vEs6P
qz4mnnevCs6/PDl412XxGjhfQCA2aG52LZz/z8tj8Z0VdXC+v9o8sYf36+H8
LUY79i+Z0QDnzzScdEHYrBHOT0rSurPlAYIf+/h7hUVHE5y/wdnsU5lKM5z/
4qpR2vOzCH6F+4JtQjktCP9xOs9QYG+F8+//WVySsB7Bv3u+VDfapw3O33+F
9WH7NwT/5w62wvyp7XB+6lubSZaGHXD+1mDDdaa3EPy4mdOWvSnvhPNfC+ya
eVWpC85feUNIbuEpBP9A/Z069fRuOH93RMqt+wI9cD6fYKxQ8HoEf7Jk9+0V
Xr1w/p/g8vkGnxH8vblX7Isn9CHCh3nSLMsXCL7QLP+v/+374XwAzHZ2Fg==

     "]]}, 
   {RGBColor[0, 1, 0], Thickness[0.003], LineBox[CompressedData["
1:eJwVxXk01AkcAPDZEnklEzJvOhyhw1ENkmO977etXZOjeqYiV2qdm2MjyhFh
GVe/nwY9Q1O8aZhU04iEjp/mJxVJGdl2GmyvXoaWpC0pq9394/M+5ofifcPn
MRgMn//8/wN1d+gyxiR4KRSiwJ/lVEvkSJz+yN/g8CXGceEBOSWdmndC9/EM
rLRndTcFyKntWqJHcz3f4buaw5/1fOWUxfJ+zVTVIizLMuK1o5x6v7qmZLyK
hUMYsdDKRE751/Ffj1VZ4esMwzfqhqtU8WgqMVrliA4pNSXzRDJqTOpHLny3
He2c1nW0bb9MCfoyTbpe7MSH+cUFrkb1VH1mRmiA1x784XffLy0TdZSdRMY/
INiP7ImcHRcqJVTCvXCBW2YIkpUCa784MRXrym9Vjh3Eg/qLx5INa6iRPvlE
aUEYWjF6L1rzRZRCIyqHrxH4cPFW8ScnIbWhM2dtY000rqnP33+2oIz6amZn
Y7AiBjsSihye2pRQ5K1LiV/5cegWceGB9gM+pSJP8wbKfsV2ZpuH+2w6tYqx
sday9wg6am1azvOJpNb3cycGLBJRZ22vZjERBBXcHv+dCUfxbHN8bVt5CrSk
OaS71SehS9rwXVVYLlQbGJcXzyZj48yLZstWAlyiVBE85+OoZnLs190ohUrz
FRsyiBQ0LTPxfh1XASFpnay4oVSUmHL1xUwRKEt5bUpWOn6EQL/ohmpgMoN9
RYdPYFtdHddIVwxznlyxWpqBL1OMpdPOEti15pzxy+FMXLfbIkgdXAdN9i3U
hYqTaBhyj7On4SIIOYInhk5ZGDxQkKQ1eAkOHbJWN/2ZhV55r1QeW2QQ/Gr6
uHN+NtqKYj1/2iYH+TanqWTLHAy7nDqk5dcAmmf2ESM9ORjn5ztfL/saHPeo
bjaI+Q2lW9wOcISN4KK7rcJMJxc/sBPDB+qbYHhWfDT0ai7qVyTNdiivw2Bv
kl2gdx4GeBV09Wqagepf8JL/KQ+PVUaut1zWAjMt2kfiy/nYYeJHldm1Qvj4
9wIXTj6aScq/5WIbXOdxZJtV+bj7/rkn7b/chBDhmdq/jhWg3KT1OSvrFrxl
tgmfrS7EV0vPHWmR3YaLzw1MaroK0Uqnr+mPgTvQnqnOWBtZhGc4rI2stxTc
9A9TDTOLcTzNcNWuonZYsjTYgHe1GKUzFnfMWHehlF30Qup5CqM+BzbZV9+F
Wd6x85s+nEKjH2cSRh0VcDu2HxJLCNxna+ojoxQQF1CfwCklsGKwaYKtUICZ
x0nJu3ICVYRnSW6HArLNbBfFVBEY/D5JGfRQAVxlzkBYLYHhzY/2L1IqoM/Z
IXbfLQITMTUi6o0CNPMFlS4aAgV7nmWu1qNBOBnZMz1GYN+Cw+aEPg2eg+6M
5nECjW4w6JmlNFxpHg23/0CgkG2r/dSYhoTorRybOQLPD2UXZ5rR8M/jyfsr
jUiURW0Sqh1okN3s/KIyJnGS3enKdaIhVHrWTsgm0b47UN3oTIMii1u6zJTE
63Z80yJ3GvIdq0OWWJN4e2pQ4uJBg4t58ulHtiR+Eyd6SHbQMKbn3VG4kUTc
qzvK9KbBZ2R6vc5mEjtuONpqdtMwp+wJureFRO3orh4ejwZ5u5jMcSVxx/LQ
eGovDQevpCi2upNY2P2RaeNPg0Hlro/fgMTu9KJrZwJo+BcPKlMI
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{0, 0},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotRange->{{1, 1000}, {-0.06401608087140535, 0.151202046566118}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.537376175709996*^9, 3.537376230405965*^9, 3.537376289738886*^9, 
   3.537376352436585*^9, 3.537376406663098*^9, 3.537376449208559*^9, 
   3.537376510750739*^9, {3.537376799411533*^9, 3.537376929335315*^9}, 
   3.53737704124594*^9, 3.537377190479991*^9, {3.5373773080028*^9, 
   3.537377338849686*^9}, 3.537377395856676*^9, 3.537377578748949*^9, 
   3.537377661696215*^9, 3.537377758125954*^9, 3.537377794838787*^9, 
   3.537377831343444*^9, 3.537377869262147*^9, 3.537377939359189*^9, 
   3.537378138995749*^9, 3.537378169411084*^9, 3.537378200405181*^9, 
   3.537378233063042*^9, 3.537378347568436*^9, 3.53737901529845*^9, 
   3.537480255135049*^9, 3.53751142227466*^9, 3.537512116539714*^9, 
   3.537512810236677*^9, 3.537736624762759*^9, 3.53817735260454*^9, 
   3.539267395227152*^9, 3.53962954220361*^9, 3.540300082379633*^9, 
   3.551289551242488*^9, 3.55319632419252*^9, 3.553539599794744*^9, 
   3.554812086096374*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQfeLO6QRRhg/2jhzTLgXfsHeIWN7+5NVsVQcYv+dl
Vd/L2SZw/qsV4f0c713g/EmX6uVO3faD81fV1yVEeYfA+bpL17XHT4qE84uO
pk6yro+D83Ot2ndefpUI5z+/tOHd5M4UOP/Qi7lT7X+nwfl6x5rVNy/MhPN/
K+hqC0nnwPn9e1YX/27Pg/Nv9U8MvjalAM6XZdBfpnK+EM7XvOLx7ppyMZw/
w+NshF9RCZy/o9q4xnpVKZy/QEhsas+fMjjfMuNWWrBFBZw/S1Far66vEs6P
qz4mnnevCs6/PDl412XxGjhfQCA2aG52LZz/z8tj8Z0VdXC+v9o8sYf36+H8
LUY79i+Z0QDnzzScdEHYrBHOT0rSurPlAYIf+/h7hUVHE5y/wdnsU5lKM5z/
4qpR2vOzCH6F+4JtQjktCP9xOs9QYG+F8+//WVySsB7Bv3u+VDfapw3O33+F
9WH7NwT/5w62wvyp7XB+6lubSZaGHXD+1mDDdaa3EPy4mdOWvSnvhPNfC+ya
eVWpC85feUNIbuEpBP9A/Z069fRuOH93RMqt+wI9cD6fYKxQ8HoEf7Jk9+0V
Xr1w/p/g8vkGnxH8vblX7Isn9CHCh3nSLMsXCL7QLP+v/+374XwAavV25g==

     "]]}, 
   {RGBColor[0, 1, 0], Thickness[0.003], LineBox[CompressedData["
1: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

     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{0, 31.7},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotRange->{{1, 1000}, {31.704715289867316`, 32.32199955718544}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.537376175709996*^9, 3.537376230405965*^9, 3.537376289738886*^9, 
   3.537376352436585*^9, 3.537376406663098*^9, 3.537376449208559*^9, 
   3.537376510750739*^9, {3.537376799411533*^9, 3.537376929335315*^9}, 
   3.53737704124594*^9, 3.537377190479991*^9, {3.5373773080028*^9, 
   3.537377338849686*^9}, 3.537377395856676*^9, 3.537377578748949*^9, 
   3.537377661696215*^9, 3.537377758125954*^9, 3.537377794838787*^9, 
   3.537377831343444*^9, 3.537377869262147*^9, 3.537377939359189*^9, 
   3.537378138995749*^9, 3.537378169411084*^9, 3.537378200405181*^9, 
   3.537378233063042*^9, 3.537378347568436*^9, 3.53737901529845*^9, 
   3.537480255135049*^9, 3.53751142227466*^9, 3.537512116539714*^9, 
   3.537512810236677*^9, 3.537736624762759*^9, 3.53817735260454*^9, 
   3.539267395227152*^9, 3.53962954220361*^9, 3.540300082379633*^9, 
   3.551289551242488*^9, 3.55319632419252*^9, 3.553539599794744*^9, 
   3.554812086406204*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJxN0ksowwEcB/BtySyPViQlB/62YkwhcvAq5RFlm4OiFXnkOctBHhdSMmsa
TZI4eG7Yw3sPz82bLY8xDrODiMbB60Az3L6HX98+l9/h9/2Flgq45RQSiRT/
N/8pkMXkTh4y0tK9Bs54ttS0t4JHC7opYIw3BX6SpAqnwSn6l1Y5+FNT2q4A
B427h2fAwVmqiVlw90OXaQ5cxGHYlWC/OuudChzVqSRrwKy8Ie95sMSRQ1/A
fYJw1iKYpqbHLYHDnAzOMnj01V21AnYpnIJV8A6fItaC602RMh24g9G2qAd/
5feZDWAeW29dAwdSfd/WwTqp0LUBNt4PUbbACYnPIdtgURKXaQRnJzoyTOBa
dyx/B9zQPFi2C7a/MNv3wNGB+6J9sIPK7j0A/7wb5Id4n36+5ghcwY6wHIPV
LZ43J2C+dPrWjP811vhtAQsrOR6nYCuzkDgDj6iJ5HNwlpOccQEuJmglVjDH
h6i5BCs2yA1X2F89rccG9rcQ/dfg6h4x8wa8mfmhRf8CU5l4Jw==
     "]]}, 
   {RGBColor[0, 1, 0], Thickness[0.003], LineBox[CompressedData["
1:eJwd0n0sFHAYB/BzJYxKkpTY6rqbCKktMwtttkg1b6uW3JakVTiSmVJ5m4ZD
us5bKCMvl3B5d0TeCVdyQualFy/tqHlpxrie7/3x7Nlnzx/P8/x+z0FvntsN
JoPBsKFA5gktzhX0sO0j2h8aeAzb2buoGvnDW64fUNoyRCsJjmNI9sNLHnNS
OMNmdR8cqpvnXkhuE9/Vh38n2QUVkZ30OHtgW8nCg2JyfvAuHfif2DtSRM51
0toJ6+crst6QF9LaNWEDx7LXJWTmRLU6HDfzpO0tOSzHVxX2dGWPl5JTh9hM
eIe/7GcZ2UfNUOFOPhpTqiImi8oH1mHT85ma78hCt+ZVOGnyrHYFWce/cQX2
5B02rSQbMsIWYY1y7RNV5NoEvz/wITnbtZq8lGwkh18uKm7VYF+tyVl4QyTn
1ZJ1o0Z+we1cJr+OvDcw5Tsc0GYirCcnXoycgKPY4ZUScmeVxRi85vKsv4Gc
nDg/DLubS2SN5DqvHzJYT2370nuypCBtAK5PCdpoImvPRkvh1ulM5gfyVO7j
Xvik1bxhCzl70Lobjrd247TCCtMO2Mlq0qGNnJk31gL7KY5z2zFvc1YTHBiW
7tNBbh583gCPL3AiO8mPvJ3rYDO9rvgustesdTU8qWae3E0unLaqgDeXG4p7
yPrc5TLl+wi44o+4l77ZEtjX/Ii0l+xW/aIYLr+/bbQP+6TFFsDclKKJfvKx
vxF5cGhe8LoU87dYv4KDbrpu/Uxe45tkwzLOZdYAuerTSAacU8469YX8jZ+e
CjvKVRwGyeP2yQL4Kkvjmgz9Axyewq5arDtDuCeBZSIsalIJ/Eq2tDSPV/5f
gEbCMNndcS4W3i1lCUZQvzQWDRtvbtTAtVye0rZmw2PwaV+m0rcT+JxR8pUQ
4yg4ot7XGZ4Jl0TCwjn7QDgk5oLSIn0DIazOn4qAm8+s1MGZgntK/we/WsJp

     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{10.895800000000001`, 31.845024},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotRange->{{10.8958, 10.8962}, {31.845024136029316`, 31.845033376890115`}},
  
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.537376175709996*^9, 3.537376230405965*^9, 3.537376289738886*^9, 
   3.537376352436585*^9, 3.537376406663098*^9, 3.537376449208559*^9, 
   3.537376510750739*^9, {3.537376799411533*^9, 3.537376929335315*^9}, 
   3.53737704124594*^9, 3.537377190479991*^9, {3.5373773080028*^9, 
   3.537377338849686*^9}, 3.537377395856676*^9, 3.537377578748949*^9, 
   3.537377661696215*^9, 3.537377758125954*^9, 3.537377794838787*^9, 
   3.537377831343444*^9, 3.537377869262147*^9, 3.537377939359189*^9, 
   3.537378138995749*^9, 3.537378169411084*^9, 3.537378200405181*^9, 
   3.537378233063042*^9, 3.537378347568436*^9, 3.53737901529845*^9, 
   3.537480255135049*^9, 3.53751142227466*^9, 3.537512116539714*^9, 
   3.537512810236677*^9, 3.537736624762759*^9, 3.53817735260454*^9, 
   3.539267395227152*^9, 3.53962954220361*^9, 3.540300082379633*^9, 
   3.551289551242488*^9, 3.55319632419252*^9, 3.553539599794744*^9, 
   3.55481208655022*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQfeLO6QRRhg/28Xubb/3XCXSIWN7+5NVsVQcYv+dl
Vd/L2SZw/qsV4f0c713g/EmX6uVO3faD81fV1yVEeYfA+bpL17XHT4qE84uO
pk6yro+D83Ot2ndefpUI5z+/tOHd5M4UOP/Qi7lT7X+nwfl6x5rVNy/MhPN/
K+hqC0nnwPn9e1YX/27Pg/Nv9U8MvjalAM6XZdBfpnK+EM7XvOLx7ppyMZw/
w+NshF9RCZy/o9q4xnpVKZy/QEhsas+fMjjfMuNWWrBFBZw/S1Far66vEs6P
qz4mnnevCs6/PDl412XxGjhfQCA2aG52LZz/z8tj8Z0VdXC+v9o8sYf36+H8
LUY79i+Z0QDnzzScdEHYrBHOT0rSurPlAYIf+/h7hUVHE5y/wdnsU5lKM5z/
4qpR2vOzCH6F+4JtQjktCP9xOs9QYG+F8+//WVySsB7Bv3u+VDfapw3O33+F
9WH7NwT/5w62wvyp7XB+6lubSZaGHXD+1mDDdaa3EPy4mdOWvSnvhPNfC+ya
eVWpC85feUNIbuEpBP9A/Z069fRuOH93RMqt+wI9cD6fYKxQ8HoEf7Jk9+0V
Xr1w/p/g8vkGnxH8vblX7Isn9CHCh3nSLMsXCL7QLP+v/+374XwAT0GjLg==

     "]]}, 
   {RGBColor[0, 1, 0], Thickness[0.003], LineBox[CompressedData["
1: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
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{0, 68.},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotRange->{{1, 1000}, {68.01818415350293, 69.6066025143702}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.537376175709996*^9, 3.537376230405965*^9, 3.537376289738886*^9, 
   3.537376352436585*^9, 3.537376406663098*^9, 3.537376449208559*^9, 
   3.537376510750739*^9, {3.537376799411533*^9, 3.537376929335315*^9}, 
   3.53737704124594*^9, 3.537377190479991*^9, {3.5373773080028*^9, 
   3.537377338849686*^9}, 3.537377395856676*^9, 3.537377578748949*^9, 
   3.537377661696215*^9, 3.537377758125954*^9, 3.537377794838787*^9, 
   3.537377831343444*^9, 3.537377869262147*^9, 3.537377939359189*^9, 
   3.537378138995749*^9, 3.537378169411084*^9, 3.537378200405181*^9, 
   3.537378233063042*^9, 3.537378347568436*^9, 3.53737901529845*^9, 
   3.537480255135049*^9, 3.53751142227466*^9, 3.537512116539714*^9, 
   3.537512810236677*^9, 3.537736624762759*^9, 3.53817735260454*^9, 
   3.539267395227152*^9, 3.53962954220361*^9, 3.540300082379633*^9, 
   3.551289551242488*^9, 3.55319632419252*^9, 3.553539599794744*^9, 
   3.554812087028632*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQfeLO6QRRhg/2NUqJrI18Ig4Ry9ufvJqt6gDj97ys
6ns52wTOf7UivJ/jvQucP+lSvdyp235w/qr6uoQo7xA4X3fpuvb4SZFwftHR
1EnW9XFwfq5V+87LrxLh/OeXNryb3JkC5x96MXeq/e80OF/vWLP65oWZcP5v
BV1tIekcOL9/z+ri3+15cP6t/onB16YUwPmyDPrLVM4XwvmaVzzeXVMuhvNn
eJyN8CsqgfN3VBvXWK8qhfMXCIlN7flTBudbZtxKC7aogPNnKUrr1fVVwvlx
1cfE8+5VwfmXJwfvuixeA+cLCMQGzc2uhfP/eXksvrOiDs73V5sn9vB+PZy/
xWjH/iUzGuD8mYaTLgibNcL5SUlad7Y8QPBjH3+vsOhogvM3OJt9KlNphvNf
XDVKe34Wwa9wX7BNKKcF4T9O5xkK7K1w/v0/i0sS1iP4d8+X6kb7tMH5+6+w
Pmz/huD/3MFWmD+1Hc5PfWszydKwA87fGmy4zvQWgh83c9qyN+WdcP5rgV0z
ryp1wfkrbwjJLTyF4B+ov1Onnt4N5++OSLl1X6AHzucTjBUKXo/gT5bsvr3C
qxfO/xNcPt/gM4K/N/eKffGEPkT4ME+aZfkCwRea5f/1v30/nA8AAzorVg==

     "]]}, 
   {RGBColor[0, 1, 0], Thickness[0.003], LineBox[CompressedData["
1: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
oUHkIQ==
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{0, 4.91},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotRange->{{1, 1000}, {4.912310850047649, 5.137654248774794}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.537376175709996*^9, 3.537376230405965*^9, 3.537376289738886*^9, 
   3.537376352436585*^9, 3.537376406663098*^9, 3.537376449208559*^9, 
   3.537376510750739*^9, {3.537376799411533*^9, 3.537376929335315*^9}, 
   3.53737704124594*^9, 3.537377190479991*^9, {3.5373773080028*^9, 
   3.537377338849686*^9}, 3.537377395856676*^9, 3.537377578748949*^9, 
   3.537377661696215*^9, 3.537377758125954*^9, 3.537377794838787*^9, 
   3.537377831343444*^9, 3.537377869262147*^9, 3.537377939359189*^9, 
   3.537378138995749*^9, 3.537378169411084*^9, 3.537378200405181*^9, 
   3.537378233063042*^9, 3.537378347568436*^9, 3.53737901529845*^9, 
   3.537480255135049*^9, 3.53751142227466*^9, 3.537512116539714*^9, 
   3.537512810236677*^9, 3.537736624762759*^9, 3.53817735260454*^9, 
   3.539267395227152*^9, 3.53962954220361*^9, 3.540300082379633*^9, 
   3.551289551242488*^9, 3.55319632419252*^9, 3.553539599794744*^9, 
   3.554812087850126*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"H2O", " ", "gas", " ", "EOS"}], " ", "*)"}]], "Input",
 CellChangeTimes->{{3.537375889431643*^9, 3.537375890937762*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"CIG", "[", 
   RowBox[{"P_", ",", "T_"}], "]"}], ":=", 
  RowBox[{"P", "/", 
   RowBox[{"(", 
    RowBox[{"R", "*", "T"}], ")"}]}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"f", "[", "T_", "]"}], ":=", 
   RowBox[{"1*^-6", "*", 
    RowBox[{"(", 
     RowBox[{"33", "-", 
      RowBox[{"15.2", "*", 
       RowBox[{"Exp", "[", 
        RowBox[{"1300.7", "/", "T"}], "]"}]}]}], ")"}]}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"Ideal", " ", "gas"}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"CKay", "[", 
    RowBox[{"P_", ",", "T_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "0.5"}], "+", 
      RowBox[{"Sqrt", "[", 
       RowBox[{"0.25", "+", 
        RowBox[{
         RowBox[{"f", "[", "T", "]"}], "*", 
         RowBox[{"P", "/", 
          RowBox[{"(", 
           RowBox[{"R", "*", "T"}], ")"}]}]}]}], "]"}]}], ")"}], "/", 
    RowBox[{"f", "[", "T", "]"}]}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"Kaye", " ", "&"}], " ", "Laby", " ", "Online"}], ",", " ", 
    "2005"}], " ", "*)"}]}], "\n", 
 RowBox[{"LineLegendFromTooltips", "[", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"CIG", "[", 
         RowBox[{"100000", ",", "T"}], "]"}], ",", 
        "\"\<Ideal gas @ 1 bar\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"CIG", "[", 
         RowBox[{"500000", ",", "T"}], "]"}], ",", 
        "\"\<Ideal gas @ 5 bar\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"CKay", "[", 
         RowBox[{"100000", ",", "T"}], "]"}], ",", 
        "\"\<Kaye & Laby Online, 2005 @ 1 bar\>\""}], "]"}], ",", 
      RowBox[{"Tooltip", "[", 
       RowBox[{
        RowBox[{"CKay", "[", 
         RowBox[{"500000", ",", "T"}], "]"}], ",", 
        "\"\<Kaye & Laby Online, 2005 @ 5 bar\>\""}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"T", ",", "200", ",", "1000"}], "}"}], ",", "\n", 
    RowBox[{"PlotLabel", "->", 
     RowBox[{"Style", "[", 
      RowBox[{
      "\"\<\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\[Null]\[Null]O \
Gas Concentration\>\"", ",", 
       RowBox[{"FontSize", "->", "34"}]}], "]"}]}], ",", "\n", 
    RowBox[{"FrameLabel", "->", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Temperature / K\>\"", ",", 
       "\"\<Concentration / mol \\!\\(\\*SuperscriptBox[\\(m\\), \\(-3\\)]\\)\
\>\""}], "}"}]}]}], "]"}], "]"}]}], "Code",
 CellChangeTimes->{3.537377614287376*^9, 3.537377835778113*^9}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {}, 
     TagBox[
      TooltipBox[{
        RGBColor[0, 0, 1], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVkH040wkcwEdXulPXDxuzltci7Qi3ckj79nWoS+X21HW96AXrzOUyphcv
a/OyMPv9opfRC4k6b/Nos4qUS1HUIZKYXlRX57qu0uEZ4bo/Ps/n+fz7sQ/b
wxcY02i0NZ/43yv9/BxoNCH4e6vdLxzgIrYGze0zEYKurc44II6Lyzby6TVz
hCC9MdHXv5uLHqKfZkTaCoGxZBbF3MFF1rmcv9qXCyFktPJUQyAXX896qSlM
FkLsbSdmC52LZD/pzxsXgnmuVWu19mvsTnwaIRmJApeuKBHroyeKU9cYr7CK
BlbgqUBVngfeCzd7N2ixBzzFm3xU+92xTyHxD06NAav8Z143ptxw/Xeb6pty
RDDaqVyqcHBF1/jtoZ5kLNQ1/N3leZyDVFor53phHLSY/8grYSzCmuSWNn6l
GMh13PKmxoX4zfMP+T3n46HMRVsaVOKMAa6puZKLe+HtUUtdWqYTXnjup2XW
7IOv1mWbCvIW4JPU7FJd5X44KF/9pO3afFTNhDviugPALZpauPYPR6wy2Fg6
X0yAkZhSp24XR1zbHkaONydCTWJLy8loB6wmffSdnUnQq6pWhzbao6jOL+T0
3WRou9RgJHW1x/rWc0OZegnYDmZVVx23w11B3leFDw+CaNGX1sPmdrjmfl7f
kngpWO69ZhrMssXbhsdweVwKhy8PtQ872mBct48v94AMohj53imr52GY46rg
FUYp8Pg3ccyCX9goc45+HyRNAfc3tdqh8rkos9PTOj6mAH1DfW7SMAubFeNO
g6mp8EzwSKf3YaGP2mNg3CgNli02eXfkmDV+AJamMCsNBtQJ9yNeM1HZEvzm
JpEOsrEfGmuCmbhx5rH658p0OBLE5pxvsEJBLXX2CEMOunsj4npXKyy2O8P2
OyqHyeaQV7oKS2xMGqNFEoegv6J4XpmHJTqtNvnoqDoE3OXzel9qGFjb7qLo
pWeARZYzv2gFA3OaJ93tTmeAwDlhw/s7dMyLG4zawc6EbazIl8owOsoYNnMc
8jPhHmtXOnfKAqtcpreK7bJAv4+vKVJZoOm/RtbXC7LgYk8KT+1jgZXuFyQF
zgrYznxIb+w1R7ew8rUTagWwszrSeRJzfLqqVrOBkw3quZV7hznm2FOc4MrT
ZgNn6636V91mOKH9fpmDpxK6bgXMiMgww89qY3XyKiUcmia7OrjcDEPcAwOS
lpDQofCdfPSewLuhi4U/a0l4MDDC2VpJIDM88sppHQk5+/55tKiCwPDIotkd
l0g420FdMZQROBZroeHWk3Bic7lB9SuBCzNGxyZukhD/rbf0wVkC0zQN2Ycf
kFD25ETVlnwC/UxCqnUGEnZ76dfJ5QRmzMo0/nOcBMOotWBzOoH3zRrXsyZJ
yB3Sl7ilEbibzTVIjCmYiG0q7pEReMKDiStNKYjx9SzgJBM4suVpVx+bgmZW
XrI+jkDcae0025aCsfKupZpYApW7+Pt59hTkEtNYmSIC54tusksWUGCjt97m
tYdAvrxUEO32qcWL+49FEVigGLhU6E5BcInZi2ghgYOHWV90elLgMXiGERhJ
oPRkdtVSLwo+lxYPjwg+/TrTRBN6U1DCm17SHkGg1flJ/klfCvDtu8TScALD
KrzO/e5HwYs7ocmyMAKrqmNGp3gUTNH9SzfvJPA/sfkqzw==
         "]]}, 
       "\"Ideal gas @ 1 bar\"", TooltipStyle -> "TextStyling"], 
      Annotation[#, "Ideal gas @ 1 bar", "Tooltip"]& ], 
     TagBox[
      TooltipBox[{
        RGBColor[0, 1, 0], 
        Thickness[0.003], 
        LineBox[CompressedData["
1:eJwVx3881HccwPFzW2FYNRQmPxtrprDP+X3u7U2RMC5N1y86Kdcyv0W4uPP7
3PcrTaSExHoUxumUoh56XD2ilkjRacU81qayVpQfV9faH6/H8/Gy5Mdxo5kM
BiPoY//rz2ZbMRgCOFIwkrmykofY5/elUlMAfJHAZ3kpDz3DuQbnlwggknQv
MyjkoWPC3sUx5gLYhv0yszQemjQcftbvJYBVrBFx3BYePtd9KqvJEgB10GGn
ypiH1CPKh6MSwNHU6ncnarfg/Yyx3cK3+2C64Lqe5eVwTBYHMb1XxEJduI9R
t3ozDkQt+3dSPw44Ay+1uo+GoVIi9AkUx0NLzRRTGbEJwwJ4XdcPJ4Cy3ohZ
weKifUrEDicqEYZmkxRP2KFI5/bZ9dQkwRWdil/yg0LwfFbvHW5TMiRG9Rgc
mA5G14npY8ONKWAw86SMJw3CdfbiMmFHKti5b//jT7tAbJtgtxudPwCz/Lhg
oToAn4hLzsib0sA8xqxC9M8GrNCCW8mX0kFUxGmve+yPLfNmy207DgKRcuMD
ZvwwuJ9PqW5kQK3So4up7YetlPvo4GAm3O02NX7jtB4TLrFDqm9nQU/DWuZY
2jrs6mt4XTQqhL31zdu3dvniHj+3bsHIIdCTh0bIVvhi0FClkpWSDXe0wwvi
4n3w5vxjuKjKhq3ts3XpDxCT7rt7kPQc4Dd/iHL8HpFvvSHQW0MEkjn/PcMK
b8yxjX3lly0CLxLWOhzw8S1GGXfficBeLh+NfQh4Q6KymRSLoTnibGjvbkD3
ZsdxlUYu6Ki0XswtcHAaTGQ1xbmwlXdM28uGg9LewCnF0jyw7HzxejzCC8O1
yrsmpHmQxpuQ07+yMbqTPnXEMB+s80mZ3bwn1lvUmrJ/zofuuVW76n/wxGuZ
C4yYpQVw76hutP4VD7TZqPnOuqIAeqS76VpzD+zsXy15aFAIlfvbGrXL3PHw
DbWDRXUhcNpGzk6p3bAyaXJfpGkRvLVgRjpmuGGOodkSq2NFkF93tVHjgyu2
rF7Ul2xRDAOGf5kVZ7mizoyGcc/JYjgtjaK3aLtik0Ob8KStBFLNPq9yKnXB
Nfyzwe+bJVDf5Lu3f6ULjm3olG22K4FKq/Ch1x3OOFx/0J7TXgLO382f27XR
Gd+3h3paOUnhptuwZtYzFn7amSjPb5GCwHf829MUC0Mc1q/LZFGg+Kkva/Ma
Ft7esVbwYzsFG6tmnJOGCRpFxVyullOQYriv/M19glExdXp3L1BwS5H0TdoQ
wYVEfRnposD7lcFc1gDBrwtnF94rKCgr97MouUUwV3a1pPQBBUcqvKtkVwmy
NUNa5fMU+C0anLA9Q7BQt4j5t4qC2ZRIdWsjwaFl18JM1BQ4v/wi2L2B4H5T
Mi9k0tDV31ESdIpglaMR+uvQENh3JS/1BMG328buKU1pOGCp3j5YShB3Gdvo
mdNwsbxQsZMmKN3DTeNY0nBhSBz5XEpwVYLC9PRXNDwNrWUtkhDk5p+Jjl1D
g02oxyaPPIInJeMXahxoiNBbvqNXTHCy1OSzQScahNbax8NFBLOPl7Q4u9Cg
E6nbnnyI4O3a6wyBGw1SerH0EyHBFY1q7nEPGvTtpqrKMgnyz7k0/Mam4Xcv
+SPLDIItrfGzHzg0cJSbuG3pBP8DJxUsxw==
         "]]}, "\"Ideal gas @ 5 bar\"", 
       TooltipStyle -> "TextStyling"], 
      Annotation[#, "Ideal gas @ 5 bar", "Tooltip"]& ]}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], AxesOrigin -> {200., 0}, 
    BaseStyle -> {FontFamily -> "Helvetica", FontSize -> 34}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"Temperature / K\"", TraditionalForm], 
      FormBox[
      "\"Concentration / mol \\!\\(\\*SuperscriptBox[\\(m\\), \\(-3\\)]\\)\"",
        TraditionalForm]}, FrameStyle -> Directive[
      Thickness[0.003]], ImageSize -> 
    NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}], 
    PlotLabel -> FormBox[
      StyleBox[
      "\"\\!\\(\\*SubscriptBox[\\(H\[Null]\\), \\(2\\)]\\)\[Null]\[Null]O Gas \
Concentration\"", FontSize -> 34, StripOnInput -> False], TraditionalForm], 
    PlotRange -> {{200, 1000}, {0., 4.3970500694611835`*^11}}, 
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
             ImageSize -> {24, 8}], "\"Ideal gas @ 1 bar\""}}, AutoDelete -> 
          False, GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"]}, {
        TagBox[
         GridBox[{{
            GraphicsBox[{
              RGBColor[0, 1, 0], 
              Thickness[0.13], 
              LineBox[{{0, 0}, {1, 0}}]}, AspectRatio -> NCache[
               Rational[1, 3], 0.3333333333333333], ImagePadding -> 0, 
             ImageSize -> {24, 8}], "\"Ideal gas @ 5 bar\""}}, AutoDelete -> 
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
 CellChangeTimes->{{3.537127850774025*^9, 3.537127872647031*^9}, {
   3.537376151391195*^9, 3.537376175806425*^9}, 3.537377397872645*^9, 
   3.537377581009407*^9, 3.537377663628638*^9, 3.537377759969911*^9, 
   3.537377796802243*^9, 3.537377834384678*^9, 3.537377871241418*^9, 
   3.537377941551753*^9, 3.53737814089132*^9, 3.537378171307108*^9, 
   3.537378203005543*^9, 3.53737823508214*^9, 3.537378349677619*^9, 
   3.537379017269453*^9, {3.537480227977598*^9, 3.537480256982351*^9}, 
   3.537511424167278*^9, 3.537512118391179*^9, 3.537512812027541*^9, 
   3.537736594951125*^9, 3.537736626584334*^9, 3.538177319178528*^9, 
   3.538177354446054*^9, 3.539267365127006*^9, 3.539267397159704*^9, 
   3.539629510725187*^9, 3.539629543996596*^9, 3.540300048801542*^9, 
   3.540300084210005*^9, 3.543309218297301*^9, 3.543574060556799*^9, 
   3.551289513946884*^9, 3.551289553044256*^9, 3.553196290400416*^9, 
   3.553196326167943*^9, 3.553539561469594*^9, 3.55353960174639*^9, 
   3.554812050280391*^9, 3.554812087957249*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Even", " ", "though", " ", "Kaye"}], " ", "&"}], " ", "Laby", 
     " ", "Online", " ", "gives", " ", "values", " ", "for", " ", "the", " ", 
     "first", " ", "virial", " ", "coefficients"}], ",", " ", 
    RowBox[{"they", " ", "are", " ", "a", " ", "function", " ", "of", " ", 
     RowBox[{"temperature", ".", "  ", "Therefore"}]}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
      "the", " ", "equation", " ", "cannot", " ", "be", " ", "solved", " ", 
       "for", " ", 
       RowBox[{"temperature", ".", "  ", "Try"}], " ", "to", " ", "create", 
       " ", "a", " ", "virial", " ", "EOS", " ", "for", " ", "H2O", " ", 
       "gas", " ", "based", " ", "on", " ", "Kaye"}], " ", "&"}], " ", "Laby",
      " ", 
     RowBox[{"Online", "."}]}]}], " ", "*)"}], "\n"}]], "Input",
 CellChangeTimes->{{3.53737591227359*^9, 3.537375914594452*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"PKay", "[", 
    RowBox[{"C_", ",", "T_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "+", 
      RowBox[{"1*^-6", "*", 
       RowBox[{"(", 
        RowBox[{"33", "-", 
         RowBox[{"15.2", "*", 
          RowBox[{"Exp", "[", 
           RowBox[{"1300.7", "/", "T"}], "]"}]}]}], ")"}], "*", "C"}]}], 
     ")"}], "*", "T", "*", "C"}]}], " "}], "\n", 
 RowBox[{"Series", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"PKay", "[", 
     RowBox[{"C", ",", "T"}], "]"}], "/", 
    RowBox[{"(", 
     RowBox[{"T", "*", "R"}], ")"}]}], " ", ",", 
   RowBox[{"{", 
    RowBox[{"C", ",", "0", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "0", ",", "4"}], "}"}]}], "]"}]}], "Code"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"1.7588201713616186`*^8", " ", "C"}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"5804.106565493342`", "\[VeryThinSpace]", "-", 
      RowBox[{"2673.40666046966`", " ", 
       SuperscriptBox["\[ExponentialE]", 
        RowBox[{"1300.7`", "/", "T"}]]}]}], ")"}], " ", 
    SuperscriptBox["C", "2"]}], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", "C", "]"}], "6"],
    SeriesData[C, 0, {}, 1, 6, 1],
    Editable->False]}],
  SeriesData[
  C, 0, {1.7588201713616186`*^8, 5804.106565493342 - 2673.40666046966 
    E^(1300.7/$CellContext`T)}, 1, 6, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.537127851015897*^9, 3.537127872768198*^9}, {
   3.537376151614575*^9, 3.537376175930009*^9}, 3.537377397974692*^9, 
   3.537377581394535*^9, 3.537377663720117*^9, 3.537377760145455*^9, 
   3.537377796977382*^9, 3.537377834642129*^9, 3.537377871569926*^9, 
   3.537377941697145*^9, 3.537378140991609*^9, 3.53737817139433*^9, 
   3.537378203184884*^9, 3.537378235172777*^9, 3.537378349776594*^9, 
   3.537379017371026*^9, {3.537480228273421*^9, 3.537480257096277*^9}, 
   3.537511424425443*^9, 3.537512118489337*^9, 3.537512812104664*^9, 
   3.537736595312541*^9, 3.537736626732095*^9, 3.538177319611782*^9, 
   3.538177354610365*^9, 3.539267365640577*^9, 3.539267397232959*^9, 
   3.539629511116059*^9, 3.539629544082891*^9, 3.540300049365689*^9, 
   3.540300084337695*^9, 3.543309218670098*^9, 3.543574061062947*^9, 
   3.551289514295244*^9, 3.55128955325296*^9, 3.553196290925704*^9, 
   3.553196326286912*^9, 3.553539561993498*^9, 3.553539601863522*^9, 
   3.554812050828381*^9, 3.554812088050074*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"(", 
  RowBox[{"999.9734", "-", 
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"T", "-", 
       RowBox[{"277.13152", "K"}]}], ")"}], "^", "2"}], 
    RowBox[{"(", 
     RowBox[{"T", "+", 
      RowBox[{"123.03534", "K"}]}], ")"}], 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"T", "-", 
       RowBox[{"240.86147", "K"}]}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{"609.6448", 
       RowBox[{"(", 
        RowBox[{"T", "-", 
         RowBox[{"190.02667", "K"}]}], ")"}], 
       RowBox[{"(", 
        RowBox[{"T", "-", 
         RowBox[{"242.90545", "K"}]}], ")"}], 
       RowBox[{"K", "^", "2"}]}], ")"}]}]}]}], ")"}], "\n", 
 RowBox[{"denom", " ", ":=", " ", 
  RowBox[{"Expand", "[", 
   RowBox[{"(", 
    RowBox[{"609.6448", 
     RowBox[{"(", 
      RowBox[{"T", "-", 
       RowBox[{"190.02667", "K"}]}], ")"}], 
     RowBox[{"(", 
      RowBox[{"T", "-", 
       RowBox[{"242.90545", "K"}]}], ")"}], 
     RowBox[{"K", "^", "2"}]}], ")"}], "]"}]}], "\n", 
 RowBox[{"numer", " ", ":=", " ", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"999.9734", "denom"}], "-", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{"T", "-", 
        RowBox[{"277.13152", "*", "K"}]}], ")"}], "^", "2"}], "*", 
     RowBox[{"(", 
      RowBox[{"T", "+", 
       RowBox[{"123.03534", "*", "K"}]}], ")"}], "*", 
     RowBox[{"(", 
      RowBox[{"T", "-", 
       RowBox[{"240.86147", "*", "K"}]}], ")"}]}]}], "]"}]}], "\n", 
 RowBox[{"NumberForm", "[", 
  RowBox[{"numer", ",", "20"}], "]"}], "\n", 
 RowBox[{"NumberForm", "[", 
  RowBox[{"denom", ",", "20"}], "]"}]}], "Code"],

Cell[BoxData[
 RowBox[{"999.9734`", "\[VeryThinSpace]", "-", 
  FractionBox[
   RowBox[{"0.001640299400568987`", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "277.13152`"}], " ", "K"}], "+", "T"}], ")"}], "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", "240.86147`"}], " ", "K"}], "+", "T"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"123.03534`", " ", "K"}], "+", "T"}], ")"}]}], 
   RowBox[{
    SuperscriptBox["K", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", "242.90545`"}], " ", "K"}], "+", "T"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", "190.02667`"}], " ", "K"}], "+", "T"}], 
     ")"}]}]]}]], "Output",
 CellChangeTimes->{{3.537127851284085*^9, 3.537127872837007*^9}, {
   3.537376151710367*^9, 3.537376175949347*^9}, 3.537377398038337*^9, 
   3.537377581466238*^9, 3.537377663773975*^9, 3.537377760197948*^9, 
   3.537377796988906*^9, 3.537377834739408*^9, 3.537377871778343*^9, 
   3.537377941792329*^9, 3.537378141046561*^9, 3.537378171439112*^9, 
   3.537378203235426*^9, 3.537378235219576*^9, 3.537378349833426*^9, 
   3.537379017424899*^9, {3.537480228345726*^9, 3.537480257155929*^9}, 
   3.537511424526891*^9, 3.537512118546198*^9, 3.537512812138155*^9, 
   3.537736595651538*^9, 3.537736626749132*^9, 3.538177319869782*^9, 
   3.538177354755887*^9, 3.539267365664179*^9, 3.53926739727979*^9, 
   3.539629511282348*^9, 3.539629544122977*^9, 3.540300049466779*^9, 
   3.540300084386626*^9, 3.543309218685039*^9, 3.543574061097955*^9, 
   3.551289514472178*^9, 3.551289553309131*^9, 3.55319629111857*^9, 
   3.553196326300114*^9, 3.553539562015346*^9, 3.553539601938541*^9, 
   3.554812051014899*^9, 3.554812088103416*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     InterpretationBox[
      RowBox[{"\<\"3.041553258444835\"\>", "\[Times]", 
       SuperscriptBox["10", "\<\"10\"\>"]}],
      3.041553258444835*^10,
      AutoDelete->True], ")"}], " ", 
    SuperscriptBox["K", 
     InterpretationBox["\<\"4\"\>",
      4,
      Editable->False]]}], "-", 
   RowBox[{
    RowBox[{"(", 
     InterpretationBox[
      RowBox[{"\<\"2.713038198341486\"\>", "\[Times]", 
       SuperscriptBox["10", "\<\"8\"\>"]}],
      2.7130381983414865`*^8,
      AutoDelete->True], ")"}], " ", 
    SuperscriptBox["K", 
     InterpretationBox["\<\"3\"\>",
      3,
      Editable->False]], " ", "T"}], "+", 
   RowBox[{
    InterpretationBox["\<\"497154.5079199243\"\>",
     497154.5079199242,
     AutoDelete->True], " ", 
    SuperscriptBox["K", 
     InterpretationBox["\<\"2\"\>",
      2,
      Editable->False]], " ", 
    SuperscriptBox["T", 
     InterpretationBox["\<\"2\"\>",
      2,
      Editable->False]]}], "+", 
   RowBox[{
    InterpretationBox["\<\"672.0891700000001\"\>",
     672.0891700000001,
     AutoDelete->True], " ", "K", " ", 
    SuperscriptBox["T", 
     InterpretationBox["\<\"3\"\>",
      3,
      Editable->False]]}], "-", 
   SuperscriptBox["T", 
    InterpretationBox["\<\"4\"\>",
     4,
     Editable->False]]}],
  NumberForm[#, 20]& ]], "Output",
 CellChangeTimes->{{3.537127851284085*^9, 3.537127872837007*^9}, {
   3.537376151710367*^9, 3.537376175949347*^9}, 3.537377398038337*^9, 
   3.537377581466238*^9, 3.537377663773975*^9, 3.537377760197948*^9, 
   3.537377796988906*^9, 3.537377834739408*^9, 3.537377871778343*^9, 
   3.537377941792329*^9, 3.537378141046561*^9, 3.537378171439112*^9, 
   3.537378203235426*^9, 3.537378235219576*^9, 3.537378349833426*^9, 
   3.537379017424899*^9, {3.537480228345726*^9, 3.537480257155929*^9}, 
   3.537511424526891*^9, 3.537512118546198*^9, 3.537512812138155*^9, 
   3.537736595651538*^9, 3.537736626749132*^9, 3.538177319869782*^9, 
   3.538177354755887*^9, 3.539267365664179*^9, 3.53926739727979*^9, 
   3.539629511282348*^9, 3.539629544122977*^9, 3.540300049466779*^9, 
   3.540300084386626*^9, 3.543309218685039*^9, 3.543574061097955*^9, 
   3.551289514472178*^9, 3.551289553309131*^9, 3.55319629111857*^9, 
   3.553196326300114*^9, 3.553539562015346*^9, 3.553539601938541*^9, 
   3.554812051014899*^9, 3.554812088106277*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     InterpretationBox[
      RowBox[{"\<\"2.814029790679679\"\>", "\[Times]", 
       SuperscriptBox["10", "\<\"7\"\>"]}],
      2.814029790679679*^7,
      AutoDelete->True], ")"}], " ", 
    SuperscriptBox["K", 
     InterpretationBox["\<\"4\"\>",
      4,
      Editable->False]]}], "-", 
   RowBox[{
    InterpretationBox["\<\"263934.815710976\"\>",
     263934.815710976,
     AutoDelete->True], " ", 
    SuperscriptBox["K", 
     InterpretationBox["\<\"3\"\>",
      3,
      Editable->False]], " ", "T"}], "+", 
   RowBox[{
    InterpretationBox["\<\"609.6448\"\>",
     609.6448,
     AutoDelete->True], " ", 
    SuperscriptBox["K", 
     InterpretationBox["\<\"2\"\>",
      2,
      Editable->False]], " ", 
    SuperscriptBox["T", 
     InterpretationBox["\<\"2\"\>",
      2,
      Editable->False]]}]}],
  NumberForm[#, 20]& ]], "Output",
 CellChangeTimes->{{3.537127851284085*^9, 3.537127872837007*^9}, {
   3.537376151710367*^9, 3.537376175949347*^9}, 3.537377398038337*^9, 
   3.537377581466238*^9, 3.537377663773975*^9, 3.537377760197948*^9, 
   3.537377796988906*^9, 3.537377834739408*^9, 3.537377871778343*^9, 
   3.537377941792329*^9, 3.537378141046561*^9, 3.537378171439112*^9, 
   3.537378203235426*^9, 3.537378235219576*^9, 3.537378349833426*^9, 
   3.537379017424899*^9, {3.537480228345726*^9, 3.537480257155929*^9}, 
   3.537511424526891*^9, 3.537512118546198*^9, 3.537512812138155*^9, 
   3.537736595651538*^9, 3.537736626749132*^9, 3.538177319869782*^9, 
   3.538177354755887*^9, 3.539267365664179*^9, 3.53926739727979*^9, 
   3.539629511282348*^9, 3.539629544122977*^9, 3.540300049466779*^9, 
   3.540300084386626*^9, 3.543309218685039*^9, 3.543574061097955*^9, 
   3.551289514472178*^9, 3.551289553309131*^9, 3.55319629111857*^9, 
   3.553196326300114*^9, 3.553539562015346*^9, 3.553539601938541*^9, 
   3.554812051014899*^9, 3.554812088108646*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"TcH2O", ":=", "647.14"}], " ", ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"Critical", " ", "temperature", " ", "of", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], "O", " ", "from", " ", 
    RowBox[{
    "Modelica", ".", "Media", ".", "IdealGases", ".", "Common", ".", 
     "FluidData"}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"pcH2O", ":=", "220.64*^5"}], ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"Critical", " ", "pressure", " ", "of", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], "O", " ", "from", " ", 
    RowBox[{
    "Modelica", ".", "Media", ".", "IdealGases", ".", "Common", ".", 
     "FluidData"}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"omega", "=", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"Log10", "[", 
      RowBox[{
       RowBox[{"psat", "[", 
        RowBox[{"0.7", "*", "TcH2O"}], "]"}], "/", "pcH2O"}], "]"}]}], "-", 
    "1"}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "Acentric", " ", "factor", " ", "via", " ", "Gibbs", " ", "function", " ", 
    "of", " ", "formation"}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"omegaModDirect", "=", "0.344"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"Acentric", " ", "factor", " ", "from", " ", 
    RowBox[{
    "Modelica", ".", "Media", ".", "IdealGases", ".", "Common", ".", 
     "FluidData"}]}], " ", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"omegaSpr", "=", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"Log10", "[", 
      RowBox[{
       RowBox[{"psatSpr", "[", 
        RowBox[{"0.7", "*", "TcH2O"}], "]"}], "/", "pcH2O"}], "]"}]}], "-", 
    "1"}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"Acentric", " ", "factor", " ", "based", " ", "on", " ", 
    RowBox[{"Eq", ".", " ", "15"}], " ", "in", " ", 
    RowBox[{"(", 
     RowBox[{"Springer", " ", "et", " ", 
      RowBox[{"al", ".", " ", "1991"}]}], ")"}]}], " ", "*)"}]}], "\n", 
 RowBox[{"omegaMod", "=", 
  RowBox[{
   RowBox[{"-", 
    RowBox[{"Log10", "[", 
     RowBox[{
      RowBox[{"psatMod", "[", 
       RowBox[{"0.7", "*", "TcH2O"}], "]"}], "/", "pcH2O"}], "]"}]}], "-", 
   "1", " ", 
   RowBox[{"(*", " ", 
    RowBox[{"Acentric", " ", "factor", " ", "based", " ", "on", " ", 
     RowBox[{"Modelica", ".", "Media", ".", "Air", ".", "MoistAir"}]}], " ", 
    "*)"}]}]}]}], "Code"],

Cell[BoxData["51541.47370744081027316716634051922`21.028962290912794"], \
"Output",
 CellChangeTimes->{{3.537127851352628*^9, 3.53712787290133*^9}, {
   3.537376152004069*^9, 3.537376175968568*^9}, 3.537377398108646*^9, 
   3.537377581535862*^9, 3.537377663867619*^9, 3.537377760253275*^9, 
   3.537377797048294*^9, 3.537377834832917*^9, 3.537377872088257*^9, 
   3.537377942055394*^9, 3.537378141101436*^9, 3.537378171489437*^9, 
   3.537378203258686*^9, 3.537378235268199*^9, 3.537378349895689*^9, 
   3.537379017449084*^9, {3.537480228500298*^9, 3.537480257182337*^9}, 
   3.537511424635063*^9, 3.537512118617616*^9, 3.537512812160199*^9, 
   3.537736595745635*^9, 3.537736626771984*^9, 3.538177319990183*^9, 
   3.538177354889117*^9, 3.539267365741886*^9, 3.539267397325087*^9, 
   3.539629511365077*^9, 3.53962954425203*^9, 3.540300049525369*^9, 
   3.540300084463565*^9, 3.54330921882766*^9, 3.543574061173769*^9, 
   3.551289514559902*^9, 3.551289553370907*^9, 3.553196291310641*^9, 
   3.553196326414329*^9, 3.553539562083231*^9, 3.55353960201866*^9, 
   3.554812051107008*^9, 3.554812088164885*^9}],

Cell[BoxData["0.344`"], "Output",
 CellChangeTimes->{{3.537127851352628*^9, 3.53712787290133*^9}, {
   3.537376152004069*^9, 3.537376175968568*^9}, 3.537377398108646*^9, 
   3.537377581535862*^9, 3.537377663867619*^9, 3.537377760253275*^9, 
   3.537377797048294*^9, 3.537377834832917*^9, 3.537377872088257*^9, 
   3.537377942055394*^9, 3.537378141101436*^9, 3.537378171489437*^9, 
   3.537378203258686*^9, 3.537378235268199*^9, 3.537378349895689*^9, 
   3.537379017449084*^9, {3.537480228500298*^9, 3.537480257182337*^9}, 
   3.537511424635063*^9, 3.537512118617616*^9, 3.537512812160199*^9, 
   3.537736595745635*^9, 3.537736626771984*^9, 3.538177319990183*^9, 
   3.538177354889117*^9, 3.539267365741886*^9, 3.539267397325087*^9, 
   3.539629511365077*^9, 3.53962954425203*^9, 3.540300049525369*^9, 
   3.540300084463565*^9, 3.54330921882766*^9, 3.543574061173769*^9, 
   3.551289514559902*^9, 3.551289553370907*^9, 3.553196291310641*^9, 
   3.553196326414329*^9, 3.553539562083231*^9, 3.55353960201866*^9, 
   3.554812051107008*^9, 3.55481208816667*^9}],

Cell[BoxData["12.216152287770242`"], "Output",
 CellChangeTimes->{{3.537127851352628*^9, 3.53712787290133*^9}, {
   3.537376152004069*^9, 3.537376175968568*^9}, 3.537377398108646*^9, 
   3.537377581535862*^9, 3.537377663867619*^9, 3.537377760253275*^9, 
   3.537377797048294*^9, 3.537377834832917*^9, 3.537377872088257*^9, 
   3.537377942055394*^9, 3.537378141101436*^9, 3.537378171489437*^9, 
   3.537378203258686*^9, 3.537378235268199*^9, 3.537378349895689*^9, 
   3.537379017449084*^9, {3.537480228500298*^9, 3.537480257182337*^9}, 
   3.537511424635063*^9, 3.537512118617616*^9, 3.537512812160199*^9, 
   3.537736595745635*^9, 3.537736626771984*^9, 3.538177319990183*^9, 
   3.538177354889117*^9, 3.539267365741886*^9, 3.539267397325087*^9, 
   3.539629511365077*^9, 3.53962954425203*^9, 3.540300049525369*^9, 
   3.540300084463565*^9, 3.54330921882766*^9, 3.543574061173769*^9, 
   3.551289514559902*^9, 3.551289553370907*^9, 3.553196291310641*^9, 
   3.553196326414329*^9, 3.553539562083231*^9, 3.55353960201866*^9, 
   3.554812051107008*^9, 3.554812088168269*^9}],

Cell[BoxData[
 RowBox[{"-", 
  "315.55588636924811813504481894173`18.815881744791962"}]], "Output",
 CellChangeTimes->{{3.537127851352628*^9, 3.53712787290133*^9}, {
   3.537376152004069*^9, 3.537376175968568*^9}, 3.537377398108646*^9, 
   3.537377581535862*^9, 3.537377663867619*^9, 3.537377760253275*^9, 
   3.537377797048294*^9, 3.537377834832917*^9, 3.537377872088257*^9, 
   3.537377942055394*^9, 3.537378141101436*^9, 3.537378171489437*^9, 
   3.537378203258686*^9, 3.537378235268199*^9, 3.537378349895689*^9, 
   3.537379017449084*^9, {3.537480228500298*^9, 3.537480257182337*^9}, 
   3.537511424635063*^9, 3.537512118617616*^9, 3.537512812160199*^9, 
   3.537736595745635*^9, 3.537736626771984*^9, 3.538177319990183*^9, 
   3.538177354889117*^9, 3.539267365741886*^9, 3.539267397325087*^9, 
   3.539629511365077*^9, 3.53962954425203*^9, 3.540300049525369*^9, 
   3.540300084463565*^9, 3.54330921882766*^9, 3.543574061173769*^9, 
   3.551289514559902*^9, 3.551289553370907*^9, 3.553196291310641*^9, 
   3.553196326414329*^9, 3.553539562083231*^9, 3.55353960201866*^9, 
   3.554812051107008*^9, 3.554812088169885*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Evaluate", " ", 
   RowBox[{"misc", ".", " ", "properties", "."}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"130.57", " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "value", " ", "from", " ", "absolute", " ", "entropy", " ", "for", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", "at", " ", "298.15", 
    "K", " ", "and", " ", "1", " ", "atm", " ", "Moran2004", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", ".", " ", "803"}], ",", " ", 
      RowBox[{
       RowBox[{"Table", " ", "A"}], "-", "25"}]}], ")"}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"s0H2", "[", "298.15", "]"}], "-", 
  RowBox[{"Log", "[", 
   RowBox[{"101.325", "/", "100"}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"130.68", "-", 
   RowBox[{"Log", "[", 
    RowBox[{"101.325", "/", "100"}], "]"}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"value", " ", "from", " ", "entropy", " ", "for", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", "at", " ", "298.15", 
    "K", " ", "and", " ", "1", " ", "bar", " ", 
    RowBox[{"(", 
     RowBox[{"McBride2002", ",", " ", 
      RowBox[{"Appendix", " ", "B"}]}], ")"}]}], " ", "*)"}]}], "\n", 
 RowBox[{"188.72", " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "value", " ", "from", " ", "absolute", " ", "entropy", " ", "for", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "at", " ", "298.15", "K", " ", 
    "and", " ", "1", " ", "atm", " ", "Moran2004", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", ".", " ", "803"}], ",", " ", 
      RowBox[{
       RowBox[{"Table", " ", "A"}], "-", "25"}]}], ")"}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"s0H2O", "[", "298.15", "]"}], "-", 
  RowBox[{"Log", "[", 
   RowBox[{"101.325", "/", "100"}], "]"}]}], "\n", 
 RowBox[{"188.829", "-", 
  RowBox[{"Log", "[", 
   RowBox[{"101.325", "/", "100"}], "]"}]}], "\n", 
 RowBox[{"69.95", " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "value", " ", "from", " ", "absolute", " ", "entropy", " ", "for", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "l", ")"}]}], "]"}], " ", "at", " ", "298.15", "K", " ", 
    "and", " ", "1", " ", "atm", " ", "Moran2004", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", ".", " ", "803"}], ",", " ", 
      RowBox[{
       RowBox[{"Table", " ", "A"}], "-", "25"}]}], ")"}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"s0H2Ol", "[", "298.15", "]"}], "-", 
  RowBox[{"Log", "[", 
   RowBox[{"101.325", "/", "100"}], "]"}]}], "\n", 
 RowBox[{"69.95", "-", 
  RowBox[{"Log", "[", 
   RowBox[{"101.325", "/", "100"}], "]"}]}], "\n", 
 RowBox[{"205.03", " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "value", " ", "from", " ", "absolute", " ", "entropy", " ", "for", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "at", " ", "298.15", "K", " ", 
    "and", " ", "1", " ", "atm", " ", "Moran2004", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", ".", " ", "803"}], ",", " ", 
      RowBox[{
       RowBox[{"Table", " ", "A"}], "-", "25"}]}], ")"}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"s0O2", "[", "298.15", "]"}], "-", 
  RowBox[{"Log", "[", 
   RowBox[{"101.325", "/", "100"}], "]"}]}], "\n", 
 RowBox[{"205.149", "-", 
  RowBox[{"Log", "[", 
   RowBox[{"101.325", "/", "100"}], "]"}]}]}], "Code"],

Cell[BoxData["130.57`"], "Output",
 CellChangeTimes->{{3.537127851380247*^9, 3.537127872985848*^9}, {
   3.537376152106164*^9, 3.537376176055595*^9}, 3.537377398189492*^9, 
   3.537377581649036*^9, 3.537377663936337*^9, 3.537377760319636*^9, 
   3.537377797112782*^9, 3.537377834871153*^9, 3.537377872460987*^9, 
   3.537377942125203*^9, 3.537378141129132*^9, 3.537378171514801*^9, 
   3.537378203290624*^9, 3.537378235435907*^9, 3.537378349964204*^9, 
   3.537379017514793*^9, {3.537480228583217*^9, 3.537480257255866*^9}, 
   3.537511424660699*^9, 3.537512118679105*^9, 3.537512812213501*^9, 
   3.537736595778675*^9, 3.537736626867136*^9, 3.538177320028951*^9, 
   3.538177354924794*^9, 3.539267365798404*^9, 3.539267397377504*^9, 
   3.539629511458314*^9, 3.539629544332567*^9, 3.540300049599588*^9, 
   3.540300084545299*^9, 3.543309218850655*^9, 3.543574061216396*^9, 
   3.551289514658436*^9, 3.551289553439288*^9, 3.553196291426759*^9, 
   3.55319632651233*^9, 3.553539562197314*^9, 3.553539602107396*^9, 
   3.554812051143628*^9, 3.554812088229497*^9}],

Cell[BoxData[
 RowBox[{"-", "18.205251483804304`"}]], "Output",
 CellChangeTimes->{{3.537127851380247*^9, 3.537127872985848*^9}, {
   3.537376152106164*^9, 3.537376176055595*^9}, 3.537377398189492*^9, 
   3.537377581649036*^9, 3.537377663936337*^9, 3.537377760319636*^9, 
   3.537377797112782*^9, 3.537377834871153*^9, 3.537377872460987*^9, 
   3.537377942125203*^9, 3.537378141129132*^9, 3.537378171514801*^9, 
   3.537378203290624*^9, 3.537378235435907*^9, 3.537378349964204*^9, 
   3.537379017514793*^9, {3.537480228583217*^9, 3.537480257255866*^9}, 
   3.537511424660699*^9, 3.537512118679105*^9, 3.537512812213501*^9, 
   3.537736595778675*^9, 3.537736626867136*^9, 3.538177320028951*^9, 
   3.538177354924794*^9, 3.539267365798404*^9, 3.539267397377504*^9, 
   3.539629511458314*^9, 3.539629544332567*^9, 3.540300049599588*^9, 
   3.540300084545299*^9, 3.543309218850655*^9, 3.543574061216396*^9, 
   3.551289514658436*^9, 3.551289553439288*^9, 3.553196291426759*^9, 
   3.55319632651233*^9, 3.553539562197314*^9, 3.553539602107396*^9, 
   3.554812051143628*^9, 3.55481208823139*^9}],

Cell[BoxData["130.66683701347372`"], "Output",
 CellChangeTimes->{{3.537127851380247*^9, 3.537127872985848*^9}, {
   3.537376152106164*^9, 3.537376176055595*^9}, 3.537377398189492*^9, 
   3.537377581649036*^9, 3.537377663936337*^9, 3.537377760319636*^9, 
   3.537377797112782*^9, 3.537377834871153*^9, 3.537377872460987*^9, 
   3.537377942125203*^9, 3.537378141129132*^9, 3.537378171514801*^9, 
   3.537378203290624*^9, 3.537378235435907*^9, 3.537378349964204*^9, 
   3.537379017514793*^9, {3.537480228583217*^9, 3.537480257255866*^9}, 
   3.537511424660699*^9, 3.537512118679105*^9, 3.537512812213501*^9, 
   3.537736595778675*^9, 3.537736626867136*^9, 3.538177320028951*^9, 
   3.538177354924794*^9, 3.539267365798404*^9, 3.539267397377504*^9, 
   3.539629511458314*^9, 3.539629544332567*^9, 3.540300049599588*^9, 
   3.540300084545299*^9, 3.543309218850655*^9, 3.543574061216396*^9, 
   3.551289514658436*^9, 3.551289553439288*^9, 3.553196291426759*^9, 
   3.55319632651233*^9, 3.553539562197314*^9, 3.553539602107396*^9, 
   3.554812051143628*^9, 3.5548120882331*^9}],

Cell[BoxData["188.72`"], "Output",
 CellChangeTimes->{{3.537127851380247*^9, 3.537127872985848*^9}, {
   3.537376152106164*^9, 3.537376176055595*^9}, 3.537377398189492*^9, 
   3.537377581649036*^9, 3.537377663936337*^9, 3.537377760319636*^9, 
   3.537377797112782*^9, 3.537377834871153*^9, 3.537377872460987*^9, 
   3.537377942125203*^9, 3.537378141129132*^9, 3.537378171514801*^9, 
   3.537378203290624*^9, 3.537378235435907*^9, 3.537378349964204*^9, 
   3.537379017514793*^9, {3.537480228583217*^9, 3.537480257255866*^9}, 
   3.537511424660699*^9, 3.537512118679105*^9, 3.537512812213501*^9, 
   3.537736595778675*^9, 3.537736626867136*^9, 3.538177320028951*^9, 
   3.538177354924794*^9, 3.539267365798404*^9, 3.539267397377504*^9, 
   3.539629511458314*^9, 3.539629544332567*^9, 3.540300049599588*^9, 
   3.540300084545299*^9, 3.543309218850655*^9, 3.543574061216396*^9, 
   3.551289514658436*^9, 3.551289553439288*^9, 3.553196291426759*^9, 
   3.55319632651233*^9, 3.553539562197314*^9, 3.553539602107396*^9, 
   3.554812051143628*^9, 3.554812088234893*^9}],

Cell[BoxData["41.8973277543479`"], "Output",
 CellChangeTimes->{{3.537127851380247*^9, 3.537127872985848*^9}, {
   3.537376152106164*^9, 3.537376176055595*^9}, 3.537377398189492*^9, 
   3.537377581649036*^9, 3.537377663936337*^9, 3.537377760319636*^9, 
   3.537377797112782*^9, 3.537377834871153*^9, 3.537377872460987*^9, 
   3.537377942125203*^9, 3.537378141129132*^9, 3.537378171514801*^9, 
   3.537378203290624*^9, 3.537378235435907*^9, 3.537378349964204*^9, 
   3.537379017514793*^9, {3.537480228583217*^9, 3.537480257255866*^9}, 
   3.537511424660699*^9, 3.537512118679105*^9, 3.537512812213501*^9, 
   3.537736595778675*^9, 3.537736626867136*^9, 3.538177320028951*^9, 
   3.538177354924794*^9, 3.539267365798404*^9, 3.539267397377504*^9, 
   3.539629511458314*^9, 3.539629544332567*^9, 3.540300049599588*^9, 
   3.540300084545299*^9, 3.543309218850655*^9, 3.543574061216396*^9, 
   3.551289514658436*^9, 3.551289553439288*^9, 3.553196291426759*^9, 
   3.55319632651233*^9, 3.553539562197314*^9, 3.553539602107396*^9, 
   3.554812051143628*^9, 3.554812088236551*^9}],

Cell[BoxData["188.81583701347373`"], "Output",
 CellChangeTimes->{{3.537127851380247*^9, 3.537127872985848*^9}, {
   3.537376152106164*^9, 3.537376176055595*^9}, 3.537377398189492*^9, 
   3.537377581649036*^9, 3.537377663936337*^9, 3.537377760319636*^9, 
   3.537377797112782*^9, 3.537377834871153*^9, 3.537377872460987*^9, 
   3.537377942125203*^9, 3.537378141129132*^9, 3.537378171514801*^9, 
   3.537378203290624*^9, 3.537378235435907*^9, 3.537378349964204*^9, 
   3.537379017514793*^9, {3.537480228583217*^9, 3.537480257255866*^9}, 
   3.537511424660699*^9, 3.537512118679105*^9, 3.537512812213501*^9, 
   3.537736595778675*^9, 3.537736626867136*^9, 3.538177320028951*^9, 
   3.538177354924794*^9, 3.539267365798404*^9, 3.539267397377504*^9, 
   3.539629511458314*^9, 3.539629544332567*^9, 3.540300049599588*^9, 
   3.540300084545299*^9, 3.543309218850655*^9, 3.543574061216396*^9, 
   3.551289514658436*^9, 3.551289553439288*^9, 3.553196291426759*^9, 
   3.55319632651233*^9, 3.553539562197314*^9, 3.553539602107396*^9, 
   3.554812051143628*^9, 3.554812088238091*^9}],

Cell[BoxData["69.95`"], "Output",
 CellChangeTimes->{{3.537127851380247*^9, 3.537127872985848*^9}, {
   3.537376152106164*^9, 3.537376176055595*^9}, 3.537377398189492*^9, 
   3.537377581649036*^9, 3.537377663936337*^9, 3.537377760319636*^9, 
   3.537377797112782*^9, 3.537377834871153*^9, 3.537377872460987*^9, 
   3.537377942125203*^9, 3.537378141129132*^9, 3.537378171514801*^9, 
   3.537378203290624*^9, 3.537378235435907*^9, 3.537378349964204*^9, 
   3.537379017514793*^9, {3.537480228583217*^9, 3.537480257255866*^9}, 
   3.537511424660699*^9, 3.537512118679105*^9, 3.537512812213501*^9, 
   3.537736595778675*^9, 3.537736626867136*^9, 3.538177320028951*^9, 
   3.538177354924794*^9, 3.539267365798404*^9, 3.539267397377504*^9, 
   3.539629511458314*^9, 3.539629544332567*^9, 3.540300049599588*^9, 
   3.540300084545299*^9, 3.543309218850655*^9, 3.543574061216396*^9, 
   3.551289514658436*^9, 3.551289553439288*^9, 3.553196291426759*^9, 
   3.55319632651233*^9, 3.553539562197314*^9, 3.553539602107396*^9, 
   3.554812051143628*^9, 3.554812088239629*^9}],

Cell[BoxData[
 RowBox[{"-", "902022.7825906178`"}]], "Output",
 CellChangeTimes->{{3.537127851380247*^9, 3.537127872985848*^9}, {
   3.537376152106164*^9, 3.537376176055595*^9}, 3.537377398189492*^9, 
   3.537377581649036*^9, 3.537377663936337*^9, 3.537377760319636*^9, 
   3.537377797112782*^9, 3.537377834871153*^9, 3.537377872460987*^9, 
   3.537377942125203*^9, 3.537378141129132*^9, 3.537378171514801*^9, 
   3.537378203290624*^9, 3.537378235435907*^9, 3.537378349964204*^9, 
   3.537379017514793*^9, {3.537480228583217*^9, 3.537480257255866*^9}, 
   3.537511424660699*^9, 3.537512118679105*^9, 3.537512812213501*^9, 
   3.537736595778675*^9, 3.537736626867136*^9, 3.538177320028951*^9, 
   3.538177354924794*^9, 3.539267365798404*^9, 3.539267397377504*^9, 
   3.539629511458314*^9, 3.539629544332567*^9, 3.540300049599588*^9, 
   3.540300084545299*^9, 3.543309218850655*^9, 3.543574061216396*^9, 
   3.551289514658436*^9, 3.551289553439288*^9, 3.553196291426759*^9, 
   3.55319632651233*^9, 3.553539562197314*^9, 3.553539602107396*^9, 
   3.554812051143628*^9, 3.55481208824121*^9}],

Cell[BoxData["69.93683701347372`"], "Output",
 CellChangeTimes->{{3.537127851380247*^9, 3.537127872985848*^9}, {
   3.537376152106164*^9, 3.537376176055595*^9}, 3.537377398189492*^9, 
   3.537377581649036*^9, 3.537377663936337*^9, 3.537377760319636*^9, 
   3.537377797112782*^9, 3.537377834871153*^9, 3.537377872460987*^9, 
   3.537377942125203*^9, 3.537378141129132*^9, 3.537378171514801*^9, 
   3.537378203290624*^9, 3.537378235435907*^9, 3.537378349964204*^9, 
   3.537379017514793*^9, {3.537480228583217*^9, 3.537480257255866*^9}, 
   3.537511424660699*^9, 3.537512118679105*^9, 3.537512812213501*^9, 
   3.537736595778675*^9, 3.537736626867136*^9, 3.538177320028951*^9, 
   3.538177354924794*^9, 3.539267365798404*^9, 3.539267397377504*^9, 
   3.539629511458314*^9, 3.539629544332567*^9, 3.540300049599588*^9, 
   3.540300084545299*^9, 3.543309218850655*^9, 3.543574061216396*^9, 
   3.551289514658436*^9, 3.551289553439288*^9, 3.553196291426759*^9, 
   3.55319632651233*^9, 3.553539562197314*^9, 3.553539602107396*^9, 
   3.554812051143628*^9, 3.554812088242757*^9}],

Cell[BoxData["205.03`"], "Output",
 CellChangeTimes->{{3.537127851380247*^9, 3.537127872985848*^9}, {
   3.537376152106164*^9, 3.537376176055595*^9}, 3.537377398189492*^9, 
   3.537377581649036*^9, 3.537377663936337*^9, 3.537377760319636*^9, 
   3.537377797112782*^9, 3.537377834871153*^9, 3.537377872460987*^9, 
   3.537377942125203*^9, 3.537378141129132*^9, 3.537378171514801*^9, 
   3.537378203290624*^9, 3.537378235435907*^9, 3.537378349964204*^9, 
   3.537379017514793*^9, {3.537480228583217*^9, 3.537480257255866*^9}, 
   3.537511424660699*^9, 3.537512118679105*^9, 3.537512812213501*^9, 
   3.537736595778675*^9, 3.537736626867136*^9, 3.538177320028951*^9, 
   3.538177354924794*^9, 3.539267365798404*^9, 3.539267397377504*^9, 
   3.539629511458314*^9, 3.539629544332567*^9, 3.540300049599588*^9, 
   3.540300084545299*^9, 3.543309218850655*^9, 3.543574061216396*^9, 
   3.551289514658436*^9, 3.551289553439288*^9, 3.553196291426759*^9, 
   3.55319632651233*^9, 3.553539562197314*^9, 3.553539602107396*^9, 
   3.554812051143628*^9, 3.554812088244353*^9}],

Cell[BoxData["41.52340450504557`"], "Output",
 CellChangeTimes->{{3.537127851380247*^9, 3.537127872985848*^9}, {
   3.537376152106164*^9, 3.537376176055595*^9}, 3.537377398189492*^9, 
   3.537377581649036*^9, 3.537377663936337*^9, 3.537377760319636*^9, 
   3.537377797112782*^9, 3.537377834871153*^9, 3.537377872460987*^9, 
   3.537377942125203*^9, 3.537378141129132*^9, 3.537378171514801*^9, 
   3.537378203290624*^9, 3.537378235435907*^9, 3.537378349964204*^9, 
   3.537379017514793*^9, {3.537480228583217*^9, 3.537480257255866*^9}, 
   3.537511424660699*^9, 3.537512118679105*^9, 3.537512812213501*^9, 
   3.537736595778675*^9, 3.537736626867136*^9, 3.538177320028951*^9, 
   3.538177354924794*^9, 3.539267365798404*^9, 3.539267397377504*^9, 
   3.539629511458314*^9, 3.539629544332567*^9, 3.540300049599588*^9, 
   3.540300084545299*^9, 3.543309218850655*^9, 3.543574061216396*^9, 
   3.551289514658436*^9, 3.551289553439288*^9, 3.553196291426759*^9, 
   3.55319632651233*^9, 3.553539562197314*^9, 3.553539602107396*^9, 
   3.554812051143628*^9, 3.55481208824593*^9}],

Cell[BoxData["205.13583701347372`"], "Output",
 CellChangeTimes->{{3.537127851380247*^9, 3.537127872985848*^9}, {
   3.537376152106164*^9, 3.537376176055595*^9}, 3.537377398189492*^9, 
   3.537377581649036*^9, 3.537377663936337*^9, 3.537377760319636*^9, 
   3.537377797112782*^9, 3.537377834871153*^9, 3.537377872460987*^9, 
   3.537377942125203*^9, 3.537378141129132*^9, 3.537378171514801*^9, 
   3.537378203290624*^9, 3.537378235435907*^9, 3.537378349964204*^9, 
   3.537379017514793*^9, {3.537480228583217*^9, 3.537480257255866*^9}, 
   3.537511424660699*^9, 3.537512118679105*^9, 3.537512812213501*^9, 
   3.537736595778675*^9, 3.537736626867136*^9, 3.538177320028951*^9, 
   3.538177354924794*^9, 3.539267365798404*^9, 3.539267397377504*^9, 
   3.539629511458314*^9, 3.539629544332567*^9, 3.540300049599588*^9, 
   3.540300084545299*^9, 3.543309218850655*^9, 3.543574061216396*^9, 
   3.551289514658436*^9, 3.551289553439288*^9, 3.553196291426759*^9, 
   3.55319632651233*^9, 3.553539562197314*^9, 3.553539602107396*^9, 
   3.554812051143628*^9, 3.554812088247463*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Evaluate", " ", 
   RowBox[{"misc", ".", " ", "properties", "."}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"-", "228590"}], "  ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "value", " ", "from", " ", "Gibbs", " ", "function", " ", "of", " ", 
    "formation", " ", "for", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "at", " ", "298.15", " ", "K", 
    " ", "and", " ", "1", " ", "atm", " ", "Moran2004", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", ".", " ", "803"}], ",", " ", 
      RowBox[{
       RowBox[{"Table", " ", "A"}], "-", "25"}]}], ")"}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"-", "241820"}], "-", 
   RowBox[{"298.15", "*", "188.72"}], "+", 
   RowBox[{"298.15", "*", "130.57"}], "+", 
   RowBox[{"0.5", "*", "298.15", "*", "205.03"}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "values", " ", "from", " ", "enthalpy", " ", "of", " ", "formation", " ", 
     "and", " ", "absolute", " ", "entropy", " ", "for", " ", 
     RowBox[{"Subscript", "[", 
      RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
     RowBox[{"Subscript", "[", 
      RowBox[{"O", ",", " ", 
       RowBox[{"(", "g", ")"}]}], "]"}]}], ",", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], ",", " ", 
    RowBox[{"and", " ", 
     RowBox[{"Subscript", "[", 
      RowBox[{"O", ",", " ", "2"}], "]"}], " ", "at", " ", "298.15", "K", " ",
      "and", " ", "1", " ", "atm", " ", "Moran2004", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"p", ".", " ", "803"}], ",", " ", 
       RowBox[{
        RowBox[{"Table", " ", "A"}], "-", "25"}]}], ")"}]}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"g0H2O", "[", "300", "]"}], "-", 
  RowBox[{"g0H2", "[", "300", "]"}], "-", 
  RowBox[{"0.5", "*", 
   RowBox[{"g0O2", "[", "300", "]"}]}], "-", 
  RowBox[{"0.5", "*", "298.15", "*", "R", "*", 
   RowBox[{"Log", "[", 
    RowBox[{"101.325", "/", "100"}], "]"}]}]}]}], "Code"],

Cell[BoxData[
 RowBox[{"-", "228590"}]], "Output",
 CellChangeTimes->{{3.537127851424282*^9, 3.537127873074717*^9}, {
   3.53737615220831*^9, 3.537376176160752*^9}, 3.537377398227273*^9, 
   3.53737758175842*^9, 3.537377663975097*^9, 3.537377760357001*^9, 
   3.537377797191727*^9, 3.537377834917077*^9, 3.537377872933711*^9, 
   3.537377942207399*^9, 3.537378141198977*^9, 3.537378171583869*^9, 
   3.537378203359777*^9, 3.537378235478248*^9, 3.537378350044466*^9, 
   3.537379017558014*^9, {3.537480228630029*^9, 3.537480257343828*^9}, 
   3.537511424699813*^9, 3.53751211875155*^9, 3.53751281224986*^9, 
   3.537736595819924*^9, 3.537736626905482*^9, 3.538177320075668*^9, 
   3.538177355069062*^9, 3.53926736585138*^9, 3.539267397422762*^9, 
   3.539629511514208*^9, 3.53962954437068*^9, 3.540300049662254*^9, 
   3.540300084593998*^9, 3.54330921888125*^9, 3.543574061282922*^9, 
   3.551289514768396*^9, 3.551289553483963*^9, 3.553196291489974*^9, 
   3.553196326616733*^9, 3.553539562311313*^9, 3.553539602192088*^9, 
   3.554812051186005*^9, 3.554812088269279*^9}],

Cell[BoxData[
 RowBox[{"-", "228592.57525000002`"}]], "Output",
 CellChangeTimes->{{3.537127851424282*^9, 3.537127873074717*^9}, {
   3.53737615220831*^9, 3.537376176160752*^9}, 3.537377398227273*^9, 
   3.53737758175842*^9, 3.537377663975097*^9, 3.537377760357001*^9, 
   3.537377797191727*^9, 3.537377834917077*^9, 3.537377872933711*^9, 
   3.537377942207399*^9, 3.537378141198977*^9, 3.537378171583869*^9, 
   3.537378203359777*^9, 3.537378235478248*^9, 3.537378350044466*^9, 
   3.537379017558014*^9, {3.537480228630029*^9, 3.537480257343828*^9}, 
   3.537511424699813*^9, 3.53751211875155*^9, 3.53751281224986*^9, 
   3.537736595819924*^9, 3.537736626905482*^9, 3.538177320075668*^9, 
   3.538177355069062*^9, 3.53926736585138*^9, 3.539267397422762*^9, 
   3.539629511514208*^9, 3.53962954437068*^9, 3.540300049662254*^9, 
   3.540300084593998*^9, 3.54330921888125*^9, 3.543574061282922*^9, 
   3.551289514768396*^9, 3.551289553483963*^9, 3.553196291489974*^9, 
   3.553196326616733*^9, 3.553539562311313*^9, 3.553539602192088*^9, 
   3.554812051186005*^9, 3.554812088271109*^9}],

Cell[BoxData[
 RowBox[{"-", "429950.4794674324`"}]], "Output",
 CellChangeTimes->{{3.537127851424282*^9, 3.537127873074717*^9}, {
   3.53737615220831*^9, 3.537376176160752*^9}, 3.537377398227273*^9, 
   3.53737758175842*^9, 3.537377663975097*^9, 3.537377760357001*^9, 
   3.537377797191727*^9, 3.537377834917077*^9, 3.537377872933711*^9, 
   3.537377942207399*^9, 3.537378141198977*^9, 3.537378171583869*^9, 
   3.537378203359777*^9, 3.537378235478248*^9, 3.537378350044466*^9, 
   3.537379017558014*^9, {3.537480228630029*^9, 3.537480257343828*^9}, 
   3.537511424699813*^9, 3.53751211875155*^9, 3.53751281224986*^9, 
   3.537736595819924*^9, 3.537736626905482*^9, 3.538177320075668*^9, 
   3.538177355069062*^9, 3.53926736585138*^9, 3.539267397422762*^9, 
   3.539629511514208*^9, 3.53962954437068*^9, 3.540300049662254*^9, 
   3.540300084593998*^9, 3.54330921888125*^9, 3.543574061282922*^9, 
   3.551289514768396*^9, 3.551289553483963*^9, 3.553196291489974*^9, 
   3.553196326616733*^9, 3.553539562311313*^9, 3.553539602192088*^9, 
   3.554812051186005*^9, 3.554812088272788*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"-", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "228590"}], "/", 
     RowBox[{"(", 
      RowBox[{"2", "*", "kF"}], ")"}]}], ")"}]}], "  ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "value", " ", "from", " ", "Gibbs", " ", "function", " ", "of", " ", 
    "formation", " ", "for", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "at", " ", "298.15", " ", "K", 
    " ", "and", " ", "1", " ", "atm", " ", "Moran2004", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", ".", " ", "803"}], ",", " ", 
      RowBox[{
       RowBox[{"Table", " ", "A"}], "-", "25"}]}], ")"}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"-", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "241820"}], "-", 
      RowBox[{"298.15", "*", "188.72"}], "+", 
      RowBox[{"298.15", "*", "130.57"}], "+", 
      RowBox[{"0.5", "*", "298.15", "*", "205.03"}]}], ")"}]}], "/", 
   RowBox[{"(", 
    RowBox[{"2", "*", "kF"}], ")"}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "values", " ", "from", " ", "enthalpy", " ", "of", " ", "formation", " ", 
     "and", " ", "absolute", " ", "entropy", " ", "for", " ", 
     RowBox[{"Subscript", "[", 
      RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
     RowBox[{"Subscript", "[", 
      RowBox[{"O", ",", " ", 
       RowBox[{"(", "g", ")"}]}], "]"}]}], ",", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], ",", " ", 
    RowBox[{"and", " ", 
     RowBox[{"Subscript", "[", 
      RowBox[{"O", ",", " ", "2"}], "]"}], " ", "at", " ", "298.15", "K", " ",
      "and", " ", "1", " ", "atm", " ", "Moran2004", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"p", ".", " ", "803"}], ",", " ", 
       RowBox[{
        RowBox[{"Table", " ", "A"}], "-", "25"}]}], ")"}]}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"-", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"g0H2O", "[", "298.15", "]"}], "-", 
     RowBox[{"g0H2", "[", "298.15", "]"}], "-", 
     RowBox[{"0.5", "*", 
      RowBox[{"g0O2", "[", "298.15", "]"}]}], "-", 
     RowBox[{"0.5", "*", "298.15", "*", "R", "*", 
      RowBox[{"Log", "[", 
       RowBox[{"101.325", "/", "100"}], "]"}]}]}], ")"}]}], "/", 
  RowBox[{"(", 
   RowBox[{"2", "*", "kF"}], ")"}]}], "\n", 
 RowBox[{
  RowBox[{"-", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "237180"}], "/", 
     RowBox[{"(", 
      RowBox[{"2", "*", "kF"}], ")"}]}], ")"}]}], "  ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "value", " ", "from", " ", "Gibbs", " ", "function", " ", "of", " ", 
    "formation", " ", "for", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "at", " ", "298.15", " ", "K", 
    " ", "and", " ", "1", " ", "atm", " ", "Moran2004", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", ".", " ", "803"}], ",", " ", 
      RowBox[{
       RowBox[{"Table", " ", "A"}], "-", "25"}]}], ")"}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"-", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "285830"}], "-", 
      RowBox[{"298.15", "*", "69.95"}], "+", 
      RowBox[{"298.15", "*", "130.57"}], "+", 
      RowBox[{"0.5", "*", "298.15", "*", "205.03"}]}], ")"}]}], "/", 
   RowBox[{"(", 
    RowBox[{"2", "*", "kF"}], ")"}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "values", " ", "from", " ", "enthalpy", " ", "of", " ", "formation", " ", 
     "and", " ", "absolute", " ", "entropy", " ", "for", " ", 
     RowBox[{"Subscript", "[", 
      RowBox[{"H", ",", " ", "2"}], "]"}], " ", 
     RowBox[{"Subscript", "[", 
      RowBox[{"O", ",", " ", 
       RowBox[{"(", "l", ")"}]}], "]"}]}], ",", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], ",", " ", 
    RowBox[{"and", " ", 
     RowBox[{"Subscript", "[", 
      RowBox[{"O", ",", " ", "2"}], "]"}], " ", "at", " ", "298.15", "K", " ",
      "and", " ", "1", " ", "atm", " ", "Moran2004", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"p", ".", " ", "803"}], ",", " ", 
       RowBox[{
        RowBox[{"Table", " ", "A"}], "-", "25"}]}], ")"}]}]}], " ", 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"-", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"g0H2Ol", "[", "298.15", "]"}], "-", 
     RowBox[{"g0H2", "[", "298.15", "]"}], "-", 
     RowBox[{"0.5", "*", 
      RowBox[{"g0O2", "[", "298.15", "]"}]}], "-", 
     RowBox[{"1.5", "*", "298.15", "*", "R", "*", 
      RowBox[{"Log", "[", 
       RowBox[{"101.325", "/", "100"}], "]"}]}]}], ")"}]}], "/", 
  RowBox[{"(", 
   RowBox[{"2", "*", "kF"}], ")"}]}], "\n", 
 RowBox[{"1.23", 
  RowBox[{"(*", " ", 
   RowBox[{
   "maximum", " ", "EMF", " ", "at", " ", "25", " ", "degC", " ", "and", " ", 
    
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "from", " ", "Larminie2003", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", " ", "33"}], ",", " ", 
      RowBox[{"Table", " ", "2.2"}]}], ")"}]}], " ", "*)"}]}], "\n", 
 RowBox[{"DeltaepsilonLiml", "[", 
  RowBox[{"273.15", "+", "25"}], "]"}], "\n", 
 RowBox[{"1.18", 
  RowBox[{"(*", " ", 
   RowBox[{
   "maximum", " ", "EMF", " ", "at", " ", "80", " ", "degC", " ", "and", " ", 
    
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "from", " ", "Larminie2003", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", " ", "33"}], ",", " ", 
      RowBox[{"Table", " ", "2.2"}]}], ")"}]}], " ", "*)"}]}], "\n", 
 RowBox[{"DeltaepsilonLiml", "[", 
  RowBox[{"273.15", "+", "80"}], "]"}], "\n", 
 RowBox[{"1.17", " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "maximum", " ", "EMF", " ", "at", " ", "100", " ", "degC", " ", "and", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "from", " ", "Larminie2003", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", " ", "33"}], ",", " ", 
      RowBox[{"Table", " ", "2.2"}]}], ")"}]}], " ", "*)"}]}], "\n", 
 RowBox[{"DeltaepsilonLim", "[", 
  RowBox[{"273.15", "+", "100"}], "]"}], "\n", 
 RowBox[{"1.14", " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "maximum", " ", "EMF", " ", "at", " ", "200", " ", "degC", " ", "and", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "from", " ", "Larminie2003", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", " ", "33"}], ",", " ", 
      RowBox[{"Table", " ", "2.2"}]}], ")"}]}], " ", "*)"}]}], "\n", 
 RowBox[{"DeltaepsilonLim", "[", 
  RowBox[{"273.15", "+", "200"}], "]"}], "\n", 
 RowBox[{"1.09", 
  RowBox[{"(*", " ", 
   RowBox[{
   "maximum", " ", "EMF", " ", "at", " ", "400", " ", "degC", " ", "and", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "from", " ", "Larminie2003", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", " ", "33"}], ",", " ", 
      RowBox[{"Table", " ", "2.2"}]}], ")"}]}], " ", "*)"}]}], "\n", 
 RowBox[{"DeltaepsilonLim", "[", 
  RowBox[{"273.15", "+", "400"}], "]"}], "\n", 
 RowBox[{"1.04", 
  RowBox[{"(*", " ", 
   RowBox[{
   "maximum", " ", "EMF", " ", "at", " ", "600", " ", "degC", " ", "and", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "from", " ", "Larminie2003", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", " ", "33"}], ",", " ", 
      RowBox[{"Table", " ", "2.2"}]}], ")"}]}], " ", "*)"}]}], "\n", 
 RowBox[{"DeltaepsilonLim", "[", 
  RowBox[{"273.15", "+", "600"}], "]"}], "\n", 
 RowBox[{"0.98", " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "maximum", " ", "EMF", " ", "at", " ", "800", " ", "degC", " ", "and", " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "from", " ", "Larminie2003", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", " ", "33"}], ",", " ", 
      RowBox[{"Table", " ", "2.2"}]}], ")"}]}], " ", "*)"}]}], "\n", 
 RowBox[{"DeltaepsilonLim", "[", 
  RowBox[{"273.15", "+", "800"}], "]"}], "\n", 
 RowBox[{"0.92", 
  RowBox[{"(*", " ", 
   RowBox[{
   "maximum", " ", "EMF", " ", "at", " ", "1000", " ", "degC", " ", "and", 
    " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"H\[Null]", ",", " ", "2"}], "]"}], " ", 
    RowBox[{"Subscript", "[", 
     RowBox[{"O", ",", " ", 
      RowBox[{"(", "g", ")"}]}], "]"}], " ", "from", " ", "Larminie2003", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p", " ", "33"}], ",", " ", 
      RowBox[{"Table", " ", "2.2"}]}], ")"}]}], " ", "*)"}]}], "\n", 
 RowBox[{"DeltaepsilonLim", "[", 
  RowBox[{"273.15", "+", "1000"}], "]"}]}], "Code"],

Cell[BoxData[
 FractionBox["114295", "kF"]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088363585*^9}],

Cell[BoxData[
 FractionBox["114296.28762500001`", "kF"]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088365409*^9}],

Cell[BoxData[
 FractionBox["214939.17754222604`", "kF"]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.55481208836707*^9}],

Cell[BoxData[
 FractionBox["118590", "kF"]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088368812*^9}],

Cell[BoxData[
 FractionBox["118595.64987500002`", "kF"]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088370392*^9}],

Cell[BoxData[
 FractionBox["6.736763618115656`*^7", "kF"]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088371981*^9}],

Cell[BoxData["1.23`"], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.55481208837359*^9}],

Cell[BoxData[
 RowBox[{"DeltaepsilonLiml", "[", "298.15`", "]"}]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088375125*^9}],

Cell[BoxData["1.18`"], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088376721*^9}],

Cell[BoxData[
 RowBox[{"DeltaepsilonLiml", "[", "353.15`", "]"}]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088378318*^9}],

Cell[BoxData["1.17`"], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088379926*^9}],

Cell[BoxData[
 RowBox[{"DeltaepsilonLim", "[", "373.15`", "]"}]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.5548120883815*^9}],

Cell[BoxData["1.14`"], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088383076*^9}],

Cell[BoxData[
 RowBox[{"DeltaepsilonLim", "[", "473.15`", "]"}]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088384674*^9}],

Cell[BoxData["1.09`"], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088386271*^9}],

Cell[BoxData[
 RowBox[{"DeltaepsilonLim", "[", "673.15`", "]"}]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088387881*^9}],

Cell[BoxData["1.04`"], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088389499*^9}],

Cell[BoxData[
 RowBox[{"DeltaepsilonLim", "[", "873.15`", "]"}]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088391091*^9}],

Cell[BoxData["0.98`"], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088392702*^9}],

Cell[BoxData[
 RowBox[{"DeltaepsilonLim", "[", "1073.15`", "]"}]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088394263*^9}],

Cell[BoxData["0.92`"], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088395868*^9}],

Cell[BoxData[
 RowBox[{"DeltaepsilonLim", "[", "1273.15`", "]"}]], "Output",
 CellChangeTimes->{{3.537127851450099*^9, 3.537127873097729*^9}, {
   3.537376152240684*^9, 3.537376176181619*^9}, 3.537377398386207*^9, 
   3.537377581920457*^9, 3.537377664034727*^9, 3.537377760415563*^9, 
   3.537377797216628*^9, 3.537377835008469*^9, 3.537377873009746*^9, 
   3.537377942227384*^9, 3.537378141220809*^9, 3.537378171600801*^9, 
   3.537378203379556*^9, 3.537378235525514*^9, 3.537378350072741*^9, 
   3.537379017616269*^9, {3.537480228726924*^9, 3.537480257367664*^9}, 
   3.537511424767496*^9, 3.537512118774955*^9, 3.537512812268391*^9, 
   3.53773659585917*^9, 3.537736626999306*^9, 3.538177320115036*^9, 
   3.538177355086037*^9, 3.539267365892278*^9, 3.539267397474315*^9, 
   3.539629511616628*^9, 3.539629544392788*^9, 3.540300049789487*^9, 
   3.540300084669128*^9, 3.543309218911107*^9, 3.54357406131985*^9, 
   3.551289514811018*^9, 3.551289553552563*^9, 3.553196291641177*^9, 
   3.553196326634362*^9, 3.553539562355266*^9, 3.553539602220357*^9, 
   3.554812051226153*^9, 3.554812088397451*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Try", " ", "using", " ", "square", " ", "root", " ", "of", " ", 
   RowBox[{"temperature", "."}]}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{"s0", "[", "T", "]"}], ",", "T"}], "]"}], "/", "T"}], 
  "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"Simplify", "[", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cp0", "[", "T", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"2", "*", 
         RowBox[{"T", "^", 
          RowBox[{"(", 
           RowBox[{"1", "/", "2"}], ")"}]}]}], ")"}]}], ")"}], "]"}], ",", 
    "T"}], "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"cp0prime", "[", "Tprime_", "]"}], ":=", 
  RowBox[{"cp0", "[", 
   RowBox[{"Tprime", "^", 
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"h0prime", "[", "Tprime_", "]"}], ":=", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"cp0prime", "[", "Tprime", "]"}], "*", 
     RowBox[{"(", 
      RowBox[{"2", "*", 
       RowBox[{"Tprime", "^", 
        RowBox[{"(", 
         RowBox[{"1", "/", "2"}], ")"}]}]}], ")"}]}], ",", "Tprime"}], 
   "]"}]}], "\n", 
 RowBox[{
  RowBox[{"s0prime", "[", "Tprime_", "]"}], ":=", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"cp0", "[", 
     RowBox[{"Tprime", "^", "2"}], "]"}], ",", "Tprime"}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"g0prime", "[", "Tprime_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"h0prime", "[", "Tprime", "]"}], "-", 
    RowBox[{"Tprime", "*", 
     RowBox[{"s0prime", "[", "Tprime", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"u0prime", "[", "Tprime_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{
    RowBox[{"h0prime", "[", "Tprime", "]"}], "-", "Tprime"}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"a0prime", "[", "Tprime_", "]"}], ":=", 
   RowBox[{
    RowBox[{"u0prime", "[", "Tprime", "]"}], "-", 
    RowBox[{"Tprime", "*", 
     RowBox[{"s0prime", "[", "Tprime", "]"}]}]}]}], "\n"}], "\n", 
 RowBox[{"cp0prime", "[", "Tprime", "]"}], "\n", 
 RowBox[{"h0prime", "[", "Tprime", "]"}], "\n", 
 RowBox[{"s0prime", "[", "Tprime", "]"}], "\n", 
 RowBox[{"g0prime", "[", "Tprime", "]"}], "\n", 
 RowBox[{"a0prime", "[", "Tprime", "]"}], "\n", 
 RowBox[{"u0prime", "[", "Tprime", "]"}]}], "Code"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "a3"}], "+", 
  FractionBox["a1", 
   RowBox[{"2", " ", 
    SuperscriptBox["T", "2"]}]], "+", 
  FractionBox[
   RowBox[{"a4", " ", "T"}], "2"], "+", 
  FractionBox[
   RowBox[{"a5", " ", 
    SuperscriptBox["T", "2"]}], "6"], "+", 
  FractionBox[
   RowBox[{"a6", " ", 
    SuperscriptBox["T", "3"]}], "12"], "+", 
  FractionBox[
   RowBox[{"a7", " ", 
    SuperscriptBox["T", "4"]}], "20"], "+", 
  RowBox[{"a3", " ", 
   RowBox[{"Log", "[", "T", "]"}]}], "-", 
  FractionBox[
   RowBox[{"a2", " ", 
    RowBox[{"Log", "[", "T", "]"}]}], "T"]}]], "Output",
 CellChangeTimes->{{3.5371278518454*^9, 3.537127873302103*^9}, {
   3.53737615258843*^9, 3.537376176438985*^9}, 3.537377398620451*^9, 
   3.537377582105331*^9, 3.537377664202626*^9, 3.537377760584203*^9, 
   3.537377797500874*^9, 3.537377836613315*^9, 3.537377873380408*^9, 
   3.537377942852522*^9, 3.537378141507093*^9, 3.537378171758305*^9, 
   3.537378203544859*^9, 3.537378235691704*^9, 3.53737835023752*^9, 
   3.537379017786335*^9, {3.537480228966606*^9, 3.537480257553439*^9}, 
   3.537511425317646*^9, 3.537512118945949*^9, 3.537512812420645*^9, 
   3.537736596219942*^9, 3.537736627199543*^9, 3.538177320633715*^9, 
   3.538177355438852*^9, 3.539267366456789*^9, 3.539267397628479*^9, 
   3.539629511946844*^9, 3.539629544556015*^9, 3.54030005005884*^9, 
   3.54030008490621*^9, 3.543309219272642*^9, 3.543574062033073*^9, 
   3.551289515102541*^9, 3.551289553722003*^9, 3.553196292152828*^9, 
   3.553196326835755*^9, 3.553539562712827*^9, 3.553539602439235*^9, 
   3.554812051667347*^9, 3.554812088558386*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   FractionBox["a1", 
    RowBox[{"3", " ", 
     SuperscriptBox["T", 
      RowBox[{"3", "/", "2"}]]}]]}], "-", 
  FractionBox["a2", 
   SqrtBox["T"]], "+", 
  RowBox[{"a3", " ", 
   SqrtBox["T"]}], "+", 
  RowBox[{
   FractionBox["1", "3"], " ", "a4", " ", 
   SuperscriptBox["T", 
    RowBox[{"3", "/", "2"}]]}], "+", 
  RowBox[{
   FractionBox["1", "5"], " ", "a5", " ", 
   SuperscriptBox["T", 
    RowBox[{"5", "/", "2"}]]}], "+", 
  RowBox[{
   FractionBox["1", "7"], " ", "a6", " ", 
   SuperscriptBox["T", 
    RowBox[{"7", "/", "2"}]]}], "+", 
  RowBox[{
   FractionBox["1", "9"], " ", "a7", " ", 
   SuperscriptBox["T", 
    RowBox[{"9", "/", "2"}]]}]}]], "Output",
 CellChangeTimes->{{3.5371278518454*^9, 3.537127873302103*^9}, {
   3.53737615258843*^9, 3.537376176438985*^9}, 3.537377398620451*^9, 
   3.537377582105331*^9, 3.537377664202626*^9, 3.537377760584203*^9, 
   3.537377797500874*^9, 3.537377836613315*^9, 3.537377873380408*^9, 
   3.537377942852522*^9, 3.537378141507093*^9, 3.537378171758305*^9, 
   3.537378203544859*^9, 3.537378235691704*^9, 3.53737835023752*^9, 
   3.537379017786335*^9, {3.537480228966606*^9, 3.537480257553439*^9}, 
   3.537511425317646*^9, 3.537512118945949*^9, 3.537512812420645*^9, 
   3.537736596219942*^9, 3.537736627199543*^9, 3.538177320633715*^9, 
   3.538177355438852*^9, 3.539267366456789*^9, 3.539267397628479*^9, 
   3.539629511946844*^9, 3.539629544556015*^9, 3.54030005005884*^9, 
   3.54030008490621*^9, 3.543309219272642*^9, 3.543574062033073*^9, 
   3.551289515102541*^9, 3.551289553722003*^9, 3.553196292152828*^9, 
   3.553196326835755*^9, 3.553539562712827*^9, 3.553539602439235*^9, 
   3.554812051667347*^9, 3.554812088616971*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", "Tprime"], "+", 
  FractionBox["a2", 
   SqrtBox["Tprime"]], "+", 
  RowBox[{"a4", " ", 
   SqrtBox["Tprime"]}], "+", 
  RowBox[{"a5", " ", "Tprime"}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["Tprime", 
    RowBox[{"3", "/", "2"}]]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["Tprime", "2"]}]}]], "Output",
 CellChangeTimes->{{3.5371278518454*^9, 3.537127873302103*^9}, {
   3.53737615258843*^9, 3.537376176438985*^9}, 3.537377398620451*^9, 
   3.537377582105331*^9, 3.537377664202626*^9, 3.537377760584203*^9, 
   3.537377797500874*^9, 3.537377836613315*^9, 3.537377873380408*^9, 
   3.537377942852522*^9, 3.537378141507093*^9, 3.537378171758305*^9, 
   3.537378203544859*^9, 3.537378235691704*^9, 3.53737835023752*^9, 
   3.537379017786335*^9, {3.537480228966606*^9, 3.537480257553439*^9}, 
   3.537511425317646*^9, 3.537512118945949*^9, 3.537512812420645*^9, 
   3.537736596219942*^9, 3.537736627199543*^9, 3.538177320633715*^9, 
   3.538177355438852*^9, 3.539267366456789*^9, 3.539267397628479*^9, 
   3.539629511946844*^9, 3.539629544556015*^9, 3.54030005005884*^9, 
   3.54030008490621*^9, 3.543309219272642*^9, 3.543574062033073*^9, 
   3.551289515102541*^9, 3.551289553722003*^9, 3.553196292152828*^9, 
   3.553196326835755*^9, 3.553539562712827*^9, 3.553539602439235*^9, 
   3.554812051667347*^9, 3.554812088668276*^9}],

Cell[BoxData[
 RowBox[{"2", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"2", " ", "a1", " ", 
     SqrtBox["Tprime"]}], "+", 
    RowBox[{"a2", " ", "Tprime"}], "+", 
    RowBox[{
     FractionBox["2", "3"], " ", "a3", " ", 
     SuperscriptBox["Tprime", 
      RowBox[{"3", "/", "2"}]]}], "+", 
    FractionBox[
     RowBox[{"a4", " ", 
      SuperscriptBox["Tprime", "2"]}], "2"], "+", 
    RowBox[{
     FractionBox["2", "5"], " ", "a5", " ", 
     SuperscriptBox["Tprime", 
      RowBox[{"5", "/", "2"}]]}], "+", 
    FractionBox[
     RowBox[{"a6", " ", 
      SuperscriptBox["Tprime", "3"]}], "3"], "+", 
    RowBox[{
     FractionBox["2", "7"], " ", "a7", " ", 
     SuperscriptBox["Tprime", 
      RowBox[{"7", "/", "2"}]]}]}], ")"}]}]], "Output",
 CellChangeTimes->{{3.5371278518454*^9, 3.537127873302103*^9}, {
   3.53737615258843*^9, 3.537376176438985*^9}, 3.537377398620451*^9, 
   3.537377582105331*^9, 3.537377664202626*^9, 3.537377760584203*^9, 
   3.537377797500874*^9, 3.537377836613315*^9, 3.537377873380408*^9, 
   3.537377942852522*^9, 3.537378141507093*^9, 3.537378171758305*^9, 
   3.537378203544859*^9, 3.537378235691704*^9, 3.53737835023752*^9, 
   3.537379017786335*^9, {3.537480228966606*^9, 3.537480257553439*^9}, 
   3.537511425317646*^9, 3.537512118945949*^9, 3.537512812420645*^9, 
   3.537736596219942*^9, 3.537736627199543*^9, 3.538177320633715*^9, 
   3.538177355438852*^9, 3.539267366456789*^9, 3.539267397628479*^9, 
   3.539629511946844*^9, 3.539629544556015*^9, 3.54030005005884*^9, 
   3.54030008490621*^9, 3.543309219272642*^9, 3.543574062033073*^9, 
   3.551289515102541*^9, 3.551289553722003*^9, 3.553196292152828*^9, 
   3.553196326835755*^9, 3.553539562712827*^9, 3.553539602439235*^9, 
   3.554812051667347*^9, 3.554812088670677*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   FractionBox["a1", 
    RowBox[{"3", " ", 
     SuperscriptBox["Tprime", "3"]}]]}], "-", 
  FractionBox["a2", "Tprime"], "+", 
  RowBox[{"a3", " ", "Tprime"}], "+", 
  FractionBox[
   RowBox[{"a4", " ", 
    SuperscriptBox["Tprime", "3"]}], "3"], "+", 
  FractionBox[
   RowBox[{"a5", " ", 
    SuperscriptBox["Tprime", "5"]}], "5"], "+", 
  FractionBox[
   RowBox[{"a6", " ", 
    SuperscriptBox["Tprime", "7"]}], "7"], "+", 
  FractionBox[
   RowBox[{"a7", " ", 
    SuperscriptBox["Tprime", "9"]}], "9"]}]], "Output",
 CellChangeTimes->{{3.5371278518454*^9, 3.537127873302103*^9}, {
   3.53737615258843*^9, 3.537376176438985*^9}, 3.537377398620451*^9, 
   3.537377582105331*^9, 3.537377664202626*^9, 3.537377760584203*^9, 
   3.537377797500874*^9, 3.537377836613315*^9, 3.537377873380408*^9, 
   3.537377942852522*^9, 3.537378141507093*^9, 3.537378171758305*^9, 
   3.537378203544859*^9, 3.537378235691704*^9, 3.53737835023752*^9, 
   3.537379017786335*^9, {3.537480228966606*^9, 3.537480257553439*^9}, 
   3.537511425317646*^9, 3.537512118945949*^9, 3.537512812420645*^9, 
   3.537736596219942*^9, 3.537736627199543*^9, 3.538177320633715*^9, 
   3.538177355438852*^9, 3.539267366456789*^9, 3.539267397628479*^9, 
   3.539629511946844*^9, 3.539629544556015*^9, 3.54030005005884*^9, 
   3.54030008490621*^9, 3.543309219272642*^9, 3.543574062033073*^9, 
   3.551289515102541*^9, 3.551289553722003*^9, 3.553196292152828*^9, 
   3.553196326835755*^9, 3.553539562712827*^9, 3.553539602439235*^9, 
   3.554812051667347*^9, 3.554812088673035*^9}],

Cell[BoxData[
 RowBox[{"a2", "+", 
  FractionBox["a1", 
   RowBox[{"3", " ", 
    SuperscriptBox["Tprime", "2"]}]], "+", 
  RowBox[{"4", " ", "a1", " ", 
   SqrtBox["Tprime"]}], "+", 
  RowBox[{"2", " ", "a2", " ", "Tprime"}], "+", 
  RowBox[{
   FractionBox["4", "3"], " ", "a3", " ", 
   SuperscriptBox["Tprime", 
    RowBox[{"3", "/", "2"}]]}], "-", 
  RowBox[{"a3", " ", 
   SuperscriptBox["Tprime", "2"]}], "+", 
  RowBox[{"a4", " ", 
   SuperscriptBox["Tprime", "2"]}], "+", 
  RowBox[{
   FractionBox["4", "5"], " ", "a5", " ", 
   SuperscriptBox["Tprime", 
    RowBox[{"5", "/", "2"}]]}], "+", 
  FractionBox[
   RowBox[{"2", " ", "a6", " ", 
    SuperscriptBox["Tprime", "3"]}], "3"], "+", 
  RowBox[{
   FractionBox["4", "7"], " ", "a7", " ", 
   SuperscriptBox["Tprime", 
    RowBox[{"7", "/", "2"}]]}], "-", 
  FractionBox[
   RowBox[{"a4", " ", 
    SuperscriptBox["Tprime", "4"]}], "3"], "-", 
  FractionBox[
   RowBox[{"a5", " ", 
    SuperscriptBox["Tprime", "6"]}], "5"], "-", 
  FractionBox[
   RowBox[{"a6", " ", 
    SuperscriptBox["Tprime", "8"]}], "7"], "-", 
  FractionBox[
   RowBox[{"a7", " ", 
    SuperscriptBox["Tprime", "10"]}], "9"]}]], "Output",
 CellChangeTimes->{{3.5371278518454*^9, 3.537127873302103*^9}, {
   3.53737615258843*^9, 3.537376176438985*^9}, 3.537377398620451*^9, 
   3.537377582105331*^9, 3.537377664202626*^9, 3.537377760584203*^9, 
   3.537377797500874*^9, 3.537377836613315*^9, 3.537377873380408*^9, 
   3.537377942852522*^9, 3.537378141507093*^9, 3.537378171758305*^9, 
   3.537378203544859*^9, 3.537378235691704*^9, 3.53737835023752*^9, 
   3.537379017786335*^9, {3.537480228966606*^9, 3.537480257553439*^9}, 
   3.537511425317646*^9, 3.537512118945949*^9, 3.537512812420645*^9, 
   3.537736596219942*^9, 3.537736627199543*^9, 3.538177320633715*^9, 
   3.538177355438852*^9, 3.539267366456789*^9, 3.539267397628479*^9, 
   3.539629511946844*^9, 3.539629544556015*^9, 3.54030005005884*^9, 
   3.54030008490621*^9, 3.543309219272642*^9, 3.543574062033073*^9, 
   3.551289515102541*^9, 3.551289553722003*^9, 3.553196292152828*^9, 
   3.553196326835755*^9, 3.553539562712827*^9, 3.553539602439235*^9, 
   3.554812051667347*^9, 3.55481208867548*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"4", " ", "a1", " ", 
   SqrtBox["Tprime"]}], "-", "Tprime", "+", 
  RowBox[{"2", " ", "a2", " ", "Tprime"}], "+", 
  RowBox[{
   FractionBox["4", "3"], " ", "a3", " ", 
   SuperscriptBox["Tprime", 
    RowBox[{"3", "/", "2"}]]}], "+", 
  RowBox[{"a4", " ", 
   SuperscriptBox["Tprime", "2"]}], "+", 
  RowBox[{
   FractionBox["4", "5"], " ", "a5", " ", 
   SuperscriptBox["Tprime", 
    RowBox[{"5", "/", "2"}]]}], "+", 
  FractionBox[
   RowBox[{"2", " ", "a6", " ", 
    SuperscriptBox["Tprime", "3"]}], "3"], "+", 
  RowBox[{
   FractionBox["4", "7"], " ", "a7", " ", 
   SuperscriptBox["Tprime", 
    RowBox[{"7", "/", "2"}]]}], "-", 
  RowBox[{"Tprime", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["a1", 
       RowBox[{"3", " ", 
        SuperscriptBox["Tprime", "3"]}]]}], "-", 
     FractionBox["a2", "Tprime"], "+", 
     RowBox[{"a3", " ", "Tprime"}], "+", 
     FractionBox[
      RowBox[{"a4", " ", 
       SuperscriptBox["Tprime", "3"]}], "3"], "+", 
     FractionBox[
      RowBox[{"a5", " ", 
       SuperscriptBox["Tprime", "5"]}], "5"], "+", 
     FractionBox[
      RowBox[{"a6", " ", 
       SuperscriptBox["Tprime", "7"]}], "7"], "+", 
     FractionBox[
      RowBox[{"a7", " ", 
       SuperscriptBox["Tprime", "9"]}], "9"]}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.5371278518454*^9, 3.537127873302103*^9}, {
   3.53737615258843*^9, 3.537376176438985*^9}, 3.537377398620451*^9, 
   3.537377582105331*^9, 3.537377664202626*^9, 3.537377760584203*^9, 
   3.537377797500874*^9, 3.537377836613315*^9, 3.537377873380408*^9, 
   3.537377942852522*^9, 3.537378141507093*^9, 3.537378171758305*^9, 
   3.537378203544859*^9, 3.537378235691704*^9, 3.53737835023752*^9, 
   3.537379017786335*^9, {3.537480228966606*^9, 3.537480257553439*^9}, 
   3.537511425317646*^9, 3.537512118945949*^9, 3.537512812420645*^9, 
   3.537736596219942*^9, 3.537736627199543*^9, 3.538177320633715*^9, 
   3.538177355438852*^9, 3.539267366456789*^9, 3.539267397628479*^9, 
   3.539629511946844*^9, 3.539629544556015*^9, 3.54030005005884*^9, 
   3.54030008490621*^9, 3.543309219272642*^9, 3.543574062033073*^9, 
   3.551289515102541*^9, 3.551289553722003*^9, 3.553196292152828*^9, 
   3.553196326835755*^9, 3.553539562712827*^9, 3.553539602439235*^9, 
   3.554812051667347*^9, 3.554812088678445*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"4", " ", "a1", " ", 
   SqrtBox["Tprime"]}], "-", "Tprime", "+", 
  RowBox[{"2", " ", "a2", " ", "Tprime"}], "+", 
  RowBox[{
   FractionBox["4", "3"], " ", "a3", " ", 
   SuperscriptBox["Tprime", 
    RowBox[{"3", "/", "2"}]]}], "+", 
  RowBox[{"a4", " ", 
   SuperscriptBox["Tprime", "2"]}], "+", 
  RowBox[{
   FractionBox["4", "5"], " ", "a5", " ", 
   SuperscriptBox["Tprime", 
    RowBox[{"5", "/", "2"}]]}], "+", 
  FractionBox[
   RowBox[{"2", " ", "a6", " ", 
    SuperscriptBox["Tprime", "3"]}], "3"], "+", 
  RowBox[{
   FractionBox["4", "7"], " ", "a7", " ", 
   SuperscriptBox["Tprime", 
    RowBox[{"7", "/", "2"}]]}]}]], "Output",
 CellChangeTimes->{{3.5371278518454*^9, 3.537127873302103*^9}, {
   3.53737615258843*^9, 3.537376176438985*^9}, 3.537377398620451*^9, 
   3.537377582105331*^9, 3.537377664202626*^9, 3.537377760584203*^9, 
   3.537377797500874*^9, 3.537377836613315*^9, 3.537377873380408*^9, 
   3.537377942852522*^9, 3.537378141507093*^9, 3.537378171758305*^9, 
   3.537378203544859*^9, 3.537378235691704*^9, 3.53737835023752*^9, 
   3.537379017786335*^9, {3.537480228966606*^9, 3.537480257553439*^9}, 
   3.537511425317646*^9, 3.537512118945949*^9, 3.537512812420645*^9, 
   3.537736596219942*^9, 3.537736627199543*^9, 3.538177320633715*^9, 
   3.538177355438852*^9, 3.539267366456789*^9, 3.539267397628479*^9, 
   3.539629511946844*^9, 3.539629544556015*^9, 3.54030005005884*^9, 
   3.54030008490621*^9, 3.543309219272642*^9, 3.543574062033073*^9, 
   3.551289515102541*^9, 3.551289553722003*^9, 3.553196292152828*^9, 
   3.553196326835755*^9, 3.553539562712827*^9, 3.553539602439235*^9, 
   3.554812051667347*^9, 3.554812088681203*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"??", "?"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], "/", 
   RowBox[{"(", 
    RowBox[{"2", "*", 
     RowBox[{"Sqrt", "[", "T", "]"}]}], ")"}]}], "]"}], "\n", 
 RowBox[{
  RowBox[{"s0prime", "[", "T_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"cp0", "[", "T", "]"}], "/", 
      RowBox[{"(", 
       RowBox[{"2", "*", 
        RowBox[{"Sqrt", "[", "T", "]"}]}], ")"}]}], ",", "T"}], "]"}], 
   "]"}]}], "\n", 
 RowBox[{"s0prime", "[", "T", "]"}], "\n", 
 RowBox[{
  RowBox[{"f1", "[", "x_", "]"}], ":=", 
  RowBox[{"Expand", "[", 
   RowBox[{"D", "[", 
    RowBox[{
     RowBox[{"s0prime", "[", "T", "]"}], ",", "T"}], "]"}], "]"}]}], "\n", 
 RowBox[{"f1", "[", "x", "]"}]}], "Code"],

Cell[BoxData[
 RowBox[{
  FractionBox["a1", 
   RowBox[{"2", " ", 
    SuperscriptBox["T", 
     RowBox[{"5", "/", "2"}]]}]], "+", 
  FractionBox["a2", 
   RowBox[{"2", " ", 
    SuperscriptBox["T", 
     RowBox[{"3", "/", "2"}]]}]], "+", 
  FractionBox["a3", 
   RowBox[{"2", " ", 
    SqrtBox["T"]}]], "+", 
  FractionBox[
   RowBox[{"a4", " ", 
    SqrtBox["T"]}], "2"], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a5", " ", 
   SuperscriptBox["T", 
    RowBox[{"3", "/", "2"}]]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a6", " ", 
   SuperscriptBox["T", 
    RowBox[{"5", "/", "2"}]]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a7", " ", 
   SuperscriptBox["T", 
    RowBox[{"7", "/", "2"}]]}]}]], "Output",
 CellChangeTimes->{{3.53712785218535*^9, 3.537127873576732*^9}, {
   3.537376153067509*^9, 3.537376176736693*^9}, 3.537377398886865*^9, 
   3.537377582340657*^9, 3.537377664424829*^9, 3.537377760800997*^9, 
   3.537377797888125*^9, 3.537377836817095*^9, 3.537377873652237*^9, 
   3.5373779431202*^9, 3.537378141711679*^9, 3.537378171926707*^9, 
   3.537378203765112*^9, 3.53737823587132*^9, 3.537378350417448*^9, 
   3.537379017977642*^9, {3.537480229245381*^9, 3.537480257737115*^9}, 
   3.537511425935524*^9, 3.537512119121589*^9, 3.537512812603999*^9, 
   3.537736596689116*^9, 3.537736627504576*^9, 3.538177321227142*^9, 
   3.538177355825146*^9, 3.539267366769388*^9, 3.539267397787657*^9, 
   3.539629512371722*^9, 3.539629544719457*^9, 3.540300050459195*^9, 
   3.540300085114196*^9, 3.543309219514375*^9, 3.543574062302291*^9, 
   3.551289515595469*^9, 3.551289553903683*^9, 3.553196292567359*^9, 
   3.553196327126168*^9, 3.553539563184871*^9, 3.553539602673532*^9, 
   3.554812052145979*^9, 3.554812088702963*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   FractionBox["a1", 
    RowBox[{"3", " ", 
     SuperscriptBox["T", 
      RowBox[{"3", "/", "2"}]]}]]}], "-", 
  FractionBox["a2", 
   SqrtBox["T"]], "+", 
  RowBox[{"a3", " ", 
   SqrtBox["T"]}], "+", 
  RowBox[{
   FractionBox["1", "3"], " ", "a4", " ", 
   SuperscriptBox["T", 
    RowBox[{"3", "/", "2"}]]}], "+", 
  RowBox[{
   FractionBox["1", "5"], " ", "a5", " ", 
   SuperscriptBox["T", 
    RowBox[{"5", "/", "2"}]]}], "+", 
  RowBox[{
   FractionBox["1", "7"], " ", "a6", " ", 
   SuperscriptBox["T", 
    RowBox[{"7", "/", "2"}]]}], "+", 
  RowBox[{
   FractionBox["1", "9"], " ", "a7", " ", 
   SuperscriptBox["T", 
    RowBox[{"9", "/", "2"}]]}]}]], "Output",
 CellChangeTimes->{{3.53712785218535*^9, 3.537127873576732*^9}, {
   3.537376153067509*^9, 3.537376176736693*^9}, 3.537377398886865*^9, 
   3.537377582340657*^9, 3.537377664424829*^9, 3.537377760800997*^9, 
   3.537377797888125*^9, 3.537377836817095*^9, 3.537377873652237*^9, 
   3.5373779431202*^9, 3.537378141711679*^9, 3.537378171926707*^9, 
   3.537378203765112*^9, 3.53737823587132*^9, 3.537378350417448*^9, 
   3.537379017977642*^9, {3.537480229245381*^9, 3.537480257737115*^9}, 
   3.537511425935524*^9, 3.537512119121589*^9, 3.537512812603999*^9, 
   3.537736596689116*^9, 3.537736627504576*^9, 3.538177321227142*^9, 
   3.538177355825146*^9, 3.539267366769388*^9, 3.539267397787657*^9, 
   3.539629512371722*^9, 3.539629544719457*^9, 3.540300050459195*^9, 
   3.540300085114196*^9, 3.543309219514375*^9, 3.543574062302291*^9, 
   3.551289515595469*^9, 3.551289553903683*^9, 3.553196292567359*^9, 
   3.553196327126168*^9, 3.553539563184871*^9, 3.553539602673532*^9, 
   3.554812052145979*^9, 3.554812088758417*^9}],

Cell[BoxData[
 RowBox[{
  FractionBox["a1", 
   RowBox[{"2", " ", 
    SuperscriptBox["T", 
     RowBox[{"5", "/", "2"}]]}]], "+", 
  FractionBox["a2", 
   RowBox[{"2", " ", 
    SuperscriptBox["T", 
     RowBox[{"3", "/", "2"}]]}]], "+", 
  FractionBox["a3", 
   RowBox[{"2", " ", 
    SqrtBox["T"]}]], "+", 
  FractionBox[
   RowBox[{"a4", " ", 
    SqrtBox["T"]}], "2"], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a5", " ", 
   SuperscriptBox["T", 
    RowBox[{"3", "/", "2"}]]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a6", " ", 
   SuperscriptBox["T", 
    RowBox[{"5", "/", "2"}]]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a7", " ", 
   SuperscriptBox["T", 
    RowBox[{"7", "/", "2"}]]}]}]], "Output",
 CellChangeTimes->{{3.53712785218535*^9, 3.537127873576732*^9}, {
   3.537376153067509*^9, 3.537376176736693*^9}, 3.537377398886865*^9, 
   3.537377582340657*^9, 3.537377664424829*^9, 3.537377760800997*^9, 
   3.537377797888125*^9, 3.537377836817095*^9, 3.537377873652237*^9, 
   3.5373779431202*^9, 3.537378141711679*^9, 3.537378171926707*^9, 
   3.537378203765112*^9, 3.53737823587132*^9, 3.537378350417448*^9, 
   3.537379017977642*^9, {3.537480229245381*^9, 3.537480257737115*^9}, 
   3.537511425935524*^9, 3.537512119121589*^9, 3.537512812603999*^9, 
   3.537736596689116*^9, 3.537736627504576*^9, 3.538177321227142*^9, 
   3.538177355825146*^9, 3.539267366769388*^9, 3.539267397787657*^9, 
   3.539629512371722*^9, 3.539629544719457*^9, 3.540300050459195*^9, 
   3.540300085114196*^9, 3.543309219514375*^9, 3.543574062302291*^9, 
   3.551289515595469*^9, 3.551289553903683*^9, 3.553196292567359*^9, 
   3.553196327126168*^9, 3.553539563184871*^9, 3.553539602673532*^9, 
   3.554812052145979*^9, 3.554812088761164*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"??", "?"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Series", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"T", "^", "2"}], "*", 
    RowBox[{
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"h0H2", "[", "T", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"R", "*", "T"}], ")"}]}], "]"}], "/", 
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"h0H2", "[", "298.15", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"R", "*", "298.15"}], ")"}]}], "]"}]}]}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "298.15", ",", "6"}], "}"}]}], "]"}], "\n", 
 RowBox[{"Series", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"T", "^", "2"}], "*", 
    RowBox[{
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"h0H2O", "[", "T", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"R", "*", "T"}], ")"}]}], "]"}], "/", 
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"h0H2O", "[", "298.15", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"R", "*", "298.15"}], ")"}]}], "]"}]}]}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "298.15", ",", "6"}], "}"}]}], "]"}], "\n", 
 RowBox[{"Series", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"T", "^", "2"}], "*", 
    RowBox[{
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"h0O2", "[", "T", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"R", "*", "T"}], ")"}]}], "]"}], "/", 
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"h0O2", "[", "298.15", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"R", "*", "T"}], ")"}]}], "]"}]}]}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "298.15", ",", "6"}], "}"}]}], "]"}], "\n", 
 RowBox[{"Series", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"T", "^", "2"}], "*", 
    RowBox[{
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"s0H2", "[", "T", "]"}], "/", "R"}], "]"}], "/", 
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"s0H2", "[", "298.15", "]"}], "/", "R"}], "]"}]}]}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "298.15", ",", "6"}], "}"}]}], "]"}], "\n", 
 RowBox[{"Series", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"T", "^", "2"}], "*", 
    RowBox[{
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"s0H2O", "[", "T", "]"}], "/", "R"}], "]"}], "/", 
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"s0H2O", "[", "298.15", "]"}], "/", "R"}], "]"}]}]}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "298.15", ",", "6"}], "}"}]}], "]"}], "\n", 
 RowBox[{"Series", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"T", "^", "2"}], "*", 
    RowBox[{
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"s0O2", "[", "T", "]"}], "/", "R"}], "]"}], "/", 
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"s0O2", "[", "298.15", "]"}], "/", "R"}], "]"}]}]}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "298.15", ",", "6"}], "}"}]}], "]"}], "\n", 
 RowBox[{"Series", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"T", "^", "2"}], "*", 
    RowBox[{
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"g0H2", "[", "T", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"R", "*", "T"}], ")"}]}], "]"}], "/", 
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"g0H2", "[", "298.15", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"R", "*", "298.15"}], ")"}]}], "]"}]}]}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "298.15", ",", "6"}], "}"}]}], "]"}], "\n", 
 RowBox[{"Series", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"T", "^", "2"}], "*", 
    RowBox[{
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"g0H2O", "[", "T", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"R", "*", "T"}], ")"}]}], "]"}], "/", 
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"g0H2O", "[", "298.15", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"R", "*", "298.15"}], ")"}]}], "]"}]}]}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "298.15", ",", "6"}], "}"}]}], "]"}], "\n", 
 RowBox[{"Series", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"T", "^", "2"}], "*", 
    RowBox[{
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"g0O2", "[", "T", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"R", "*", "T"}], ")"}]}], "]"}], "/", 
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"g0O2", "[", "298.15", "]"}], "/", 
       RowBox[{"(", 
        RowBox[{"R", "*", "298.15"}], ")"}]}], "]"}]}]}], ",", 
   RowBox[{"{", 
    RowBox[{"T", ",", "298.15", ",", "6"}], "}"}]}], "]"}]}], "Code"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "unfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Underflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/unfl\\\", ButtonNote -> \
\\\"General::unfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088865542*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "unfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Underflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/unfl\\\", ButtonNote -> \
\\\"General::unfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088868325*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"Indeterminate", "+", 
   RowBox[{"Indeterminate", " ", 
    RowBox[{"(", 
     RowBox[{"T", "-", "298.15`"}], ")"}]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "2"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "3"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "4"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "5"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "6"]}], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", 
      RowBox[{"T", "-", "298.15`"}], "]"}], "7"],
    SeriesData[$CellContext`T, 298.15, {}, 0, 7, 1],
    Editable->False]}],
  SeriesData[$CellContext`T, 298.15, {
   Indeterminate, Indeterminate, Indeterminate, Indeterminate, Indeterminate, 
    Indeterminate, Indeterminate}, 0, 7, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.537127852449529*^9, 3.537127873791729*^9}, {
   3.537376153374022*^9, 3.537376176802937*^9}, 3.537377399034388*^9, 
   3.537377582431955*^9, 3.537377664584119*^9, 3.537377760949315*^9, 
   3.537377798024469*^9, 3.537377837023052*^9, 3.537377873781675*^9, 
   3.537377943230982*^9, 3.537378141830136*^9, 3.537378172040187*^9, 
   3.537378203889477*^9, 3.537378235993441*^9, 3.537378350505688*^9, 
   3.537379018054552*^9, {3.537480229672829*^9, 3.537480257891556*^9}, 
   3.537511426089528*^9, 3.537512119245979*^9, 3.537512812704084*^9, 
   3.53773659719608*^9, 3.537736627659546*^9, 3.538177321830227*^9, 
   3.538177356011212*^9, 3.53926736744278*^9, 3.53926739791357*^9, 
   3.53962951293575*^9, 3.539629544871633*^9, 3.540300051254164*^9, 
   3.540300085302383*^9, 3.543309219987957*^9, 3.543574062877814*^9, 
   3.551289516003378*^9, 3.551289554063996*^9, 3.553196292898951*^9, 
   3.553196327239172*^9, 3.55353956367244*^9, 3.553539602810459*^9, 
   3.554812052525326*^9, 3.554812088870489*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "unfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Underflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/unfl\\\", ButtonNote -> \
\\\"General::unfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088872745*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "unfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Underflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/unfl\\\", ButtonNote -> \
\\\"General::unfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088874607*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"Indeterminate", "+", 
   RowBox[{"Indeterminate", " ", 
    RowBox[{"(", 
     RowBox[{"T", "-", "298.15`"}], ")"}]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "2"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "3"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "4"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "5"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "6"]}], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", 
      RowBox[{"T", "-", "298.15`"}], "]"}], "7"],
    SeriesData[$CellContext`T, 298.15, {}, 0, 7, 1],
    Editable->False]}],
  SeriesData[$CellContext`T, 298.15, {
   Indeterminate, Indeterminate, Indeterminate, Indeterminate, Indeterminate, 
    Indeterminate, Indeterminate}, 0, 7, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.537127852449529*^9, 3.537127873791729*^9}, {
   3.537376153374022*^9, 3.537376176802937*^9}, 3.537377399034388*^9, 
   3.537377582431955*^9, 3.537377664584119*^9, 3.537377760949315*^9, 
   3.537377798024469*^9, 3.537377837023052*^9, 3.537377873781675*^9, 
   3.537377943230982*^9, 3.537378141830136*^9, 3.537378172040187*^9, 
   3.537378203889477*^9, 3.537378235993441*^9, 3.537378350505688*^9, 
   3.537379018054552*^9, {3.537480229672829*^9, 3.537480257891556*^9}, 
   3.537511426089528*^9, 3.537512119245979*^9, 3.537512812704084*^9, 
   3.53773659719608*^9, 3.537736627659546*^9, 3.538177321830227*^9, 
   3.538177356011212*^9, 3.53926736744278*^9, 3.53926739791357*^9, 
   3.53962951293575*^9, 3.539629544871633*^9, 3.540300051254164*^9, 
   3.540300085302383*^9, 3.543309219987957*^9, 3.543574062877814*^9, 
   3.551289516003378*^9, 3.551289554063996*^9, 3.553196292898951*^9, 
   3.553196327239172*^9, 3.55353956367244*^9, 3.553539602810459*^9, 
   3.554812052525326*^9, 3.554812088876789*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"88893.443693846`", "-", 
   RowBox[{"3.286859411137493`*^12", " ", 
    RowBox[{"(", 
     RowBox[{"T", "-", "298.15`"}], ")"}]}], "+", 
   RowBox[{"6.076626320235076`*^19", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "2"]}], "-", 
   RowBox[{"7.489497385761837`*^26", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "3"]}], "+", 
   RowBox[{"6.923155402089748`*^33", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "4"]}], "-", 
   RowBox[{"5.119711326089927`*^40", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "5"]}], "+", 
   RowBox[{"3.155045465867729`*^47", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "6"]}], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", 
      RowBox[{"T", "-", "298.15`"}], "]"}], "7"],
    SeriesData[$CellContext`T, 298.15, {}, 0, 7, 1],
    Editable->False]}],
  SeriesData[$CellContext`T, 298.15, {88893.443693846, -3.286859411137493*^12,
    6.076626320235076*^19, -7.489497385761837*^26, 
   6.923155402089748*^33, -5.119711326089927*^40, 3.155045465867729*^47}, 0, 
   7, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.537127852449529*^9, 3.537127873791729*^9}, {
   3.537376153374022*^9, 3.537376176802937*^9}, 3.537377399034388*^9, 
   3.537377582431955*^9, 3.537377664584119*^9, 3.537377760949315*^9, 
   3.537377798024469*^9, 3.537377837023052*^9, 3.537377873781675*^9, 
   3.537377943230982*^9, 3.537378141830136*^9, 3.537378172040187*^9, 
   3.537378203889477*^9, 3.537378235993441*^9, 3.537378350505688*^9, 
   3.537379018054552*^9, {3.537480229672829*^9, 3.537480257891556*^9}, 
   3.537511426089528*^9, 3.537512119245979*^9, 3.537512812704084*^9, 
   3.53773659719608*^9, 3.537736627659546*^9, 3.538177321830227*^9, 
   3.538177356011212*^9, 3.53926736744278*^9, 3.53926739791357*^9, 
   3.53962951293575*^9, 3.539629544871633*^9, 3.540300051254164*^9, 
   3.540300085302383*^9, 3.543309219987957*^9, 3.543574062877814*^9, 
   3.551289516003378*^9, 3.551289554063996*^9, 3.553196292898951*^9, 
   3.553196327239172*^9, 3.55353956367244*^9, 3.553539602810459*^9, 
   3.554812052525326*^9, 3.554812088879424*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "unfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Underflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/unfl\\\", ButtonNote -> \
\\\"General::unfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088921041*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "unfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Underflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/unfl\\\", ButtonNote -> \
\\\"General::unfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088922869*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"Indeterminate", "+", 
   RowBox[{"Indeterminate", " ", 
    RowBox[{"(", 
     RowBox[{"T", "-", "298.15`"}], ")"}]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "2"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "3"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "4"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "5"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "6"]}], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", 
      RowBox[{"T", "-", "298.15`"}], "]"}], "7"],
    SeriesData[$CellContext`T, 298.15, {}, 0, 7, 1],
    Editable->False]}],
  SeriesData[$CellContext`T, 298.15, {
   Indeterminate, Indeterminate, Indeterminate, Indeterminate, Indeterminate, 
    Indeterminate, Indeterminate}, 0, 7, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.537127852449529*^9, 3.537127873791729*^9}, {
   3.537376153374022*^9, 3.537376176802937*^9}, 3.537377399034388*^9, 
   3.537377582431955*^9, 3.537377664584119*^9, 3.537377760949315*^9, 
   3.537377798024469*^9, 3.537377837023052*^9, 3.537377873781675*^9, 
   3.537377943230982*^9, 3.537378141830136*^9, 3.537378172040187*^9, 
   3.537378203889477*^9, 3.537378235993441*^9, 3.537378350505688*^9, 
   3.537379018054552*^9, {3.537480229672829*^9, 3.537480257891556*^9}, 
   3.537511426089528*^9, 3.537512119245979*^9, 3.537512812704084*^9, 
   3.53773659719608*^9, 3.537736627659546*^9, 3.538177321830227*^9, 
   3.538177356011212*^9, 3.53926736744278*^9, 3.53926739791357*^9, 
   3.53962951293575*^9, 3.539629544871633*^9, 3.540300051254164*^9, 
   3.540300085302383*^9, 3.543309219987957*^9, 3.543574062877814*^9, 
   3.551289516003378*^9, 3.551289554063996*^9, 3.553196292898951*^9, 
   3.553196327239172*^9, 3.55353956367244*^9, 3.553539602810459*^9, 
   3.554812052525326*^9, 3.554812088924831*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "ovfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Overflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/ovfl\\\", ButtonNote -> \
\\\"General::ovfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.55481208892696*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "ovfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Overflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/ovfl\\\", ButtonNote -> \
\\\"General::ovfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088928667*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"Indeterminate", "+", 
   RowBox[{"Indeterminate", " ", 
    RowBox[{"(", 
     RowBox[{"T", "-", "298.15`"}], ")"}]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "2"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "3"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "4"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "5"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "6"]}], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", 
      RowBox[{"T", "-", "298.15`"}], "]"}], "7"],
    SeriesData[$CellContext`T, 298.15, {}, 0, 7, 1],
    Editable->False]}],
  SeriesData[$CellContext`T, 298.15, {
   Indeterminate, Indeterminate, Indeterminate, Indeterminate, Indeterminate, 
    Indeterminate, Indeterminate}, 0, 7, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.537127852449529*^9, 3.537127873791729*^9}, {
   3.537376153374022*^9, 3.537376176802937*^9}, 3.537377399034388*^9, 
   3.537377582431955*^9, 3.537377664584119*^9, 3.537377760949315*^9, 
   3.537377798024469*^9, 3.537377837023052*^9, 3.537377873781675*^9, 
   3.537377943230982*^9, 3.537378141830136*^9, 3.537378172040187*^9, 
   3.537378203889477*^9, 3.537378235993441*^9, 3.537378350505688*^9, 
   3.537379018054552*^9, {3.537480229672829*^9, 3.537480257891556*^9}, 
   3.537511426089528*^9, 3.537512119245979*^9, 3.537512812704084*^9, 
   3.53773659719608*^9, 3.537736627659546*^9, 3.538177321830227*^9, 
   3.538177356011212*^9, 3.53926736744278*^9, 3.53926739791357*^9, 
   3.53962951293575*^9, 3.539629544871633*^9, 3.540300051254164*^9, 
   3.540300085302383*^9, 3.543309219987957*^9, 3.543574062877814*^9, 
   3.551289516003378*^9, 3.551289554063996*^9, 3.553196292898951*^9, 
   3.553196327239172*^9, 3.55353956367244*^9, 3.553539602810459*^9, 
   3.554812052525326*^9, 3.554812088930635*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "ovfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Overflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/ovfl\\\", ButtonNote -> \
\\\"General::ovfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088932783*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "ovfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Overflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/ovfl\\\", ButtonNote -> \
\\\"General::ovfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088934446*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"Indeterminate", "+", 
   RowBox[{"Indeterminate", " ", 
    RowBox[{"(", 
     RowBox[{"T", "-", "298.15`"}], ")"}]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "2"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "3"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "4"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "5"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "6"]}], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", 
      RowBox[{"T", "-", "298.15`"}], "]"}], "7"],
    SeriesData[$CellContext`T, 298.15, {}, 0, 7, 1],
    Editable->False]}],
  SeriesData[$CellContext`T, 298.15, {
   Indeterminate, Indeterminate, Indeterminate, Indeterminate, Indeterminate, 
    Indeterminate, Indeterminate}, 0, 7, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.537127852449529*^9, 3.537127873791729*^9}, {
   3.537376153374022*^9, 3.537376176802937*^9}, 3.537377399034388*^9, 
   3.537377582431955*^9, 3.537377664584119*^9, 3.537377760949315*^9, 
   3.537377798024469*^9, 3.537377837023052*^9, 3.537377873781675*^9, 
   3.537377943230982*^9, 3.537378141830136*^9, 3.537378172040187*^9, 
   3.537378203889477*^9, 3.537378235993441*^9, 3.537378350505688*^9, 
   3.537379018054552*^9, {3.537480229672829*^9, 3.537480257891556*^9}, 
   3.537511426089528*^9, 3.537512119245979*^9, 3.537512812704084*^9, 
   3.53773659719608*^9, 3.537736627659546*^9, 3.538177321830227*^9, 
   3.538177356011212*^9, 3.53926736744278*^9, 3.53926739791357*^9, 
   3.53962951293575*^9, 3.539629544871633*^9, 3.540300051254164*^9, 
   3.540300085302383*^9, 3.543309219987957*^9, 3.543574062877814*^9, 
   3.551289516003378*^9, 3.551289554063996*^9, 3.553196292898951*^9, 
   3.553196327239172*^9, 3.55353956367244*^9, 3.553539602810459*^9, 
   3.554812052525326*^9, 3.554812088936413*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "unfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Underflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/unfl\\\", ButtonNote -> \
\\\"General::unfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088938569*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "unfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Underflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/unfl\\\", ButtonNote -> \
\\\"General::unfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088940322*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"Indeterminate", "+", 
   RowBox[{"Indeterminate", " ", 
    RowBox[{"(", 
     RowBox[{"T", "-", "298.15`"}], ")"}]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "2"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "3"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "4"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "5"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "6"]}], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", 
      RowBox[{"T", "-", "298.15`"}], "]"}], "7"],
    SeriesData[$CellContext`T, 298.15, {}, 0, 7, 1],
    Editable->False]}],
  SeriesData[$CellContext`T, 298.15, {
   Indeterminate, Indeterminate, Indeterminate, Indeterminate, Indeterminate, 
    Indeterminate, Indeterminate}, 0, 7, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.537127852449529*^9, 3.537127873791729*^9}, {
   3.537376153374022*^9, 3.537376176802937*^9}, 3.537377399034388*^9, 
   3.537377582431955*^9, 3.537377664584119*^9, 3.537377760949315*^9, 
   3.537377798024469*^9, 3.537377837023052*^9, 3.537377873781675*^9, 
   3.537377943230982*^9, 3.537378141830136*^9, 3.537378172040187*^9, 
   3.537378203889477*^9, 3.537378235993441*^9, 3.537378350505688*^9, 
   3.537379018054552*^9, {3.537480229672829*^9, 3.537480257891556*^9}, 
   3.537511426089528*^9, 3.537512119245979*^9, 3.537512812704084*^9, 
   3.53773659719608*^9, 3.537736627659546*^9, 3.538177321830227*^9, 
   3.538177356011212*^9, 3.53926736744278*^9, 3.53926739791357*^9, 
   3.53962951293575*^9, 3.539629544871633*^9, 3.540300051254164*^9, 
   3.540300085302383*^9, 3.543309219987957*^9, 3.543574062877814*^9, 
   3.551289516003378*^9, 3.551289554063996*^9, 3.553196292898951*^9, 
   3.553196327239172*^9, 3.55353956367244*^9, 3.553539602810459*^9, 
   3.554812052525326*^9, 3.55481208894225*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "unfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Underflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/unfl\\\", ButtonNote -> \
\\\"General::unfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088944354*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "unfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Underflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/unfl\\\", ButtonNote -> \
\\\"General::unfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088946018*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"Indeterminate", "+", 
   RowBox[{"Indeterminate", " ", 
    RowBox[{"(", 
     RowBox[{"T", "-", "298.15`"}], ")"}]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "2"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "3"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "4"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "5"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "6"]}], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", 
      RowBox[{"T", "-", "298.15`"}], "]"}], "7"],
    SeriesData[$CellContext`T, 298.15, {}, 0, 7, 1],
    Editable->False]}],
  SeriesData[$CellContext`T, 298.15, {
   Indeterminate, Indeterminate, Indeterminate, Indeterminate, Indeterminate, 
    Indeterminate, Indeterminate}, 0, 7, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.537127852449529*^9, 3.537127873791729*^9}, {
   3.537376153374022*^9, 3.537376176802937*^9}, 3.537377399034388*^9, 
   3.537377582431955*^9, 3.537377664584119*^9, 3.537377760949315*^9, 
   3.537377798024469*^9, 3.537377837023052*^9, 3.537377873781675*^9, 
   3.537377943230982*^9, 3.537378141830136*^9, 3.537378172040187*^9, 
   3.537378203889477*^9, 3.537378235993441*^9, 3.537378350505688*^9, 
   3.537379018054552*^9, {3.537480229672829*^9, 3.537480257891556*^9}, 
   3.537511426089528*^9, 3.537512119245979*^9, 3.537512812704084*^9, 
   3.53773659719608*^9, 3.537736627659546*^9, 3.538177321830227*^9, 
   3.538177356011212*^9, 3.53926736744278*^9, 3.53926739791357*^9, 
   3.53962951293575*^9, 3.539629544871633*^9, 3.540300051254164*^9, 
   3.540300085302383*^9, 3.543309219987957*^9, 3.543574062877814*^9, 
   3.551289516003378*^9, 3.551289554063996*^9, 3.553196292898951*^9, 
   3.553196327239172*^9, 3.55353956367244*^9, 3.553539602810459*^9, 
   3.554812052525326*^9, 3.554812088947936*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "unfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Underflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/unfl\\\", ButtonNote -> \
\\\"General::unfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088950199*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"General", "::", "unfl"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Underflow occurred in computation. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/unfl\\\", ButtonNote -> \
\\\"General::unfl\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852421395*^9, 3.537127873786108*^9}, {
   3.537376153330627*^9, 3.537376176798074*^9}, 3.537377399029486*^9, 
   3.537377582426916*^9, 3.537377664579199*^9, 3.537377760944055*^9, 
   3.537377798019642*^9, 3.537377837016567*^9, 3.537377873776745*^9, 
   3.537377943225651*^9, 3.537378141825346*^9, 3.537378172035261*^9, 
   3.53737820388448*^9, 3.537378235988391*^9, 3.53737835050066*^9, 
   3.537379018049457*^9, {3.53748022946536*^9, 3.537480257885273*^9}, 
   3.53751142601873*^9, 3.537512119241402*^9, 3.537512812699388*^9, 
   3.537736596999942*^9, 3.537736627654675*^9, 3.538177321617395*^9, 
   3.538177356006284*^9, 3.539267367160656*^9, 3.539267397876458*^9, 
   3.539629512721955*^9, 3.539629544866629*^9, 3.540300050916234*^9, 
   3.540300085297282*^9, 3.543309219745264*^9, 3.543574062609939*^9, 
   3.551289515962723*^9, 3.551289554043742*^9, 3.553196292859545*^9, 
   3.553196327234282*^9, 3.553539563400584*^9, 3.553539602802339*^9, 
   3.554812052473225*^9, 3.554812088951917*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"Indeterminate", "+", 
   RowBox[{"Indeterminate", " ", 
    RowBox[{"(", 
     RowBox[{"T", "-", "298.15`"}], ")"}]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "2"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "3"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "4"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "5"]}], "+", 
   RowBox[{"Indeterminate", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"T", "-", "298.15`"}], ")"}], "6"]}], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", 
      RowBox[{"T", "-", "298.15`"}], "]"}], "7"],
    SeriesData[$CellContext`T, 298.15, {}, 0, 7, 1],
    Editable->False]}],
  SeriesData[$CellContext`T, 298.15, {
   Indeterminate, Indeterminate, Indeterminate, Indeterminate, Indeterminate, 
    Indeterminate, Indeterminate}, 0, 7, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.537127852449529*^9, 3.537127873791729*^9}, {
   3.537376153374022*^9, 3.537376176802937*^9}, 3.537377399034388*^9, 
   3.537377582431955*^9, 3.537377664584119*^9, 3.537377760949315*^9, 
   3.537377798024469*^9, 3.537377837023052*^9, 3.537377873781675*^9, 
   3.537377943230982*^9, 3.537378141830136*^9, 3.537378172040187*^9, 
   3.537378203889477*^9, 3.537378235993441*^9, 3.537378350505688*^9, 
   3.537379018054552*^9, {3.537480229672829*^9, 3.537480257891556*^9}, 
   3.537511426089528*^9, 3.537512119245979*^9, 3.537512812704084*^9, 
   3.53773659719608*^9, 3.537736627659546*^9, 3.538177321830227*^9, 
   3.538177356011212*^9, 3.53926736744278*^9, 3.53926739791357*^9, 
   3.53962951293575*^9, 3.539629544871633*^9, 3.540300051254164*^9, 
   3.540300085302383*^9, 3.543309219987957*^9, 3.543574062877814*^9, 
   3.551289516003378*^9, 3.551289554063996*^9, 3.553196292898951*^9, 
   3.553196327239172*^9, 3.55353956367244*^9, 3.553539602810459*^9, 
   3.554812052525326*^9, 3.554812088953872*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{"Properties", " ", "of", " ", "e"}], "-"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"cp0eminus", "[", "T", "]"}], "\n", 
 RowBox[{"h0eminus", "[", "T", "]"}], "\n", 
 RowBox[{"s0eminus", "[", "T", "]"}], "\n", 
 RowBox[{"g0eminus", "[", "T", "]"}]}], "Code"],

Cell[BoxData["2.5`"], "Output",
 CellChangeTimes->{{3.53712785266998*^9, 3.537127873913131*^9}, {
   3.53737615357985*^9, 3.537376176943584*^9}, 3.537377399162954*^9, 
   3.537377582617621*^9, 3.537377664697502*^9, 3.537377761102807*^9, 
   3.537377798087794*^9, 3.537377837203788*^9, 3.537377873884711*^9, 
   3.53737794344305*^9, 3.537378141968092*^9, 3.537378172105195*^9, 
   3.537378203998695*^9, 3.537378236101161*^9, 3.537378350633274*^9, 
   3.537379018167486*^9, {3.537480229862787*^9, 3.537480258009878*^9}, 
   3.537511426287948*^9, 3.537512119358457*^9, 3.537512812789517*^9, 
   3.537736597262412*^9, 3.537736627797374*^9, 3.53817732199299*^9, 
   3.538177356215014*^9, 3.539267367512505*^9, 3.539267397981113*^9, 
   3.53962951301183*^9, 3.539629545085873*^9, 3.540300051448405*^9, 
   3.540300085377569*^9, 3.543309220142933*^9, 3.543574063017078*^9, 
   3.551289516078876*^9, 3.551289554171303*^9, 3.553196292989078*^9, 
   3.553196327481234*^9, 3.553539563784497*^9, 3.55353960295708*^9, 
   3.554812052592933*^9, 3.554812089038445*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "11297.169096138456`"}], "+", 
  RowBox[{"2.5`", " ", "T"}]}]], "Output",
 CellChangeTimes->{{3.53712785266998*^9, 3.537127873913131*^9}, {
   3.53737615357985*^9, 3.537376176943584*^9}, 3.537377399162954*^9, 
   3.537377582617621*^9, 3.537377664697502*^9, 3.537377761102807*^9, 
   3.537377798087794*^9, 3.537377837203788*^9, 3.537377873884711*^9, 
   3.53737794344305*^9, 3.537378141968092*^9, 3.537378172105195*^9, 
   3.537378203998695*^9, 3.537378236101161*^9, 3.537378350633274*^9, 
   3.537379018167486*^9, {3.537480229862787*^9, 3.537480258009878*^9}, 
   3.537511426287948*^9, 3.537512119358457*^9, 3.537512812789517*^9, 
   3.537736597262412*^9, 3.537736627797374*^9, 3.53817732199299*^9, 
   3.538177356215014*^9, 3.539267367512505*^9, 3.539267397981113*^9, 
   3.53962951301183*^9, 3.539629545085873*^9, 3.540300051448405*^9, 
   3.540300085377569*^9, 3.543309220142933*^9, 3.543574063017078*^9, 
   3.551289516078876*^9, 3.551289554171303*^9, 3.553196292989078*^9, 
   3.553196327481234*^9, 3.553539563784497*^9, 3.55353960295708*^9, 
   3.554812052592933*^9, 3.55481208904063*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "18.51686224851386`"}], "+", 
  RowBox[{"2.5`", " ", 
   RowBox[{"Log", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{{3.53712785266998*^9, 3.537127873913131*^9}, {
   3.53737615357985*^9, 3.537376176943584*^9}, 3.537377399162954*^9, 
   3.537377582617621*^9, 3.537377664697502*^9, 3.537377761102807*^9, 
   3.537377798087794*^9, 3.537377837203788*^9, 3.537377873884711*^9, 
   3.53737794344305*^9, 3.537378141968092*^9, 3.537378172105195*^9, 
   3.537378203998695*^9, 3.537378236101161*^9, 3.537378350633274*^9, 
   3.537379018167486*^9, {3.537480229862787*^9, 3.537480258009878*^9}, 
   3.537511426287948*^9, 3.537512119358457*^9, 3.537512812789517*^9, 
   3.537736597262412*^9, 3.537736627797374*^9, 3.53817732199299*^9, 
   3.538177356215014*^9, 3.539267367512505*^9, 3.539267397981113*^9, 
   3.53962951301183*^9, 3.539629545085873*^9, 3.540300051448405*^9, 
   3.540300085377569*^9, 3.543309220142933*^9, 3.543574063017078*^9, 
   3.551289516078876*^9, 3.551289554171303*^9, 3.553196292989078*^9, 
   3.553196327481234*^9, 3.553539563784497*^9, 3.55353960295708*^9, 
   3.554812052592933*^9, 3.554812089042741*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "11297.169096138456`"}], "+", 
  RowBox[{"21.01686224851386`", " ", "T"}], "-", 
  RowBox[{"2.5`", " ", "T", " ", 
   RowBox[{"Log", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{{3.53712785266998*^9, 3.537127873913131*^9}, {
   3.53737615357985*^9, 3.537376176943584*^9}, 3.537377399162954*^9, 
   3.537377582617621*^9, 3.537377664697502*^9, 3.537377761102807*^9, 
   3.537377798087794*^9, 3.537377837203788*^9, 3.537377873884711*^9, 
   3.53737794344305*^9, 3.537378141968092*^9, 3.537378172105195*^9, 
   3.537378203998695*^9, 3.537378236101161*^9, 3.537378350633274*^9, 
   3.537379018167486*^9, {3.537480229862787*^9, 3.537480258009878*^9}, 
   3.537511426287948*^9, 3.537512119358457*^9, 3.537512812789517*^9, 
   3.537736597262412*^9, 3.537736627797374*^9, 3.53817732199299*^9, 
   3.538177356215014*^9, 3.539267367512505*^9, 3.539267397981113*^9, 
   3.53962951301183*^9, 3.539629545085873*^9, 3.540300051448405*^9, 
   3.540300085377569*^9, 3.543309220142933*^9, 3.543574063017078*^9, 
   3.551289516078876*^9, 3.551289554171303*^9, 3.553196292989078*^9, 
   3.553196327481234*^9, 3.553539563784497*^9, 3.55353960295708*^9, 
   3.554812052592933*^9, 3.554812089044888*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{
   "Try", " ", "to", " ", "invert", " ", "the", " ", "properties", " ", "of", 
    " ", "e"}], "-"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"cp0eminus", "[", "T", "]"}], "==", "x"}], ",", "T"}], 
  "]"}], "\n", 
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"h0eminus", "[", "T", "]"}], "==", "x"}], ",", "T"}], "]"}], "\n", 
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"h0eminus", "[", "T", "]"}], "/", "T"}], "==", "x"}], ",", "T"}],
   "]"}], "\n", 
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"s0eminus", "[", "T", "]"}], "==", "x"}], ",", "T"}], "]"}], "\n", 
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"g0eminus", "[", "T", "]"}], "==", "x"}], ",", "T"}], "]"}], "\n", 
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"g0eminus", "[", "T", "]"}], "/", "T"}], "==", "x"}], ",", "T"}],
   "]"}]}], "Code"],

Cell[BoxData[
 RowBox[{"{", "}"}]], "Output",
 CellChangeTimes->{{3.537127852775603*^9, 3.537127873993271*^9}, {
   3.537376153682581*^9, 3.537376177055435*^9}, 3.537377399250373*^9, 
   3.537377582714785*^9, 3.537377664773351*^9, 3.537377761174491*^9, 
   3.537377798154293*^9, 3.537377837357103*^9, 3.537377873950991*^9, 
   3.537377943576666*^9, 3.537378142030402*^9, 3.537378172166496*^9, 
   3.537378204067603*^9, 3.537378236168268*^9, 3.537378350717957*^9, 
   3.537379018246136*^9, {3.537480230050515*^9, 3.537480258099338*^9}, 
   3.537511426500297*^9, 3.537512119425387*^9, 3.537512812845169*^9, 
   3.537736597362787*^9, 3.53773662791825*^9, 3.538177322248711*^9, 
   3.538177356571186*^9, 3.539267367594544*^9, 3.539267398025784*^9, 
   3.539629513120838*^9, 3.539629545187234*^9, 3.540300051534208*^9, 
   3.540300085469241*^9, 3.543309220193689*^9, 3.543574063131603*^9, 
   3.55128951622078*^9, 3.551289554249334*^9, 3.553196293115386*^9, 
   3.553196327610962*^9, 3.55353956400037*^9, 3.553539603043418*^9, 
   3.554812052722785*^9, 3.554812089120316*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"T", "\[Rule]", 
    RowBox[{"0.4`", " ", 
     RowBox[{"(", 
      RowBox[{"11297.169096138456`", "\[VeryThinSpace]", "+", 
       RowBox[{"1.`", " ", "x"}]}], ")"}]}]}], "}"}], "}"}]], "Output",
 CellChangeTimes->{{3.537127852775603*^9, 3.537127873993271*^9}, {
   3.537376153682581*^9, 3.537376177055435*^9}, 3.537377399250373*^9, 
   3.537377582714785*^9, 3.537377664773351*^9, 3.537377761174491*^9, 
   3.537377798154293*^9, 3.537377837357103*^9, 3.537377873950991*^9, 
   3.537377943576666*^9, 3.537378142030402*^9, 3.537378172166496*^9, 
   3.537378204067603*^9, 3.537378236168268*^9, 3.537378350717957*^9, 
   3.537379018246136*^9, {3.537480230050515*^9, 3.537480258099338*^9}, 
   3.537511426500297*^9, 3.537512119425387*^9, 3.537512812845169*^9, 
   3.537736597362787*^9, 3.53773662791825*^9, 3.538177322248711*^9, 
   3.538177356571186*^9, 3.539267367594544*^9, 3.539267398025784*^9, 
   3.539629513120838*^9, 3.539629545187234*^9, 3.540300051534208*^9, 
   3.540300085469241*^9, 3.543309220193689*^9, 3.543574063131603*^9, 
   3.55128951622078*^9, 3.551289554249334*^9, 3.553196293115386*^9, 
   3.553196327610962*^9, 3.55353956400037*^9, 3.553539603043418*^9, 
   3.554812052722785*^9, 3.554812089122358*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Solve", "::", "ratnz"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Solve was unable to solve the system with inexact \
coefficients. The answer was obtained by solving a corresponding exact system \
and numericizing the result. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/Solve\\\", ButtonNote -> \
\\\"Solve::ratnz\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.537127852944356*^9, 3.537127873997284*^9}, {
   3.53737615385544*^9, 3.537376177059607*^9}, 3.537377399254137*^9, 
   3.537377582719794*^9, 3.537377664777652*^9, 3.537377761230058*^9, 
   3.537377798162906*^9, 3.537377837361456*^9, 3.537377873959829*^9, 
   3.537377943580991*^9, 3.537378142034705*^9, 3.537378172175559*^9, 
   3.53737820407142*^9, 3.537378236173768*^9, 3.537378350722668*^9, 
   3.537379018255361*^9, {3.537480230120388*^9, 3.537480258103264*^9}, 
   3.537511426572043*^9, 3.537512119429506*^9, 3.537512812849161*^9, 
   3.537736597473369*^9, 3.537736627922193*^9, 3.5381773223897*^9, 
   3.538177356574944*^9, 3.539267367770063*^9, 3.539267398062802*^9, 
   3.539629513271376*^9, 3.539629545191118*^9, 3.540300051724191*^9, 
   3.540300085472984*^9, 3.543309220377521*^9, 3.543574063414522*^9, 
   3.551289516301048*^9, 3.5512895542537*^9, 3.553196293244173*^9, 
   3.553196327615097*^9, 3.55353956410651*^9, 3.553539603047456*^9, 
   3.554812052877981*^9, 3.554812089124486*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"T", "\[Rule]", 
    RowBox[{"-", 
     FractionBox["22594.33819227691`", 
      RowBox[{
       RowBox[{"-", "5.`"}], "+", 
       RowBox[{"2.`", " ", "x"}]}]]}]}], "}"}], "}"}]], "Output",
 CellChangeTimes->{{3.537127852775603*^9, 3.537127873993271*^9}, {
   3.537376153682581*^9, 3.537376177055435*^9}, 3.537377399250373*^9, 
   3.537377582714785*^9, 3.537377664773351*^9, 3.537377761174491*^9, 
   3.537377798154293*^9, 3.537377837357103*^9, 3.537377873950991*^9, 
   3.537377943576666*^9, 3.537378142030402*^9, 3.537378172166496*^9, 
   3.537378204067603*^9, 3.537378236168268*^9, 3.537378350717957*^9, 
   3.537379018246136*^9, {3.537480230050515*^9, 3.537480258099338*^9}, 
   3.537511426500297*^9, 3.537512119425387*^9, 3.537512812845169*^9, 
   3.537736597362787*^9, 3.53773662791825*^9, 3.538177322248711*^9, 
   3.538177356571186*^9, 3.539267367594544*^9, 3.539267398025784*^9, 
   3.539629513120838*^9, 3.539629545187234*^9, 3.540300051534208*^9, 
   3.540300085469241*^9, 3.543309220193689*^9, 3.543574063131603*^9, 
   3.55128951622078*^9, 3.551289554249334*^9, 3.553196293115386*^9, 
   3.553196327610962*^9, 3.55353956400037*^9, 3.553539603043418*^9, 
   3.554812052722785*^9, 3.554812089126581*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"T", "\[Rule]", 
    RowBox[{"1647.0562776798351`", " ", 
     SuperscriptBox["\[ExponentialE]", 
      RowBox[{"0.4`", " ", "x"}]]}]}], "}"}], "}"}]], "Output",
 CellChangeTimes->{{3.537127852775603*^9, 3.537127873993271*^9}, {
   3.537376153682581*^9, 3.537376177055435*^9}, 3.537377399250373*^9, 
   3.537377582714785*^9, 3.537377664773351*^9, 3.537377761174491*^9, 
   3.537377798154293*^9, 3.537377837357103*^9, 3.537377873950991*^9, 
   3.537377943576666*^9, 3.537378142030402*^9, 3.537378172166496*^9, 
   3.537378204067603*^9, 3.537378236168268*^9, 3.537378350717957*^9, 
   3.537379018246136*^9, {3.537480230050515*^9, 3.537480258099338*^9}, 
   3.537511426500297*^9, 3.537512119425387*^9, 3.537512812845169*^9, 
   3.537736597362787*^9, 3.53773662791825*^9, 3.538177322248711*^9, 
   3.538177356571186*^9, 3.539267367594544*^9, 3.539267398025784*^9, 
   3.539629513120838*^9, 3.539629545187234*^9, 3.540300051534208*^9, 
   3.540300085469241*^9, 3.543309220193689*^9, 3.543574063131603*^9, 
   3.55128951622078*^9, 3.551289554249334*^9, 3.553196293115386*^9, 
   3.553196327610962*^9, 3.55353956400037*^9, 3.553539603043418*^9, 
   3.554812052722785*^9, 3.554812089128434*^9}],

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
 CellChangeTimes->{{3.537127852944356*^9, 3.537127873997284*^9}, {
   3.53737615385544*^9, 3.537376177059607*^9}, 3.537377399254137*^9, 
   3.537377582719794*^9, 3.537377664777652*^9, 3.537377761230058*^9, 
   3.537377798162906*^9, 3.537377837361456*^9, 3.537377873959829*^9, 
   3.537377943580991*^9, 3.537378142034705*^9, 3.537378172175559*^9, 
   3.53737820407142*^9, 3.537378236173768*^9, 3.537378350722668*^9, 
   3.537379018255361*^9, {3.537480230120388*^9, 3.537480258103264*^9}, 
   3.537511426572043*^9, 3.537512119429506*^9, 3.537512812849161*^9, 
   3.537736597473369*^9, 3.537736627922193*^9, 3.5381773223897*^9, 
   3.538177356574944*^9, 3.539267367770063*^9, 3.539267398062802*^9, 
   3.539629513271376*^9, 3.539629545191118*^9, 3.540300051724191*^9, 
   3.540300085472984*^9, 3.543309220377521*^9, 3.543574063414522*^9, 
   3.551289516301048*^9, 3.5512895542537*^9, 3.553196293244173*^9, 
   3.553196327615097*^9, 3.55353956410651*^9, 3.553539603047456*^9, 
   3.554812052877981*^9, 3.554812089130272*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"T", "\[Rule]", 
    FractionBox[
     RowBox[{
      RowBox[{"-", "4518.867638455383`"}], "-", 
      RowBox[{"0.4`", " ", "x"}]}], 
     RowBox[{"ProductLog", "[", 
      RowBox[{
       RowBox[{"-", "1.0093149360412017`"}], "-", 
       RowBox[{"0.00008934228809465204`", " ", "x"}]}], "]"}]]}], "}"}], 
  "}"}]], "Output",
 CellChangeTimes->{{3.537127852775603*^9, 3.537127873993271*^9}, {
   3.537376153682581*^9, 3.537376177055435*^9}, 3.537377399250373*^9, 
   3.537377582714785*^9, 3.537377664773351*^9, 3.537377761174491*^9, 
   3.537377798154293*^9, 3.537377837357103*^9, 3.537377873950991*^9, 
   3.537377943576666*^9, 3.537378142030402*^9, 3.537378172166496*^9, 
   3.537378204067603*^9, 3.537378236168268*^9, 3.537378350717957*^9, 
   3.537379018246136*^9, {3.537480230050515*^9, 3.537480258099338*^9}, 
   3.537511426500297*^9, 3.537512119425387*^9, 3.537512812845169*^9, 
   3.537736597362787*^9, 3.53773662791825*^9, 3.538177322248711*^9, 
   3.538177356571186*^9, 3.539267367594544*^9, 3.539267398025784*^9, 
   3.539629513120838*^9, 3.539629545187234*^9, 3.540300051534208*^9, 
   3.540300085469241*^9, 3.543309220193689*^9, 3.543574063131603*^9, 
   3.55128951622078*^9, 3.551289554249334*^9, 3.553196293115386*^9, 
   3.553196327610962*^9, 3.55353956400037*^9, 3.553539603043418*^9, 
   3.554812052722785*^9, 3.554812089132294*^9}],

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
 CellChangeTimes->{{3.537127852944356*^9, 3.537127873997284*^9}, {
   3.53737615385544*^9, 3.537376177059607*^9}, 3.537377399254137*^9, 
   3.537377582719794*^9, 3.537377664777652*^9, 3.537377761230058*^9, 
   3.537377798162906*^9, 3.537377837361456*^9, 3.537377873959829*^9, 
   3.537377943580991*^9, 3.537378142034705*^9, 3.537378172175559*^9, 
   3.53737820407142*^9, 3.537378236173768*^9, 3.537378350722668*^9, 
   3.537379018255361*^9, {3.537480230120388*^9, 3.537480258103264*^9}, 
   3.537511426572043*^9, 3.537512119429506*^9, 3.537512812849161*^9, 
   3.537736597473369*^9, 3.537736627922193*^9, 3.5381773223897*^9, 
   3.538177356574944*^9, 3.539267367770063*^9, 3.539267398062802*^9, 
   3.539629513271376*^9, 3.539629545191118*^9, 3.540300051724191*^9, 
   3.540300085472984*^9, 3.543309220377521*^9, 3.543574063414522*^9, 
   3.551289516301048*^9, 3.5512895542537*^9, 3.553196293244173*^9, 
   3.553196327615097*^9, 3.55353956410651*^9, 3.553539603047456*^9, 
   3.554812052877981*^9, 3.554812089134118*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"T", "\[Rule]", 
    RowBox[{"-", 
     FractionBox["4518.867638455383`", 
      RowBox[{"ProductLog", "[", 
       RowBox[{
        RowBox[{"-", "1.009314936041202`"}], " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"0.4`", " ", "x"}]]}], "]"}]]}]}], "}"}], "}"}]], "Output",
 CellChangeTimes->{{3.537127852775603*^9, 3.537127873993271*^9}, {
   3.537376153682581*^9, 3.537376177055435*^9}, 3.537377399250373*^9, 
   3.537377582714785*^9, 3.537377664773351*^9, 3.537377761174491*^9, 
   3.537377798154293*^9, 3.537377837357103*^9, 3.537377873950991*^9, 
   3.537377943576666*^9, 3.537378142030402*^9, 3.537378172166496*^9, 
   3.537378204067603*^9, 3.537378236168268*^9, 3.537378350717957*^9, 
   3.537379018246136*^9, {3.537480230050515*^9, 3.537480258099338*^9}, 
   3.537511426500297*^9, 3.537512119425387*^9, 3.537512812845169*^9, 
   3.537736597362787*^9, 3.53773662791825*^9, 3.538177322248711*^9, 
   3.538177356571186*^9, 3.539267367594544*^9, 3.539267398025784*^9, 
   3.539629513120838*^9, 3.539629545187234*^9, 3.540300051534208*^9, 
   3.540300085469241*^9, 3.543309220193689*^9, 3.543574063131603*^9, 
   3.55128951622078*^9, 3.551289554249334*^9, 3.553196293115386*^9, 
   3.553196327610962*^9, 3.55353956400037*^9, 3.553539603043418*^9, 
   3.554812052722785*^9, 3.554812089135985*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"??", "?"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"cp0H2", "[", "T", "]"}], "\n", 
 RowBox[{"InverseFourierTransform", "[", 
  RowBox[{
   RowBox[{"cp0H2", "[", "T", "]"}], ",", "T", ",", "\[Omega]"}], "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{"InverseFourierTransform", "[", 
   RowBox[{"%", ",", "\[Omega]", ",", "T"}], "]"}], "]"}], "\n", 
 RowBox[{"HermiteH", "[", 
  RowBox[{"10", ",", "t"}], "]"}], "\n", 
 RowBox[{"FourierTransform", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"Exp", "[", 
     RowBox[{"-", 
      RowBox[{"t", "^", "2"}]}], "]"}], 
    RowBox[{"HermiteH", "[", 
     RowBox[{"10", ",", "t"}], "]"}]}], ",", " ", "t", ",", "\[Omega]"}], 
  "]"}], "\n", 
 RowBox[{"InverseFourierTransform", "[", 
  RowBox[{"%", ",", "\[Omega]", ",", "t"}], "]"}]}], "Code"],

Cell[BoxData[
 RowBox[{"8.21470201`", "\[VeryThinSpace]", "+", 
  FractionBox["9.368525751857908`*^6", 
   SuperscriptBox["T", "2"]], "-", 
  FractionBox["12139.007749966331`", "T"], "-", 
  RowBox[{"0.0008377438678065582`", " ", "T"}], "+", 
  RowBox[{"7.633824650806259`*^-8", " ", 
   SuperscriptBox["T", "2"]}], "-", 
  RowBox[{"3.4548624367240156`*^-12", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"6.382707023082448`*^-17", " ", 
   SuperscriptBox["T", "4"]}]}]], "Output",
 CellChangeTimes->{{3.537127853084891*^9, 3.537127874080481*^9}, {
   3.537376154138999*^9, 3.537376177231616*^9}, 3.537377399291665*^9, 
   3.537377582929219*^9, 3.537377664861134*^9, 3.537377761268516*^9, 
   3.537377798243114*^9, 3.537377837583074*^9, 3.537377874043469*^9, 
   3.537377943763513*^9, 3.537378142110152*^9, 3.537378172290722*^9, 
   3.537378204103494*^9, 3.537378236282048*^9, 3.537378350828619*^9, 
   3.537379018356065*^9, {3.537480230218488*^9, 3.537480258180573*^9}, 
   3.537511426705634*^9, 3.537512119502434*^9, 3.53751281288076*^9, 
   3.537736597756252*^9, 3.537736627960421*^9, 3.538177322640651*^9, 
   3.538177356835377*^9, 3.539267367989683*^9, 3.539267398095641*^9, 
   3.539629513487147*^9, 3.539629545386954*^9, 3.540300051853688*^9, 
   3.540300085507405*^9, 3.543309220511327*^9, 3.543574063627811*^9, 
   3.551289516843433*^9, 3.551289554286824*^9, 3.553196293360846*^9, 
   3.553196327790575*^9, 3.553539564206081*^9, 3.553539603165301*^9, 
   3.554812053133164*^9, 3.554812089197841*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"20.59120432593411`", " ", 
   RowBox[{"DiracDelta", "[", "\[Omega]", "]"}]}], "+", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"0.`", "\[VeryThinSpace]", "+", 
     RowBox[{"15213.990026015223`", " ", "\[ImaginaryI]"}]}], ")"}], " ", 
   RowBox[{"Sign", "[", "\[Omega]", "]"}]}], "-", 
  RowBox[{"1.1741705770607842`*^7", " ", "\[Omega]", " ", 
   RowBox[{"Sign", "[", "\[Omega]", "]"}]}], "-", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"0.`", "\[VeryThinSpace]", "+", 
     RowBox[{"0.0020999124659426536`", " ", "\[ImaginaryI]"}]}], ")"}], " ", 
   RowBox[{
    SuperscriptBox["DiracDelta", "\[Prime]",
     MultilineFunction->None], "[", "\[Omega]", "]"}]}], "-", 
  RowBox[{"1.913516071328609`*^-7", " ", 
   RowBox[{
    SuperscriptBox["DiracDelta", "\[Prime]\[Prime]",
     MultilineFunction->None], "[", "\[Omega]", "]"}]}], "+", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"0.`", "\[VeryThinSpace]", "+", 
     RowBox[{"8.660055868852972`*^-12", " ", "\[ImaginaryI]"}]}], ")"}], " ", 
   
   RowBox[{
    SuperscriptBox["DiracDelta", 
     TagBox[
      RowBox[{"(", "3", ")"}],
      Derivative],
     MultilineFunction->None], "[", "\[Omega]", "]"}]}], "+", 
  RowBox[{"1.5999073892744324`*^-16", " ", 
   RowBox[{
    SuperscriptBox["DiracDelta", 
     TagBox[
      RowBox[{"(", "4", ")"}],
      Derivative],
     MultilineFunction->None], "[", "\[Omega]", "]"}]}]}]], "Output",
 CellChangeTimes->{{3.537127853084891*^9, 3.537127874080481*^9}, {
   3.537376154138999*^9, 3.537376177231616*^9}, 3.537377399291665*^9, 
   3.537377582929219*^9, 3.537377664861134*^9, 3.537377761268516*^9, 
   3.537377798243114*^9, 3.537377837583074*^9, 3.537377874043469*^9, 
   3.537377943763513*^9, 3.537378142110152*^9, 3.537378172290722*^9, 
   3.537378204103494*^9, 3.537378236282048*^9, 3.537378350828619*^9, 
   3.537379018356065*^9, {3.537480230218488*^9, 3.537480258180573*^9}, 
   3.537511426705634*^9, 3.537512119502434*^9, 3.53751281288076*^9, 
   3.537736597756252*^9, 3.537736627960421*^9, 3.538177322640651*^9, 
   3.538177356835377*^9, 3.539267367989683*^9, 3.539267398095641*^9, 
   3.539629513487147*^9, 3.539629545386954*^9, 3.540300051853688*^9, 
   3.540300085507405*^9, 3.543309220511327*^9, 3.543574063627811*^9, 
   3.551289516843433*^9, 3.551289554286824*^9, 3.553196293360846*^9, 
   3.553196327790575*^9, 3.553539564206081*^9, 3.553539603165301*^9, 
   3.554812053133164*^9, 3.554812089210263*^9}],

Cell[BoxData[
 RowBox[{"8.21470201`", "\[VeryThinSpace]", "+", 
  FractionBox["9.368525751857908`*^6", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox[
   RowBox[{"12139.007749966331`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.`", " ", "\[ImaginaryI]"}]}], "T"], "+", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"0.0008377438678065581`", "\[VeryThinSpace]", "+", 
     RowBox[{"0.`", " ", "\[ImaginaryI]"}]}], ")"}], " ", "T"}], "+", 
  RowBox[{"7.633824650806259`*^-8", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"3.454862436724015`*^-12", "+", 
     RowBox[{"0.`", " ", "\[ImaginaryI]"}]}], ")"}], " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"6.382707023082448`*^-17", " ", 
   SuperscriptBox["T", "4"]}]}]], "Output",
 CellChangeTimes->{{3.537127853084891*^9, 3.537127874080481*^9}, {
   3.537376154138999*^9, 3.537376177231616*^9}, 3.537377399291665*^9, 
   3.537377582929219*^9, 3.537377664861134*^9, 3.537377761268516*^9, 
   3.537377798243114*^9, 3.537377837583074*^9, 3.537377874043469*^9, 
   3.537377943763513*^9, 3.537378142110152*^9, 3.537378172290722*^9, 
   3.537378204103494*^9, 3.537378236282048*^9, 3.537378350828619*^9, 
   3.537379018356065*^9, {3.537480230218488*^9, 3.537480258180573*^9}, 
   3.537511426705634*^9, 3.537512119502434*^9, 3.53751281288076*^9, 
   3.537736597756252*^9, 3.537736627960421*^9, 3.538177322640651*^9, 
   3.538177356835377*^9, 3.539267367989683*^9, 3.539267398095641*^9, 
   3.539629513487147*^9, 3.539629545386954*^9, 3.540300051853688*^9, 
   3.540300085507405*^9, 3.543309220511327*^9, 3.543574063627811*^9, 
   3.551289516843433*^9, 3.551289554286824*^9, 3.553196293360846*^9, 
   3.553196327790575*^9, 3.553539564206081*^9, 3.553539603165301*^9, 
   3.554812053133164*^9, 3.554812089606725*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "30240"}], "+", 
  RowBox[{"302400", " ", 
   SuperscriptBox["t", "2"]}], "-", 
  RowBox[{"403200", " ", 
   SuperscriptBox["t", "4"]}], "+", 
  RowBox[{"161280", " ", 
   SuperscriptBox["t", "6"]}], "-", 
  RowBox[{"23040", " ", 
   SuperscriptBox["t", "8"]}], "+", 
  RowBox[{"1024", " ", 
   SuperscriptBox["t", "10"]}]}]], "Output",
 CellChangeTimes->{{3.537127853084891*^9, 3.537127874080481*^9}, {
   3.537376154138999*^9, 3.537376177231616*^9}, 3.537377399291665*^9, 
   3.537377582929219*^9, 3.537377664861134*^9, 3.537377761268516*^9, 
   3.537377798243114*^9, 3.537377837583074*^9, 3.537377874043469*^9, 
   3.537377943763513*^9, 3.537378142110152*^9, 3.537378172290722*^9, 
   3.537378204103494*^9, 3.537378236282048*^9, 3.537378350828619*^9, 
   3.537379018356065*^9, {3.537480230218488*^9, 3.537480258180573*^9}, 
   3.537511426705634*^9, 3.537512119502434*^9, 3.53751281288076*^9, 
   3.537736597756252*^9, 3.537736627960421*^9, 3.538177322640651*^9, 
   3.538177356835377*^9, 3.539267367989683*^9, 3.539267398095641*^9, 
   3.539629513487147*^9, 3.539629545386954*^9, 3.540300051853688*^9, 
   3.540300085507405*^9, 3.543309220511327*^9, 3.543574063627811*^9, 
   3.551289516843433*^9, 3.551289554286824*^9, 3.553196293360846*^9, 
   3.553196327790575*^9, 3.553539564206081*^9, 3.553539603165301*^9, 
   3.554812053133164*^9, 3.554812089609757*^9}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{
    SuperscriptBox["\[ExponentialE]", 
     RowBox[{"-", 
      FractionBox[
       SuperscriptBox["\[Omega]", "2"], "4"]}]], " ", 
    SuperscriptBox["\[Omega]", "10"]}], 
   SqrtBox["2"]]}]], "Output",
 CellChangeTimes->{{3.537127853084891*^9, 3.537127874080481*^9}, {
   3.537376154138999*^9, 3.537376177231616*^9}, 3.537377399291665*^9, 
   3.537377582929219*^9, 3.537377664861134*^9, 3.537377761268516*^9, 
   3.537377798243114*^9, 3.537377837583074*^9, 3.537377874043469*^9, 
   3.537377943763513*^9, 3.537378142110152*^9, 3.537378172290722*^9, 
   3.537378204103494*^9, 3.537378236282048*^9, 3.537378350828619*^9, 
   3.537379018356065*^9, {3.537480230218488*^9, 3.537480258180573*^9}, 
   3.537511426705634*^9, 3.537512119502434*^9, 3.53751281288076*^9, 
   3.537736597756252*^9, 3.537736627960421*^9, 3.538177322640651*^9, 
   3.538177356835377*^9, 3.539267367989683*^9, 3.539267398095641*^9, 
   3.539629513487147*^9, 3.539629545386954*^9, 3.540300051853688*^9, 
   3.540300085507405*^9, 3.543309220511327*^9, 3.543574063627811*^9, 
   3.551289516843433*^9, 3.551289554286824*^9, 3.553196293360846*^9, 
   3.553196327790575*^9, 3.553539564206081*^9, 3.553539603165301*^9, 
   3.554812053133164*^9, 3.554812089660676*^9}],

Cell[BoxData[
 RowBox[{"32", " ", 
  SuperscriptBox["\[ExponentialE]", 
   RowBox[{"-", 
    SuperscriptBox["t", "2"]}]], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"-", "945"}], "+", 
    RowBox[{"9450", " ", 
     SuperscriptBox["t", "2"]}], "-", 
    RowBox[{"12600", " ", 
     SuperscriptBox["t", "4"]}], "+", 
    RowBox[{"5040", " ", 
     SuperscriptBox["t", "6"]}], "-", 
    RowBox[{"720", " ", 
     SuperscriptBox["t", "8"]}], "+", 
    RowBox[{"32", " ", 
     SuperscriptBox["t", "10"]}]}], ")"}]}]], "Output",
 CellChangeTimes->{{3.537127853084891*^9, 3.537127874080481*^9}, {
   3.537376154138999*^9, 3.537376177231616*^9}, 3.537377399291665*^9, 
   3.537377582929219*^9, 3.537377664861134*^9, 3.537377761268516*^9, 
   3.537377798243114*^9, 3.537377837583074*^9, 3.537377874043469*^9, 
   3.537377943763513*^9, 3.537378142110152*^9, 3.537378172290722*^9, 
   3.537378204103494*^9, 3.537378236282048*^9, 3.537378350828619*^9, 
   3.537379018356065*^9, {3.537480230218488*^9, 3.537480258180573*^9}, 
   3.537511426705634*^9, 3.537512119502434*^9, 3.53751281288076*^9, 
   3.537736597756252*^9, 3.537736627960421*^9, 3.538177322640651*^9, 
   3.538177356835377*^9, 3.539267367989683*^9, 3.539267398095641*^9, 
   3.539629513487147*^9, 3.539629545386954*^9, 3.540300051853688*^9, 
   3.540300085507405*^9, 3.543309220511327*^9, 3.543574063627811*^9, 
   3.551289516843433*^9, 3.551289554286824*^9, 3.553196293360846*^9, 
   3.553196327790575*^9, 3.553539564206081*^9, 3.553539603165301*^9, 
   3.554812053133164*^9, 3.554812089662854*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"??", "?"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"cp0", "[", "T", "]"}], "-", 
  RowBox[{"Log", "[", 
   RowBox[{"Exp", "[", "a3", "]"}], "]"}]}]], "Code"],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"Log", "[", 
   SuperscriptBox["\[ExponentialE]", "a3"], "]"}]}]], "Output",
 CellChangeTimes->{{3.537127854567507*^9, 3.537127874668587*^9}, {
   3.537376155501457*^9, 3.537376177824722*^9}, 3.537377399874893*^9, 
   3.537377583501291*^9, 3.537377665424947*^9, 3.537377762027548*^9, 
   3.537377798807727*^9, 3.537377838175009*^9, 3.537377874611093*^9, 
   3.537377945066508*^9, 3.537378142632963*^9, 3.537378172843368*^9, 
   3.537378204649485*^9, 3.537378236829083*^9, 3.537378351431961*^9, 
   3.537379018955171*^9, {3.537480231466331*^9, 3.537480258730286*^9}, 
   3.53751142755739*^9, 3.53751212002085*^9, 3.537512813395136*^9, {
   3.537736599200112*^9, 3.537736628566443*^9}, 3.538177324151921*^9, 
   3.538177357454865*^9, {3.539267369528276*^9, 3.539267398658169*^9}, 
   3.539629514810177*^9, 3.539629545920618*^9, 3.540300053527446*^9, 
   3.54030008610344*^9, 3.543309221933312*^9, 3.543574065282571*^9, 
   3.551289518092938*^9, 3.551289554823071*^9, 3.553196294896824*^9, 
   3.553196328427305*^9, 3.553539566288419*^9, 3.553539603746002*^9, 
   3.554812054536416*^9, 3.554812089722595*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"??", "?"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"a3", "+", 
  RowBox[{"a1", "/", 
   RowBox[{"T", "^", "2"}]}], "+", 
  RowBox[{"a2", "/", "T"}], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   RowBox[{"T", "^", "2"}]}], "+", 
  RowBox[{"a6", " ", 
   RowBox[{"T", "^", "3"}]}], "+", 
  RowBox[{"a7", " ", 
   RowBox[{"T", "^", "4"}]}], "-", 
  RowBox[{"Log", "[", 
   RowBox[{"E", "^", "a3"}], "]"}]}]], "Code"],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"Log", "[", 
   SuperscriptBox["\[ExponentialE]", "a3"], "]"}]}]], "Output",
 CellChangeTimes->{{3.537127854582589*^9, 3.537127874732645*^9}, {
   3.537376155513947*^9, 3.537376177908317*^9}, 3.537377399894785*^9, 
   3.537377584066057*^9, 3.537377665486201*^9, 3.537377762047949*^9, 
   3.537377798867779*^9, 3.53737783819555*^9, 3.537377874673484*^9, 
   3.537377945545424*^9, 3.537378142684859*^9, 3.537378172894899*^9, 
   3.537378204670338*^9, 3.537378236893272*^9, 3.537378351498113*^9, 
   3.537379019014632*^9, {3.537480231480942*^9, 3.53748025879804*^9}, 
   3.537511427689635*^9, 3.53751212007665*^9, 3.537512813439948*^9, {
   3.537736599215251*^9, 3.537736628657611*^9}, 3.538177324167884*^9, 
   3.538177357557263*^9, {3.539267369543026*^9, 3.539267398680177*^9}, 
   3.539629514825172*^9, 3.539629546010783*^9, 3.540300053549357*^9, 
   3.540300086124014*^9, 3.543309221979611*^9, 3.543574065296609*^9, 
   3.551289518108039*^9, 3.551289554885429*^9, 3.553196294914507*^9, 
   3.553196328457158*^9, 3.553539566304382*^9, 3.553539603806894*^9, 
   3.554812054551717*^9, 3.55481208974286*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"??", "?"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"cp0", "[", "T", "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], " ", "-", 
   RowBox[{"a3", "*", 
    RowBox[{"ExpApprox", "[", "T", "]"}]}]}], "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], " ", "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a3", "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"a4", "-", "a3"}], ")"}], "*", "T"}]}], ")"}], "*", 
    RowBox[{"ExpApprox", "[", "T", "]"}]}]}], "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], " ", "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "a3"}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"a4", "-", "a3"}], ")"}], "*", "T"}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"a5", "-", "a4", "+", 
         RowBox[{"a3", "/", "2"}]}], ")"}], "*", 
       RowBox[{"T", "^", "2"}]}]}], ")"}], "*", 
    RowBox[{"ExpApprox", "[", "T", "]"}]}]}], "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], " ", "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "a3"}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"a4", "-", "a3"}], ")"}], "*", "T"}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"a5", "-", "a4", "+", 
         RowBox[{"a3", "/", "2"}]}], ")"}], "*", 
       RowBox[{"T", "^", "2"}]}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"a6", "-", "a5", "+", 
         RowBox[{"a4", "/", "2"}], "-", 
         RowBox[{"a3", "/", "6"}]}], ")"}], "*", 
       RowBox[{"T", "^", "3"}]}]}], ")"}], "*", 
    RowBox[{"ExpApprox", "[", "T", "]"}]}]}], "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], " ", "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "a3"}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"a4", "-", "a3"}], ")"}], "*", "T"}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"a5", "-", "a4", "+", 
         RowBox[{"a3", "/", "2"}]}], ")"}], "*", 
       RowBox[{"T", "^", "2"}]}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"a6", "-", "a5", "+", 
         RowBox[{"a4", "/", "2"}], "-", 
         RowBox[{"a3", "/", "6"}]}], ")"}], "*", 
       RowBox[{"T", "^", "3"}]}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"a7", "-", "a6", "+", 
         RowBox[{"a5", "/", "2"}], "-", 
         RowBox[{"a4", "/", "6"}], "+", 
         RowBox[{"a3", "/", "24"}]}], ")"}], "*", 
       RowBox[{"T", "^", "4"}]}]}], ")"}], "*", 
    RowBox[{"ExpApprox", "[", "T", "]"}]}]}], "]"}]}], "Code"],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}]}]], "Output",
 CellChangeTimes->{{3.537127854641846*^9, 3.537127874797516*^9}, {
   3.537376155533191*^9, 3.537376177930544*^9}, 3.537377399969909*^9, 
   3.537377584176027*^9, 3.537377665507226*^9, 3.537377762068303*^9, 
   3.537377798888018*^9, 3.537377838276927*^9, 3.537377874733483*^9, 
   3.537377945639028*^9, 3.537378142704797*^9, 3.537378172915157*^9, 
   3.537378204722069*^9, 3.537378236913511*^9, 3.537378351537078*^9, 
   3.537379019037742*^9, {3.53748023155532*^9, 3.537480258819486*^9}, 
   3.537511427789682*^9, 3.537512120096669*^9, 3.537512813485921*^9, {
   3.537736599241591*^9, 3.537736628760489*^9}, 3.538177324201107*^9, 
   3.538177357578846*^9, {3.53926736956897*^9, 3.539267398721665*^9}, 
   3.539629514857325*^9, 3.539629546038204*^9, 3.540300053596434*^9, 
   3.540300086224004*^9, 3.543309222014613*^9, 3.543574065320582*^9, 
   3.551289518134594*^9, 3.551289554906665*^9, 3.553196294940791*^9, 
   3.553196328518322*^9, 3.553539566334659*^9, 3.553539603829324*^9, 
   3.554812054631871*^9, 3.554812089809836*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"a3", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{{3.537127854641846*^9, 3.537127874797516*^9}, {
   3.537376155533191*^9, 3.537376177930544*^9}, 3.537377399969909*^9, 
   3.537377584176027*^9, 3.537377665507226*^9, 3.537377762068303*^9, 
   3.537377798888018*^9, 3.537377838276927*^9, 3.537377874733483*^9, 
   3.537377945639028*^9, 3.537378142704797*^9, 3.537378172915157*^9, 
   3.537378204722069*^9, 3.537378236913511*^9, 3.537378351537078*^9, 
   3.537379019037742*^9, {3.53748023155532*^9, 3.537480258819486*^9}, 
   3.537511427789682*^9, 3.537512120096669*^9, 3.537512813485921*^9, {
   3.537736599241591*^9, 3.537736628760489*^9}, 3.538177324201107*^9, 
   3.538177357578846*^9, {3.53926736956897*^9, 3.539267398721665*^9}, 
   3.539629514857325*^9, 3.539629546038204*^9, 3.540300053596434*^9, 
   3.540300086224004*^9, 3.543309222014613*^9, 3.543574065320582*^9, 
   3.551289518134594*^9, 3.551289554906665*^9, 3.553196294940791*^9, 
   3.553196328518322*^9, 3.553539566334659*^9, 3.553539603829324*^9, 
   3.554812054631871*^9, 3.55481208981273*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"a3", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{"a3", " ", "T", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a4", " ", "T", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{{3.537127854641846*^9, 3.537127874797516*^9}, {
   3.537376155533191*^9, 3.537376177930544*^9}, 3.537377399969909*^9, 
   3.537377584176027*^9, 3.537377665507226*^9, 3.537377762068303*^9, 
   3.537377798888018*^9, 3.537377838276927*^9, 3.537377874733483*^9, 
   3.537377945639028*^9, 3.537378142704797*^9, 3.537378172915157*^9, 
   3.537378204722069*^9, 3.537378236913511*^9, 3.537378351537078*^9, 
   3.537379019037742*^9, {3.53748023155532*^9, 3.537480258819486*^9}, 
   3.537511427789682*^9, 3.537512120096669*^9, 3.537512813485921*^9, {
   3.537736599241591*^9, 3.537736628760489*^9}, 3.538177324201107*^9, 
   3.538177357578846*^9, {3.53926736956897*^9, 3.539267398721665*^9}, 
   3.539629514857325*^9, 3.539629546038204*^9, 3.540300053596434*^9, 
   3.540300086224004*^9, 3.543309222014613*^9, 3.543574065320582*^9, 
   3.551289518134594*^9, 3.551289554906665*^9, 3.553196294940791*^9, 
   3.553196328518322*^9, 3.553539566334659*^9, 3.553539603829324*^9, 
   3.554812054631871*^9, 3.554812089815328*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"a3", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{"a3", " ", "T", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a4", " ", "T", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{
   FractionBox["1", "2"], " ", "a3", " ", 
   SuperscriptBox["T", "2"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{"a4", " ", 
   SuperscriptBox["T", "2"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{{3.537127854641846*^9, 3.537127874797516*^9}, {
   3.537376155533191*^9, 3.537376177930544*^9}, 3.537377399969909*^9, 
   3.537377584176027*^9, 3.537377665507226*^9, 3.537377762068303*^9, 
   3.537377798888018*^9, 3.537377838276927*^9, 3.537377874733483*^9, 
   3.537377945639028*^9, 3.537378142704797*^9, 3.537378172915157*^9, 
   3.537378204722069*^9, 3.537378236913511*^9, 3.537378351537078*^9, 
   3.537379019037742*^9, {3.53748023155532*^9, 3.537480258819486*^9}, 
   3.537511427789682*^9, 3.537512120096669*^9, 3.537512813485921*^9, {
   3.537736599241591*^9, 3.537736628760489*^9}, 3.538177324201107*^9, 
   3.538177357578846*^9, {3.53926736956897*^9, 3.539267398721665*^9}, 
   3.539629514857325*^9, 3.539629546038204*^9, 3.540300053596434*^9, 
   3.540300086224004*^9, 3.543309222014613*^9, 3.543574065320582*^9, 
   3.551289518134594*^9, 3.551289554906665*^9, 3.553196294940791*^9, 
   3.553196328518322*^9, 3.553539566334659*^9, 3.553539603829324*^9, 
   3.554812054631871*^9, 3.554812089817893*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"a3", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{"a3", " ", "T", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a4", " ", "T", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{
   FractionBox["1", "2"], " ", "a3", " ", 
   SuperscriptBox["T", "2"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{"a4", " ", 
   SuperscriptBox["T", "2"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "6"], " ", "a3", " ", 
   SuperscriptBox["T", "3"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{
   FractionBox["1", "2"], " ", "a4", " ", 
   SuperscriptBox["T", "3"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "3"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{{3.537127854641846*^9, 3.537127874797516*^9}, {
   3.537376155533191*^9, 3.537376177930544*^9}, 3.537377399969909*^9, 
   3.537377584176027*^9, 3.537377665507226*^9, 3.537377762068303*^9, 
   3.537377798888018*^9, 3.537377838276927*^9, 3.537377874733483*^9, 
   3.537377945639028*^9, 3.537378142704797*^9, 3.537378172915157*^9, 
   3.537378204722069*^9, 3.537378236913511*^9, 3.537378351537078*^9, 
   3.537379019037742*^9, {3.53748023155532*^9, 3.537480258819486*^9}, 
   3.537511427789682*^9, 3.537512120096669*^9, 3.537512813485921*^9, {
   3.537736599241591*^9, 3.537736628760489*^9}, 3.538177324201107*^9, 
   3.538177357578846*^9, {3.53926736956897*^9, 3.539267398721665*^9}, 
   3.539629514857325*^9, 3.539629546038204*^9, 3.540300053596434*^9, 
   3.540300086224004*^9, 3.543309222014613*^9, 3.543574065320582*^9, 
   3.551289518134594*^9, 3.551289554906665*^9, 3.553196294940791*^9, 
   3.553196328518322*^9, 3.553539566334659*^9, 3.553539603829324*^9, 
   3.554812054631871*^9, 3.554812089820661*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"a3", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{"a3", " ", "T", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a4", " ", "T", " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{
   FractionBox["1", "2"], " ", "a3", " ", 
   SuperscriptBox["T", "2"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{"a4", " ", 
   SuperscriptBox["T", "2"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "6"], " ", "a3", " ", 
   SuperscriptBox["T", "3"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{
   FractionBox["1", "2"], " ", "a4", " ", 
   SuperscriptBox["T", "3"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "3"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{
   FractionBox["1", "24"], " ", "a3", " ", 
   SuperscriptBox["T", "4"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "6"], " ", "a4", " ", 
   SuperscriptBox["T", "4"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{
   FractionBox["1", "2"], " ", "a5", " ", 
   SuperscriptBox["T", "4"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "4"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"], " ", 
   RowBox[{"ExpApprox", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{{3.537127854641846*^9, 3.537127874797516*^9}, {
   3.537376155533191*^9, 3.537376177930544*^9}, 3.537377399969909*^9, 
   3.537377584176027*^9, 3.537377665507226*^9, 3.537377762068303*^9, 
   3.537377798888018*^9, 3.537377838276927*^9, 3.537377874733483*^9, 
   3.537377945639028*^9, 3.537378142704797*^9, 3.537378172915157*^9, 
   3.537378204722069*^9, 3.537378236913511*^9, 3.537378351537078*^9, 
   3.537379019037742*^9, {3.53748023155532*^9, 3.537480258819486*^9}, 
   3.537511427789682*^9, 3.537512120096669*^9, 3.537512813485921*^9, {
   3.537736599241591*^9, 3.537736628760489*^9}, 3.538177324201107*^9, 
   3.538177357578846*^9, {3.53926736956897*^9, 3.539267398721665*^9}, 
   3.539629514857325*^9, 3.539629546038204*^9, 3.540300053596434*^9, 
   3.540300086224004*^9, 3.543309222014613*^9, 3.543574065320582*^9, 
   3.551289518134594*^9, 3.551289554906665*^9, 3.553196294940791*^9, 
   3.553196328518322*^9, 3.553539566334659*^9, 3.553539603829324*^9, 
   3.554812054631871*^9, 3.554812089823976*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"??", "?"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"cp0", "[", "T", "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], "-", 
   RowBox[{"a2", "*", 
    RowBox[{"LogApprox", "[", "T", "]"}]}]}], "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], "-", 
   RowBox[{"a2", "*", 
    RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a1", "-", 
      RowBox[{"a2", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", "2"}], "]"}]}]}], "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], "-", 
   RowBox[{"a2", "*", 
    RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a1", "-", 
      RowBox[{"a2", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", "2"}], "]"}]}]}], "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], "-", 
   RowBox[{"a2", "*", 
    RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a1", "-", 
      RowBox[{"a2", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", "2"}], "]"}]}], "-", 
   RowBox[{"a4", "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"-", "1"}]}], "]"}]}]}], "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], "-", 
   RowBox[{"a2", "*", 
    RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a1", "-", 
      RowBox[{"a2", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", "2"}], "]"}]}], "-", 
   RowBox[{"a4", "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"-", "1"}]}], "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a5", "-", 
      RowBox[{"a4", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "]"}]}]}], "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], "-", 
   RowBox[{"a2", "*", 
    RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a1", "-", 
      RowBox[{"a2", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", "2"}], "]"}]}], "-", 
   RowBox[{"a4", "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"-", "1"}]}], "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a5", "-", 
      RowBox[{"a4", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a6", "-", 
      RowBox[{"a4", "/", "3"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"(", 
       RowBox[{"-", "3"}], ")"}]}], "]"}]}]}], "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], "-", 
   RowBox[{"a2", "*", 
    RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a1", "-", 
      RowBox[{"a2", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", "2"}], "]"}]}], "-", 
   RowBox[{"a4", "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"-", "1"}]}], "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a5", "-", 
      RowBox[{"a4", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a6", "-", 
      RowBox[{"a4", "/", "3"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"(", 
       RowBox[{"-", "3"}], ")"}]}], "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a7", "-", 
      RowBox[{"a5", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"(", 
       RowBox[{"-", "4"}], ")"}]}], "]"}]}]}], "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], "-", 
   RowBox[{"a2", "*", 
    RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a1", "-", 
      RowBox[{"a2", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", "2"}], "]"}]}], "-", 
   RowBox[{"a4", "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"-", "1"}]}], "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a5", "-", 
      RowBox[{"a4", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"-", "2"}]}], "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a6", "-", 
      RowBox[{"a4", "/", "3"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"(", 
       RowBox[{"-", "3"}], ")"}]}], "]"}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"a7", "-", 
      RowBox[{"a5", "/", "2"}]}], ")"}], "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"(", 
       RowBox[{"-", "4"}], ")"}]}], "]"}]}], "-", 
   RowBox[{"a3", "*", 
    RowBox[{"LogApprox", "[", "1", "]"}]}]}], "]"}]}], "Code"],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}]}]], "Output",
 CellChangeTimes->{{3.53712785467848*^9, 3.537127874885097*^9}, {
   3.537376155628927*^9, 3.537376178098777*^9}, 3.537377400070313*^9, 
   3.537377584309736*^9, 3.537377665600676*^9, 3.537377762153229*^9, 
   3.537377798963971*^9, 3.537377838378904*^9, 3.537377874812594*^9, 
   3.537377945673653*^9, 3.537378142774657*^9, 3.537378172983773*^9, 
   3.537378204757271*^9, 3.537378237027176*^9, 3.537378351629312*^9, 
   3.537379019124658*^9, {3.537480231602261*^9, 3.537480258901817*^9}, 
   3.537511427947404*^9, 3.537512120166607*^9, 3.537512813527979*^9, {
   3.53773659935922*^9, 3.53773662880328*^9}, 3.538177324341798*^9, 
   3.538177357620881*^9, {3.539267369644345*^9, 3.539267398759487*^9}, 
   3.539629514975067*^9, 3.53962954610935*^9, 3.540300053761662*^9, 
   3.540300086265976*^9, 3.54330922204399*^9, 3.543574065427817*^9, 
   3.551289518235795*^9, 3.551289554986482*^9, 3.553196295049583*^9, 
   3.553196328594955*^9, 3.553539566424855*^9, 3.553539603907691*^9, 
   3.554812054680939*^9, 3.554812089857135*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"a2", " ", 
   RowBox[{"LogApprox", "[", "T", "]"}]}]}]], "Output",
 CellChangeTimes->{{3.53712785467848*^9, 3.537127874885097*^9}, {
   3.537376155628927*^9, 3.537376178098777*^9}, 3.537377400070313*^9, 
   3.537377584309736*^9, 3.537377665600676*^9, 3.537377762153229*^9, 
   3.537377798963971*^9, 3.537377838378904*^9, 3.537377874812594*^9, 
   3.537377945673653*^9, 3.537378142774657*^9, 3.537378172983773*^9, 
   3.537378204757271*^9, 3.537378237027176*^9, 3.537378351629312*^9, 
   3.537379019124658*^9, {3.537480231602261*^9, 3.537480258901817*^9}, 
   3.537511427947404*^9, 3.537512120166607*^9, 3.537512813527979*^9, {
   3.53773659935922*^9, 3.53773662880328*^9}, 3.538177324341798*^9, 
   3.538177357620881*^9, {3.539267369644345*^9, 3.539267398759487*^9}, 
   3.539629514975067*^9, 3.53962954610935*^9, 3.540300053761662*^9, 
   3.540300086265976*^9, 3.54330922204399*^9, 3.543574065427817*^9, 
   3.551289518235795*^9, 3.551289554986482*^9, 3.553196295049583*^9, 
   3.553196328594955*^9, 3.553539566424855*^9, 3.553539603907691*^9, 
   3.554812054680939*^9, 3.554812089859366*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"a2", " ", 
   RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a1", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a2", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}]}]], "Output",
 CellChangeTimes->{{3.53712785467848*^9, 3.537127874885097*^9}, {
   3.537376155628927*^9, 3.537376178098777*^9}, 3.537377400070313*^9, 
   3.537377584309736*^9, 3.537377665600676*^9, 3.537377762153229*^9, 
   3.537377798963971*^9, 3.537377838378904*^9, 3.537377874812594*^9, 
   3.537377945673653*^9, 3.537378142774657*^9, 3.537378172983773*^9, 
   3.537378204757271*^9, 3.537378237027176*^9, 3.537378351629312*^9, 
   3.537379019124658*^9, {3.537480231602261*^9, 3.537480258901817*^9}, 
   3.537511427947404*^9, 3.537512120166607*^9, 3.537512813527979*^9, {
   3.53773659935922*^9, 3.53773662880328*^9}, 3.538177324341798*^9, 
   3.538177357620881*^9, {3.539267369644345*^9, 3.539267398759487*^9}, 
   3.539629514975067*^9, 3.53962954610935*^9, 3.540300053761662*^9, 
   3.540300086265976*^9, 3.54330922204399*^9, 3.543574065427817*^9, 
   3.551289518235795*^9, 3.551289554986482*^9, 3.553196295049583*^9, 
   3.553196328594955*^9, 3.553539566424855*^9, 3.553539603907691*^9, 
   3.554812054680939*^9, 3.554812089905667*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"a2", " ", 
   RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a1", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a2", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}]}]], "Output",
 CellChangeTimes->{{3.53712785467848*^9, 3.537127874885097*^9}, {
   3.537376155628927*^9, 3.537376178098777*^9}, 3.537377400070313*^9, 
   3.537377584309736*^9, 3.537377665600676*^9, 3.537377762153229*^9, 
   3.537377798963971*^9, 3.537377838378904*^9, 3.537377874812594*^9, 
   3.537377945673653*^9, 3.537378142774657*^9, 3.537378172983773*^9, 
   3.537378204757271*^9, 3.537378237027176*^9, 3.537378351629312*^9, 
   3.537379019124658*^9, {3.537480231602261*^9, 3.537480258901817*^9}, 
   3.537511427947404*^9, 3.537512120166607*^9, 3.537512813527979*^9, {
   3.53773659935922*^9, 3.53773662880328*^9}, 3.538177324341798*^9, 
   3.538177357620881*^9, {3.539267369644345*^9, 3.539267398759487*^9}, 
   3.539629514975067*^9, 3.53962954610935*^9, 3.540300053761662*^9, 
   3.540300086265976*^9, 3.54330922204399*^9, 3.543574065427817*^9, 
   3.551289518235795*^9, 3.551289554986482*^9, 3.553196295049583*^9, 
   3.553196328594955*^9, 3.553539566424855*^9, 3.553539603907691*^9, 
   3.554812054680939*^9, 3.55481208990819*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"a4", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", "T"], "]"}]}], "-", 
  RowBox[{"a2", " ", 
   RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a1", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a2", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}]}]], "Output",
 CellChangeTimes->{{3.53712785467848*^9, 3.537127874885097*^9}, {
   3.537376155628927*^9, 3.537376178098777*^9}, 3.537377400070313*^9, 
   3.537377584309736*^9, 3.537377665600676*^9, 3.537377762153229*^9, 
   3.537377798963971*^9, 3.537377838378904*^9, 3.537377874812594*^9, 
   3.537377945673653*^9, 3.537378142774657*^9, 3.537378172983773*^9, 
   3.537378204757271*^9, 3.537378237027176*^9, 3.537378351629312*^9, 
   3.537379019124658*^9, {3.537480231602261*^9, 3.537480258901817*^9}, 
   3.537511427947404*^9, 3.537512120166607*^9, 3.537512813527979*^9, {
   3.53773659935922*^9, 3.53773662880328*^9}, 3.538177324341798*^9, 
   3.538177357620881*^9, {3.539267369644345*^9, 3.539267398759487*^9}, 
   3.539629514975067*^9, 3.53962954610935*^9, 3.540300053761662*^9, 
   3.540300086265976*^9, 3.54330922204399*^9, 3.543574065427817*^9, 
   3.551289518235795*^9, 3.551289554986482*^9, 3.553196295049583*^9, 
   3.553196328594955*^9, 3.553539566424855*^9, 3.553539603907691*^9, 
   3.554812054680939*^9, 3.554812089910507*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a4", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "2"]], "]"}]}], "-", 
  RowBox[{"a5", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "2"]], "]"}]}], "-", 
  RowBox[{"a4", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", "T"], "]"}]}], "-", 
  RowBox[{"a2", " ", 
   RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a1", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a2", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}]}]], "Output",
 CellChangeTimes->{{3.53712785467848*^9, 3.537127874885097*^9}, {
   3.537376155628927*^9, 3.537376178098777*^9}, 3.537377400070313*^9, 
   3.537377584309736*^9, 3.537377665600676*^9, 3.537377762153229*^9, 
   3.537377798963971*^9, 3.537377838378904*^9, 3.537377874812594*^9, 
   3.537377945673653*^9, 3.537378142774657*^9, 3.537378172983773*^9, 
   3.537378204757271*^9, 3.537378237027176*^9, 3.537378351629312*^9, 
   3.537379019124658*^9, {3.537480231602261*^9, 3.537480258901817*^9}, 
   3.537511427947404*^9, 3.537512120166607*^9, 3.537512813527979*^9, {
   3.53773659935922*^9, 3.53773662880328*^9}, 3.538177324341798*^9, 
   3.538177357620881*^9, {3.539267369644345*^9, 3.539267398759487*^9}, 
   3.539629514975067*^9, 3.53962954610935*^9, 3.540300053761662*^9, 
   3.540300086265976*^9, 3.54330922204399*^9, 3.543574065427817*^9, 
   3.551289518235795*^9, 3.551289554986482*^9, 3.553196295049583*^9, 
   3.553196328594955*^9, 3.553539566424855*^9, 3.553539603907691*^9, 
   3.554812054680939*^9, 3.554812089913142*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "+", 
  RowBox[{
   FractionBox["1", "3"], " ", "a4", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "3"]], "]"}]}], "-", 
  RowBox[{"a6", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "3"]], "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a4", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "2"]], "]"}]}], "-", 
  RowBox[{"a5", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "2"]], "]"}]}], "-", 
  RowBox[{"a4", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", "T"], "]"}]}], "-", 
  RowBox[{"a2", " ", 
   RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a1", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a2", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}]}]], "Output",
 CellChangeTimes->{{3.53712785467848*^9, 3.537127874885097*^9}, {
   3.537376155628927*^9, 3.537376178098777*^9}, 3.537377400070313*^9, 
   3.537377584309736*^9, 3.537377665600676*^9, 3.537377762153229*^9, 
   3.537377798963971*^9, 3.537377838378904*^9, 3.537377874812594*^9, 
   3.537377945673653*^9, 3.537378142774657*^9, 3.537378172983773*^9, 
   3.537378204757271*^9, 3.537378237027176*^9, 3.537378351629312*^9, 
   3.537379019124658*^9, {3.537480231602261*^9, 3.537480258901817*^9}, 
   3.537511427947404*^9, 3.537512120166607*^9, 3.537512813527979*^9, {
   3.53773659935922*^9, 3.53773662880328*^9}, 3.538177324341798*^9, 
   3.538177357620881*^9, {3.539267369644345*^9, 3.539267398759487*^9}, 
   3.539629514975067*^9, 3.53962954610935*^9, 3.540300053761662*^9, 
   3.540300086265976*^9, 3.54330922204399*^9, 3.543574065427817*^9, 
   3.551289518235795*^9, 3.551289554986482*^9, 3.553196295049583*^9, 
   3.553196328594955*^9, 3.553539566424855*^9, 3.553539603907691*^9, 
   3.554812054680939*^9, 3.554812089916427*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a5", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "4"]], "]"}]}], "-", 
  RowBox[{"a7", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "4"]], "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "3"], " ", "a4", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "3"]], "]"}]}], "-", 
  RowBox[{"a6", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "3"]], "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a4", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "2"]], "]"}]}], "-", 
  RowBox[{"a5", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "2"]], "]"}]}], "-", 
  RowBox[{"a4", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", "T"], "]"}]}], "-", 
  RowBox[{"a2", " ", 
   RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a1", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a2", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}]}]], "Output",
 CellChangeTimes->{{3.53712785467848*^9, 3.537127874885097*^9}, {
   3.537376155628927*^9, 3.537376178098777*^9}, 3.537377400070313*^9, 
   3.537377584309736*^9, 3.537377665600676*^9, 3.537377762153229*^9, 
   3.537377798963971*^9, 3.537377838378904*^9, 3.537377874812594*^9, 
   3.537377945673653*^9, 3.537378142774657*^9, 3.537378172983773*^9, 
   3.537378204757271*^9, 3.537378237027176*^9, 3.537378351629312*^9, 
   3.537379019124658*^9, {3.537480231602261*^9, 3.537480258901817*^9}, 
   3.537511427947404*^9, 3.537512120166607*^9, 3.537512813527979*^9, {
   3.53773659935922*^9, 3.53773662880328*^9}, 3.538177324341798*^9, 
   3.538177357620881*^9, {3.539267369644345*^9, 3.539267398759487*^9}, 
   3.539629514975067*^9, 3.53962954610935*^9, 3.540300053761662*^9, 
   3.540300086265976*^9, 3.54330922204399*^9, 3.543574065427817*^9, 
   3.551289518235795*^9, 3.551289554986482*^9, 3.553196295049583*^9, 
   3.553196328594955*^9, 3.553539566424855*^9, 3.553539603907691*^9, 
   3.554812054680939*^9, 3.554812089920123*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"a3", " ", 
   RowBox[{"LogApprox", "[", "1", "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a5", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "4"]], "]"}]}], "-", 
  RowBox[{"a7", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "4"]], "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "3"], " ", "a4", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "3"]], "]"}]}], "-", 
  RowBox[{"a6", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "3"]], "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a4", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "2"]], "]"}]}], "-", 
  RowBox[{"a5", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "2"]], "]"}]}], "-", 
  RowBox[{"a4", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", "T"], "]"}]}], "-", 
  RowBox[{"a2", " ", 
   RowBox[{"LogApprox", "[", "T", "]"}]}], "-", 
  RowBox[{"a1", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", "a2", " ", 
   RowBox[{"LogApprox", "[", 
    SuperscriptBox["T", "2"], "]"}]}]}]], "Output",
 CellChangeTimes->{{3.53712785467848*^9, 3.537127874885097*^9}, {
   3.537376155628927*^9, 3.537376178098777*^9}, 3.537377400070313*^9, 
   3.537377584309736*^9, 3.537377665600676*^9, 3.537377762153229*^9, 
   3.537377798963971*^9, 3.537377838378904*^9, 3.537377874812594*^9, 
   3.537377945673653*^9, 3.537378142774657*^9, 3.537378172983773*^9, 
   3.537378204757271*^9, 3.537378237027176*^9, 3.537378351629312*^9, 
   3.537379019124658*^9, {3.537480231602261*^9, 3.537480258901817*^9}, 
   3.537511427947404*^9, 3.537512120166607*^9, 3.537512813527979*^9, {
   3.53773659935922*^9, 3.53773662880328*^9}, 3.538177324341798*^9, 
   3.538177357620881*^9, {3.539267369644345*^9, 3.539267398759487*^9}, 
   3.539629514975067*^9, 3.53962954610935*^9, 3.540300053761662*^9, 
   3.540300086265976*^9, 3.54330922204399*^9, 3.543574065427817*^9, 
   3.551289518235795*^9, 3.551289554986482*^9, 3.553196295049583*^9, 
   3.553196328594955*^9, 3.553539566424855*^9, 3.553539603907691*^9, 
   3.554812054680939*^9, 3.554812089924028*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"??", "?"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"cp0", "[", "T", "]"}], "\n", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"cp0", "[", "T", "]"}], "-", 
   RowBox[{"a7", "*", 
    RowBox[{"LogApprox", "[", 
     RowBox[{"T", "^", 
      RowBox[{"(", 
       RowBox[{"-", "4"}], ")"}]}], "]"}]}]}], "]"}]}], "Code"],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}]}]], "Output",
 CellChangeTimes->{{3.537127854714034*^9, 3.537127874929283*^9}, {
   3.537376155661796*^9, 3.537376178204115*^9}, 3.537377400112574*^9, 
   3.537377584350099*^9, 3.537377665643928*^9, 3.53737776231427*^9, 
   3.537377799045379*^9, 3.537377838422918*^9, 3.53737787485578*^9, 
   3.537377945716926*^9, 3.537378142848687*^9, 3.537378173062216*^9, 
   3.537378204830391*^9, 3.537378237108585*^9, 3.537378351674257*^9, 
   3.537379019208634*^9, {3.537480231638126*^9, 3.537480258987456*^9}, 
   3.537511428110665*^9, 3.537512120243899*^9, 3.53751281359316*^9, {
   3.537736599395625*^9, 3.537736628922148*^9}, 3.53817732437929*^9, 
   3.538177357745308*^9, {3.53926736968249*^9, 3.539267398822257*^9}, 
   3.539629515111337*^9, 3.539629546151287*^9, 3.540300053806884*^9, 
   3.540300086364902*^9, 3.543309222077138*^9, 3.543574065472392*^9, 
   3.551289518273081*^9, 3.551289555083277*^9, 3.553196295087572*^9, 
   3.55319632879919*^9, 3.553539566461857*^9, 3.553539603993182*^9, 
   3.554812054718735*^9, 3.554812089950144*^9}],

Cell[BoxData[
 RowBox[{"a3", "+", 
  FractionBox["a1", 
   SuperscriptBox["T", "2"]], "+", 
  FractionBox["a2", "T"], "+", 
  RowBox[{"a4", " ", "T"}], "+", 
  RowBox[{"a5", " ", 
   SuperscriptBox["T", "2"]}], "+", 
  RowBox[{"a6", " ", 
   SuperscriptBox["T", "3"]}], "+", 
  RowBox[{"a7", " ", 
   SuperscriptBox["T", "4"]}], "-", 
  RowBox[{"a7", " ", 
   RowBox[{"LogApprox", "[", 
    FractionBox["1", 
     SuperscriptBox["T", "4"]], "]"}]}]}]], "Output",
 CellChangeTimes->{{3.537127854714034*^9, 3.537127874929283*^9}, {
   3.537376155661796*^9, 3.537376178204115*^9}, 3.537377400112574*^9, 
   3.537377584350099*^9, 3.537377665643928*^9, 3.53737776231427*^9, 
   3.537377799045379*^9, 3.537377838422918*^9, 3.53737787485578*^9, 
   3.537377945716926*^9, 3.537378142848687*^9, 3.537378173062216*^9, 
   3.537378204830391*^9, 3.537378237108585*^9, 3.537378351674257*^9, 
   3.537379019208634*^9, {3.537480231638126*^9, 3.537480258987456*^9}, 
   3.537511428110665*^9, 3.537512120243899*^9, 3.53751281359316*^9, {
   3.537736599395625*^9, 3.537736628922148*^9}, 3.53817732437929*^9, 
   3.538177357745308*^9, {3.53926736968249*^9, 3.539267398822257*^9}, 
   3.539629515111337*^9, 3.539629546151287*^9, 3.540300053806884*^9, 
   3.540300086364902*^9, 3.543309222077138*^9, 3.543574065472392*^9, 
   3.551289518273081*^9, 3.551289555083277*^9, 3.553196295087572*^9, 
   3.55319632879919*^9, 3.553539566461857*^9, 3.553539603993182*^9, 
   3.554812054718735*^9, 3.55481208995231*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"??", "?"}], " ", "*)"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"p", ":=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"-", "8.018653026220618*^-3"}], ",", 
    RowBox[{"-", "8.333995788963730*^-2"}], ",", "2.147636033438954*^-1", ",",
     "\n", "6.938890330143040", ",", "5.204728906183705*^1", ",", 
    "2.409202121262617*^2", ",", "5.511195844965387*^2"}], "}"}]}], "\n", 
 RowBox[{"mu", ":=", 
  RowBox[{"{", 
   RowBox[{"1.485883484538953*^2", ",", "1.280046368277756*^1"}], 
   "}"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"T0H2", "[", "s_", "]"}], ":=", 
   RowBox[{
    RowBox[{
     RowBox[{"p", "[", 
      RowBox[{"[", "1", "]"}], "]"}], "*", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"s", "-", 
          RowBox[{"mu", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "/", 
        RowBox[{"mu", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], ")"}], "^", "6"}]}], "+", 
    RowBox[{
     RowBox[{"p", "[", 
      RowBox[{"[", "2", "]"}], "]"}], "*", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"s", "-", 
          RowBox[{"mu", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "/", 
        RowBox[{"mu", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], ")"}], "^", "5"}]}], "+", 
    RowBox[{
     RowBox[{"p", "[", 
      RowBox[{"[", "3", "]"}], "]"}], "*", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"s", "-", 
          RowBox[{"mu", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "/", 
        RowBox[{"mu", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], ")"}], "^", "4"}]}], "+", 
    RowBox[{
     RowBox[{"p", "[", 
      RowBox[{"[", "4", "]"}], "]"}], "*", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"s", "-", 
          RowBox[{"mu", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "/", 
        RowBox[{"mu", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], ")"}], "^", "3"}]}], "+", 
    RowBox[{
     RowBox[{"p", "[", 
      RowBox[{"[", "5", "]"}], "]"}], "*", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"s", "-", 
          RowBox[{"mu", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "/", 
        RowBox[{"mu", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], ")"}], "^", "2"}]}], "+", 
    RowBox[{
     RowBox[{"p", "[", 
      RowBox[{"[", "6", "]"}], "]"}], "*", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"s", "-", 
         RowBox[{"mu", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "/", 
       RowBox[{"mu", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], "+", 
    RowBox[{"p", "[", 
     RowBox[{"[", "7", "]"}], "]"}]}]}], ";"}], "\n", 
 RowBox[{"T0H2", "[", 
  RowBox[{"s0H2", "[", "200", "]"}], "]"}], "\n", 
 RowBox[{"T0H2", "[", 
  RowBox[{"s0H2", "[", "1000", "]"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"T0H2", "[", 
        RowBox[{"s0H2", "[", "T", "]"}], "]"}], "-", "T"}], ")"}], "/", "T"}],
     ",", 
    RowBox[{"{", 
     RowBox[{"T", ",", "200", ",", "1000"}], "}"}]}], "]"}], "\n", "\n", "\n",
   "\n", "\n"}], "\n"}], "Code"],

Cell[BoxData[
 RowBox[{"-", "71798.76031310072`"}]], "Output",
 CellChangeTimes->{{3.537127854741264*^9, 3.537127875005581*^9}, {
   3.53737615568379*^9, 3.537376178334281*^9}, 3.53737740019046*^9, 
   3.537377584377154*^9, 3.537377665720421*^9, 3.537377762381013*^9, 
   3.537377799076311*^9, 3.537377838518736*^9, 3.537377874921789*^9, 
   3.537377945811051*^9, 3.537378142912011*^9, 3.537378173092569*^9, 
   3.537378204892941*^9, 3.537378237141431*^9, 3.537378351748886*^9, 
   3.537379019290006*^9, {3.537480231730571*^9, 3.537480259082176*^9}, 
   3.537511428206932*^9, 3.537512120272376*^9, 3.537512813643959*^9, {
   3.53773659950026*^9, 3.537736629034145*^9}, 3.538177324532355*^9, 
   3.538177357856792*^9, {3.539267369737463*^9, 3.539267398873265*^9}, 
   3.539629515215467*^9, 3.539629546209384*^9, 3.540300053876676*^9, 
   3.540300086462349*^9, 3.543309222123829*^9, 3.543574065547758*^9, 
   3.551289518449906*^9, 3.55128955516237*^9, 3.553196295199228*^9, 
   3.553196328918577*^9, 3.553539566545997*^9, 3.553539604071494*^9, 
   3.554812054821353*^9, 3.554812090031024*^9}],

Cell[BoxData[
 RowBox[{"-", "2236.961723890003`"}]], "Output",
 CellChangeTimes->{{3.537127854741264*^9, 3.537127875005581*^9}, {
   3.53737615568379*^9, 3.537376178334281*^9}, 3.53737740019046*^9, 
   3.537377584377154*^9, 3.537377665720421*^9, 3.537377762381013*^9, 
   3.537377799076311*^9, 3.537377838518736*^9, 3.537377874921789*^9, 
   3.537377945811051*^9, 3.537378142912011*^9, 3.537378173092569*^9, 
   3.537378204892941*^9, 3.537378237141431*^9, 3.537378351748886*^9, 
   3.537379019290006*^9, {3.537480231730571*^9, 3.537480259082176*^9}, 
   3.537511428206932*^9, 3.537512120272376*^9, 3.537512813643959*^9, {
   3.53773659950026*^9, 3.537736629034145*^9}, 3.538177324532355*^9, 
   3.538177357856792*^9, {3.539267369737463*^9, 3.539267398873265*^9}, 
   3.539629515215467*^9, 3.539629546209384*^9, 3.540300053876676*^9, 
   3.540300086462349*^9, 3.543309222123829*^9, 3.543574065547758*^9, 
   3.551289518449906*^9, 3.55128955516237*^9, 3.553196295199228*^9, 
   3.553196328918577*^9, 3.553539566545997*^9, 3.553539604071494*^9, 
   3.554812054821353*^9, 3.554812090032862*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0, 0, 1], Thickness[0.003], LineBox[CompressedData["
1:eJwVy2k8FIgfgHFZZMaIKOQKMa41Yxg3+UXk6JTacsXocJQyl3GsXIkwE7kV
lWqpaEiYLr+EjaJyR4VKKlurokLy3/+L5/N99WgzDnvtExcTEyv9r/8b67Re
gX8kEpzSdu6WdHZHb4/dt1uzI0HF7nl7doAbigW/iGjIiwR70enc6fVueCU2
SLuyKBJ6qhQ/HjV2Q/Gq0NTMc5Hw59FyKbnZDXhNLmbr9ppIGKIGrpPK34DE
vuI3o08i4aFHuKfSgCvinuekn3JMKKPqzHSwXPAgL7DpoyITUrVJcjUBLqic
/SZyRJkJfgmHZurdXTCi+Z/+5tVM6Hc3sNLWckE1vYWz6VQmjJSLVEK71iP3
g4aF8hYmWInkt+SarkcTzh5/Mz4TBNGrfcYIzhimXVTIy2ECY8X1f15+c8KK
zu6eu/lMqKc5Kcy9dkJdsquHZxkT5o8FUtLuOqHqwO9We4VMaK3cfmSB7YRS
NnPy+d1MGK7mfFGbWIcvf+a2zCqxYG+E6By+BFSv7Fp0VGOBn55SAuEx4O4d
0napq1nQsnSmOLQJsLcqtkbBgAXr7qoMRpwF7AhglBrbsKCCSGtOCwasRyrP
35cFVMUd9KvDjihI6TC+V8YCz+gVJP6atchO2Mn8Ws6Cy9cWRZ2Etbgr7lWj
XgUL2ow8502nHFCHPedyQsiCxB8FDkF3HLAu2Chw+z0WXNoskmDsdsBBpxO5
469YkM+T8xUW2KPOEo8FApkNL9JuVXwztkOphT5neyM2+JoJBdZKdjj5I+hE
BIUN6tof1QrE7LBuKlq5x5INXy7PMyr7bNF1tJJ2egMb1qxqj9JItMXwJsJ+
SigbZCMY3movbLDuz/Yur6tsCJ5IfWNfYY0e+t/G7IVsmFYT0ubyrXH0ic4M
uY4Nb7lv8eExayTpxqnN32ID5CgbXwm2xr0dlJDyh2zY1/h+7A8ta1ypnLtk
+gMbwnbe0t1yxgq5wgB6niEH5KVUBz9fsESST8aGoyYcyHmXuLCYZ4nnf2v0
CaVxIO9bzVfN45bYtXN5ooMNB34o507xQy2RvHC/c9yNA59C+9LoVEsccDc8
YBnCAUkJj7LEOxZo/fpr0cAlDriXSLxKHadjoFa/hdIVDsT8DHANG6Bjmn/j
U+9rHFhxaQ01oJ2OzwbiCN0NHKjyTzWMqqJjzCPJ6EcPODBV8okUzqXjrRvK
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

     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{200., 0},
  BaseStyle->{FontFamily -> "Helvetica", FontSize -> 34},
  Frame->True,
  FrameStyle->Directive[
    Thickness[0.003]],
  ImageSize->
   NCache[{400 (1 + 5^Rational[1, 2]), 800}, {1294.4271909999159`, 800}],
  PlotRange->{{200, 1000}, {-50.52360073781212, 0.}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.537127854741264*^9, 3.537127875005581*^9}, {
   3.53737615568379*^9, 3.537376178334281*^9}, 3.53737740019046*^9, 
   3.537377584377154*^9, 3.537377665720421*^9, 3.537377762381013*^9, 
   3.537377799076311*^9, 3.537377838518736*^9, 3.537377874921789*^9, 
   3.537377945811051*^9, 3.537378142912011*^9, 3.537378173092569*^9, 
   3.537378204892941*^9, 3.537378237141431*^9, 3.537378351748886*^9, 
   3.537379019290006*^9, {3.537480231730571*^9, 3.537480259082176*^9}, 
   3.537511428206932*^9, 3.537512120272376*^9, 3.537512813643959*^9, {
   3.53773659950026*^9, 3.537736629034145*^9}, 3.538177324532355*^9, 
   3.538177357856792*^9, {3.539267369737463*^9, 3.539267398873265*^9}, 
   3.539629515215467*^9, 3.539629546209384*^9, 3.540300053876676*^9, 
   3.540300086462349*^9, 3.543309222123829*^9, 3.543574065547758*^9, 
   3.551289518449906*^9, 3.55128955516237*^9, 3.553196295199228*^9, 
   3.553196328918577*^9, 3.553539566545997*^9, 3.553539604071494*^9, 
   3.554812054821353*^9, 3.554812090279112*^9}]
}, Open  ]]
},
WindowSize->{1190, 967},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
Magnification->0.75,
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
Cell[1235, 30, 4397, 109, 178, "Input"],
Cell[5635, 141, 109, 2, 23, "Input"],
Cell[5747, 145, 7085, 167, 411, "Code"],
Cell[12835, 314, 1330, 33, 48, "Input"],
Cell[14168, 349, 4763, 120, 456, "Code"],
Cell[18934, 471, 215, 6, 35, "Input"],
Cell[19152, 479, 3685, 119, 255, "Code"],
Cell[22840, 600, 96, 2, 23, "Input"],
Cell[22939, 604, 246, 8, 47, "Code"],
Cell[23188, 614, 1610, 38, 61, "Input"],
Cell[24801, 654, 2902, 84, 99, "Code"],
Cell[27706, 740, 299, 7, 23, "Input"],
Cell[28008, 749, 1059, 32, 86, "Code"],
Cell[29070, 783, 335, 9, 23, "Input"],
Cell[29408, 794, 1193, 33, 86, "Code"],
Cell[30604, 829, 346, 10, 23, "Input"],
Cell[30953, 841, 1106, 32, 86, "Code"],
Cell[32062, 875, 307, 7, 23, "Input"],
Cell[32372, 884, 1404, 42, 86, "Code"],
Cell[33779, 928, 308, 7, 23, "Input"],
Cell[34090, 937, 1483, 45, 86, "Code"],
Cell[35576, 984, 320, 8, 23, "Input"],
Cell[35899, 994, 1396, 41, 73, "Code"],
Cell[37298, 1037, 348, 10, 23, "Input"],
Cell[37649, 1049, 1496, 43, 86, "Code"],
Cell[39148, 1094, 300, 7, 23, "Input"],
Cell[39451, 1103, 1479, 43, 86, "Code"],
Cell[40933, 1148, 542, 12, 35, "Input"],
Cell[41478, 1162, 8395, 300, 151, "Code"],
Cell[49876, 1464, 569, 13, 48, "Input"],
Cell[50448, 1479, 10006, 357, 151, "Code"],
Cell[60457, 1838, 874, 21, 61, "Input"],
Cell[61334, 1861, 14531, 484, 307, "Code"],
Cell[75868, 2347, 262, 7, 35, "Input"],
Cell[76133, 2356, 2215, 70, 151, "Code"],
Cell[78351, 2428, 363, 9, 35, "Input"],
Cell[78717, 2439, 1497, 46, 164, "Code"],
Cell[80217, 2487, 266, 7, 35, "Input"],
Cell[80486, 2496, 2215, 70, 151, "Code"],
Cell[CellGroupData[{
Cell[82726, 2570, 423, 11, 100, "Input"],
Cell[83152, 2583, 1022, 21, 37, "Output"],
Cell[84177, 2606, 1191, 28, 39, "Output"],
Cell[85371, 2636, 1189, 28, 38, "Output"],
Cell[86563, 2666, 1282, 30, 38, "Output"],
Cell[87848, 2698, 1291, 30, 38, "Output"],
Cell[89142, 2730, 1199, 28, 38, "Output"]
}, Open  ]],
Cell[90356, 2761, 177, 3, 23, "Input"],
Cell[CellGroupData[{
Cell[90558, 2768, 4415, 110, 281, "Code"],
Cell[94976, 2880, 24338, 473, 613, "Output"],
Cell[119317, 3355, 11285, 191, 611, "Output"]
}, Open  ]],
Cell[130617, 3549, 163, 3, 23, "Input"],
Cell[CellGroupData[{
Cell[130805, 3556, 3731, 100, 125, "Code"],
Cell[134539, 3658, 22899, 449, 613, "Output"],
Cell[157441, 4109, 3410, 63, 611, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[160888, 4177, 190, 4, 35, "Input"],
Cell[161081, 4183, 111, 1, 23, "Output"]
}, Open  ]],
Cell[161207, 4187, 1344, 31, 61, "Input"],
Cell[CellGroupData[{
Cell[162576, 4222, 4380, 120, 229, "Code"],
Cell[166959, 4344, 22980, 451, 613, "Output"],
Cell[189942, 4797, 3600, 66, 611, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[193579, 4868, 389, 10, 48, "Input"],
Cell[193971, 4880, 346, 5, 23, "Output"],
Cell[194320, 4887, 346, 5, 23, "Output"]
}, Open  ]],
Cell[194681, 4895, 179, 3, 23, "Input"],
Cell[CellGroupData[{
Cell[194885, 4902, 4367, 118, 216, "Code"],
Cell[199255, 5022, 23200, 454, 613, "Output"],
Cell[222458, 5478, 3604, 66, 611, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[226099, 5549, 293, 8, 35, "Input"],
Cell[226395, 5559, 231, 3, 23, "Output"]
}, Open  ]],
Cell[226641, 5565, 185, 4, 23, "Input"],
Cell[CellGroupData[{
Cell[226851, 5573, 4391, 120, 216, "Code"],
Cell[231245, 5695, 20724, 409, 613, "Output"],
Cell[251972, 6106, 3626, 66, 611, "Output"]
}, Open  ]],
Cell[255613, 6175, 183, 3, 23, "Input"],
Cell[CellGroupData[{
Cell[255821, 6182, 4355, 119, 203, "Code"],
Cell[260179, 6303, 23132, 450, 613, "Output"],
Cell[283314, 6755, 3619, 66, 611, "Output"]
}, Open  ]],
Cell[286948, 6824, 2667, 72, 74, "Input"],
Cell[CellGroupData[{
Cell[289640, 6900, 15749, 443, 515, "Code"],
Cell[305392, 7345, 15183, 295, 613, "Output"],
Cell[320578, 7642, 14768, 287, 613, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[335383, 7934, 7185, 176, 295, "Input"],
Cell[342571, 8112, 7584, 149, 611, "Output"],
Cell[350158, 8263, 6787, 132, 611, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[356982, 8400, 2728, 68, 100, "Input"],
Cell[359713, 8470, 260, 4, 23, "Output"],
Cell[359976, 8476, 272, 4, 23, "Output"]
}, Open  ]],
Cell[360263, 8483, 122, 3, 23, "Input"],
Cell[CellGroupData[{
Cell[360410, 8490, 21085, 572, 476, "Code"],
Cell[381498, 9064, 35769, 740, 613, "Output"]
}, Open  ]],
Cell[417282, 9807, 1212, 29, 35, "Input"],
Cell[CellGroupData[{
Cell[418519, 9840, 6710, 183, 86, "Code"],
Cell[425232, 10025, 1531, 27, 23, "Output"],
Cell[426766, 10054, 8432, 160, 613, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[435235, 10219, 445, 13, 48, "Input"],
Cell[435683, 10234, 338, 5, 23, "Output"],
Cell[436024, 10241, 321, 4, 23, "Output"],
Cell[436348, 10247, 323, 4, 23, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[436708, 10256, 502, 16, 23, "Input"],
Cell[437213, 10274, 1193, 18, 23, "Output"],
Cell[438409, 10294, 1167, 17, 16, "Output"],
Cell[439579, 10313, 1145, 17, 17, "Output"],
Cell[440727, 10332, 1123, 17, 12, "Output"],
Cell[441853, 10351, 1097, 16, 12, "Output"],
Cell[442953, 10369, 1075, 16, 12, "Output"],
Cell[444031, 10387, 1054, 16, 12, "Output"],
Cell[445088, 10405, 1028, 15, 12, "Output"],
Cell[446119, 10422, 1006, 15, 12, "Output"],
Cell[447128, 10439, 985, 15, 12, "Output"],
Cell[448116, 10456, 985, 15, 12, "Output"],
Cell[449104, 10473, 984, 15, 12, "Output"],
Cell[450091, 10490, 980, 15, 12, "Output"],
Cell[451074, 10507, 984, 15, 23, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[452095, 10527, 7467, 216, 152, "Input"],
Cell[459565, 10745, 3979, 73, 611, "Output"],
Cell[463547, 10820, 6369, 113, 611, "Output"],
Cell[469919, 10935, 3163, 60, 611, "Output"],
Cell[473085, 10997, 5018, 90, 611, "Output"],
Cell[478106, 11089, 5155, 93, 611, "Output"]
}, Open  ]],
Cell[483276, 11185, 166, 3, 23, "Input"],
Cell[CellGroupData[{
Cell[483467, 11192, 2611, 78, 99, "Code"],
Cell[486081, 11272, 7721, 147, 613, "Output"]
}, Open  ]],
Cell[493817, 11422, 958, 21, 48, "Input"],
Cell[CellGroupData[{
Cell[494800, 11447, 759, 25, 47, "Code"],
Cell[495562, 11474, 1694, 34, 26, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[497293, 11513, 1629, 53, 86, "Code"],
Cell[498925, 11568, 1812, 41, 41, "Output"],
Cell[500740, 11611, 2398, 64, 33, "Output"],
Cell[503141, 11677, 1944, 49, 33, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[505122, 11731, 2383, 67, 99, "Code"],
Cell[507508, 11800, 1107, 16, 23, "Output"],
Cell[508618, 11818, 1056, 15, 23, "Output"],
Cell[509677, 11835, 1070, 15, 23, "Output"],
Cell[510750, 11852, 1123, 17, 23, "Output"]
}, Open  ]],
Cell[511888, 11872, 137, 3, 23, "Input"],
Cell[CellGroupData[{
Cell[512050, 11879, 3611, 98, 177, "Code"],
Cell[515664, 11979, 1061, 15, 23, "Output"],
Cell[516728, 11996, 1089, 16, 23, "Output"],
Cell[517820, 12014, 1071, 15, 23, "Output"],
Cell[518894, 12031, 1061, 15, 23, "Output"],
Cell[519958, 12048, 1071, 15, 23, "Output"],
Cell[521032, 12065, 1073, 15, 23, "Output"],
Cell[522108, 12082, 1060, 15, 23, "Output"],
Cell[523171, 12099, 1088, 16, 23, "Output"],
Cell[524262, 12117, 1072, 15, 23, "Output"],
Cell[525337, 12134, 1061, 15, 23, "Output"],
Cell[526401, 12151, 1071, 15, 23, "Output"],
Cell[527475, 12168, 1073, 15, 23, "Output"]
}, Open  ]],
Cell[528563, 12186, 137, 3, 23, "Input"],
Cell[CellGroupData[{
Cell[528725, 12193, 2032, 54, 60, "Code"],
Cell[530760, 12249, 1071, 16, 23, "Output"],
Cell[531834, 12267, 1084, 16, 23, "Output"],
Cell[532921, 12285, 1083, 16, 23, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[534041, 12306, 9552, 261, 307, "Code"],
Cell[543596, 12569, 1080, 16, 36, "Output"],
Cell[544679, 12587, 1093, 16, 36, "Output"],
Cell[545775, 12605, 1092, 16, 36, "Output"],
Cell[546870, 12623, 1080, 16, 36, "Output"],
Cell[547953, 12641, 1093, 16, 36, "Output"],
Cell[549049, 12659, 1095, 16, 38, "Output"],
Cell[550147, 12677, 1057, 15, 23, "Output"],
Cell[551207, 12694, 1102, 16, 23, "Output"],
Cell[552312, 12712, 1058, 15, 23, "Output"],
Cell[553373, 12729, 1102, 16, 23, "Output"],
Cell[554478, 12747, 1058, 15, 23, "Output"],
Cell[555539, 12764, 1099, 16, 23, "Output"],
Cell[556641, 12782, 1058, 15, 23, "Output"],
Cell[557702, 12799, 1101, 16, 23, "Output"],
Cell[558806, 12817, 1058, 15, 23, "Output"],
Cell[559867, 12834, 1101, 16, 23, "Output"],
Cell[560971, 12852, 1058, 15, 23, "Output"],
Cell[562032, 12869, 1101, 16, 23, "Output"],
Cell[563136, 12887, 1058, 15, 23, "Output"],
Cell[564197, 12904, 1102, 16, 23, "Output"],
Cell[565302, 12922, 1058, 15, 23, "Output"],
Cell[566363, 12939, 1102, 16, 23, "Output"]
}, Open  ]],
Cell[567480, 12958, 168, 3, 23, "Input"],
Cell[CellGroupData[{
Cell[567673, 12965, 2253, 68, 228, "Code"],
Cell[569929, 13035, 1620, 36, 39, "Output"],
Cell[571552, 13073, 1738, 41, 41, "Output"],
Cell[573293, 13116, 1394, 27, 41, "Output"],
Cell[574690, 13145, 1779, 39, 41, "Output"],
Cell[576472, 13186, 1584, 34, 40, "Output"],
Cell[578059, 13222, 2197, 53, 40, "Output"],
Cell[580259, 13277, 2355, 57, 72, "Output"],
Cell[582617, 13336, 1702, 36, 38, "Output"]
}, Open  ]],
Cell[584334, 13375, 80, 2, 23, "Input"],
Cell[CellGroupData[{
Cell[584439, 13381, 788, 25, 86, "Code"],
Cell[585230, 13408, 1758, 42, 46, "Output"],
Cell[586991, 13452, 1740, 41, 41, "Output"],
Cell[588734, 13495, 1758, 42, 46, "Output"]
}, Open  ]],
Cell[590507, 13540, 80, 2, 23, "Input"],
Cell[CellGroupData[{
Cell[590612, 13546, 4341, 141, 138, "Code"],
Cell[594956, 13689, 1396, 23, 18, "Message"],
Cell[596355, 13714, 1396, 23, 18, "Message"],
Cell[597754, 13739, 2234, 50, 35, "Output"],
Cell[599991, 13791, 1396, 23, 18, "Message"],
Cell[601390, 13816, 1396, 23, 18, "Message"],
Cell[602789, 13841, 2234, 50, 35, "Output"],
Cell[605026, 13893, 2347, 51, 35, "Output"],
Cell[607376, 13946, 1396, 23, 18, "Message"],
Cell[608775, 13971, 1396, 23, 18, "Message"],
Cell[610174, 13996, 2234, 50, 35, "Output"],
Cell[612411, 14048, 1394, 23, 18, "Message"],
Cell[613808, 14073, 1395, 23, 18, "Message"],
Cell[615206, 14098, 2234, 50, 35, "Output"],
Cell[617443, 14150, 1395, 23, 18, "Message"],
Cell[618841, 14175, 1395, 23, 18, "Message"],
Cell[620239, 14200, 2234, 50, 35, "Output"],
Cell[622476, 14252, 1396, 23, 18, "Message"],
Cell[623875, 14277, 1396, 23, 18, "Message"],
Cell[625274, 14302, 2233, 50, 35, "Output"],
Cell[627510, 14354, 1396, 23, 18, "Message"],
Cell[628909, 14379, 1396, 23, 18, "Message"],
Cell[630308, 14404, 2234, 50, 35, "Output"],
Cell[632545, 14456, 1396, 23, 18, "Message"],
Cell[633944, 14481, 1396, 23, 18, "Message"],
Cell[635343, 14506, 2234, 50, 35, "Output"]
}, Open  ]],
Cell[637592, 14559, 123, 3, 23, "Input"],
Cell[CellGroupData[{
Cell[637740, 14566, 198, 4, 73, "Code"],
Cell[637941, 14572, 1053, 15, 23, "Output"],
Cell[638997, 14589, 1133, 18, 23, "Output"],
Cell[640133, 14609, 1164, 19, 23, "Output"],
Cell[641300, 14630, 1225, 20, 23, "Output"]
}, Open  ]],
Cell[642540, 14653, 182, 5, 23, "Input"],
Cell[CellGroupData[{
Cell[642747, 14662, 841, 29, 99, "Code"],
Cell[643591, 14693, 1070, 16, 23, "Output"],
Cell[644664, 14711, 1277, 22, 23, "Output"],
Cell[645944, 14735, 1502, 25, 18, "Message"],
Cell[647449, 14762, 1271, 23, 36, "Output"],
Cell[648723, 14787, 1242, 21, 23, "Output"],
Cell[649968, 14810, 1510, 25, 18, "Message"],
Cell[651481, 14837, 1407, 27, 38, "Output"],
Cell[652891, 14866, 1510, 25, 18, "Message"],
Cell[654404, 14893, 1376, 25, 40, "Output"]
}, Open  ]],
Cell[655795, 14921, 80, 2, 23, "Input"],
Cell[CellGroupData[{
Cell[655900, 14927, 759, 20, 99, "Code"],
Cell[656662, 14949, 1516, 26, 39, "Output"],
Cell[658181, 14977, 2446, 54, 36, "Output"],
Cell[660630, 15033, 1796, 34, 39, "Output"],
Cell[662429, 15069, 1402, 27, 23, "Output"],
Cell[663834, 15098, 1286, 24, 52, "Output"],
Cell[665123, 15124, 1554, 32, 25, "Output"]
}, Open  ]],
Cell[666692, 15159, 80, 2, 23, "Input"],
Cell[CellGroupData[{
Cell[666797, 15165, 140, 4, 35, "Code"],
Cell[666940, 15171, 1450, 28, 37, "Output"]
}, Open  ]],
Cell[668405, 15202, 80, 2, 23, "Input"],
Cell[CellGroupData[{
Cell[668510, 15208, 404, 13, 35, "Code"],
Cell[668917, 15223, 1449, 28, 37, "Output"]
}, Open  ]],
Cell[670381, 15254, 80, 2, 23, "Input"],
Cell[CellGroupData[{
Cell[670486, 15260, 2651, 83, 99, "Code"],
Cell[673140, 15345, 1371, 26, 37, "Output"],
Cell[674514, 15373, 1441, 28, 37, "Output"],
Cell[675958, 15403, 1604, 32, 37, "Output"],
Cell[677565, 15437, 1954, 42, 37, "Output"],
Cell[679522, 15481, 2442, 56, 65, "Output"],
Cell[681967, 15539, 3069, 74, 65, "Output"]
}, Open  ]],
Cell[685051, 15616, 80, 2, 23, "Input"],
Cell[CellGroupData[{
Cell[685156, 15622, 5201, 173, 138, "Code"],
Cell[690360, 15797, 1368, 26, 37, "Output"],
Cell[691731, 15825, 1439, 28, 37, "Output"],
Cell[693173, 15855, 1665, 35, 37, "Output"],
Cell[694841, 15892, 1664, 35, 37, "Output"],
Cell[696508, 15929, 1759, 38, 37, "Output"],
Cell[698270, 15969, 2033, 47, 37, "Output"],
Cell[700306, 16018, 2307, 56, 66, "Output"],
Cell[702616, 16076, 2581, 65, 66, "Output"],
Cell[705200, 16143, 2652, 67, 66, "Output"]
}, Open  ]],
Cell[707867, 16213, 80, 2, 23, "Input"],
Cell[CellGroupData[{
Cell[707972, 16219, 293, 9, 47, "Code"],
Cell[708268, 16230, 1367, 26, 37, "Output"],
Cell[709638, 16258, 1487, 30, 37, "Output"]
}, Open  ]],
Cell[711140, 16291, 80, 2, 23, "Input"],
Cell[CellGroupData[{
Cell[711245, 16297, 3272, 104, 190, "Code"],
Cell[714520, 16403, 1090, 16, 23, "Output"],
Cell[715613, 16421, 1090, 16, 23, "Output"],
Cell[716706, 16439, 4948, 87, 611, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature nuDVSsPh8V2DIAglnBZL0xhj *)
