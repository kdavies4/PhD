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
NotebookDataLength[     14864,        473]
NotebookOptionsPosition[     14814,        453]
NotebookOutlinePosition[     15148,        468]
CellTagsIndexPosition[     15105,        465]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{"ClearAll", "[", "\"\<Global`*\>\"", "]"}]], "Input"],

Cell[BoxData[{
 RowBox[{"Lx", "=", "1"}], "\[IndentingNewLine]", 
 RowBox[{"Ly", "=", "1"}], "\[IndentingNewLine]", 
 RowBox[{"Lz", "=", "1", " "}]}], "Input",
 CellChangeTimes->{{3.576522667966156*^9, 3.576522673834836*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Expand", "[", 
  RowBox[{"Solve", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"zny", "-", "zpy"}], ")"}], "Lz"}], "-", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"ynz", "-", "ypz"}], ")"}], "Ly"}]}], "\[Equal]", "0"}], "&&",
      " ", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"xnz", "-", "xpz"}], ")"}], "Lx"}], "-", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"znx", "-", "zpx"}], ")"}], "Lz"}]}], "\[Equal]", "0"}], "&&",
      " ", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"ynx", "-", "ypx"}], ")"}], "Ly"}], "-", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"xny", "-", "xpy"}], ")"}], "Lx"}]}], "\[Equal]", "0"}], "&&",
      "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"ynz", "+", "ypz"}], "\[Equal]", 
      RowBox[{"ynzp", " ", "+", "ypzp"}]}], "&&", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"zny", "+", "zpy"}], "\[Equal]", 
      RowBox[{"znyp", "+", "zpyp"}]}], "&&", " ", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"znx", "+", "zpx"}], "\[Equal]", 
      RowBox[{"znxp", " ", "+", "zpxp"}]}], "&&", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"xnz", "+", "xpz"}], "\[Equal]", 
      RowBox[{"xnzp", " ", "+", "xpzp"}]}], "&&", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"xny", "+", "xpy"}], "\[Equal]", 
      RowBox[{"xnyp", " ", "+", "xpyp"}]}], "&&", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"ynx", "+", "ypx"}], "\[Equal]", 
      RowBox[{"ynxp", " ", "+", "ypxp"}]}], "&&", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"zny", "-", "zpy"}], ")"}], "Lz"}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"ynz", "-", "ypz"}], ")"}], "Ly"}]}], "\[Equal]", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"znyp", "-", "zpyp"}], ")"}], "Lz"}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"ynzp", "-", "ypzp"}], ")"}], "Ly"}]}]}], "&&", " ", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"xnz", "-", "xpz"}], ")"}], "Lx"}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"znx", "-", "zpx"}], ")"}], "Lz"}]}], "\[Equal]", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"xnzp", "-", "xpzp"}], ")"}], "Lx"}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"znxp", "-", "zpxp"}], ")"}], "Lz"}]}]}], "&&", " ", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"ynx", "-", "ypx"}], ")"}], "Ly"}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"xny", "-", "xpy"}], ")"}], "Lx"}]}], "\[Equal]", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"ynxp", "-", "ypxp"}], ")"}], "Ly"}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"xnyp", "-", "xpyp"}], ")"}], "Lx"}]}]}]}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
     "ynx", ",", "ypx", ",", "znx", ",", "zpx", ",", "\[IndentingNewLine]", 
      "zny", ",", "zpy", ",", "xny", ",", "xpy", ",", "\[IndentingNewLine]", 
      "xnz", ",", "xpz", ",", "ypz", ",", "ynz"}], "}"}]}], "]"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.576514337793165*^9, 3.576514592625465*^9}, {
  3.576514670607844*^9, 3.576514772063693*^9}, {3.576514884054775*^9, 
  3.576514891882202*^9}, {3.57651500729746*^9, 3.57651512389249*^9}, {
  3.576515173512682*^9, 3.576515314559744*^9}, {3.576515354445102*^9, 
  3.576515405540843*^9}, {3.576515444470063*^9, 3.576515454325965*^9}, {
  3.576515573437105*^9, 3.576515587746621*^9}, {3.576515720605383*^9, 
  3.576515817892756*^9}, {3.576515899767417*^9, 3.57651590521432*^9}, {
  3.576516048679206*^9, 3.576516049638445*^9}, {3.576516117658911*^9, 
  3.576516150079002*^9}, {3.576516305160162*^9, 3.576516331858134*^9}, {
  3.576521801164137*^9, 3.576521812674947*^9}, {3.576522676738951*^9, 
  3.576522687872575*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"ynx", "\[Rule]", 
     RowBox[{
      FractionBox[
       RowBox[{"Lx", " ", "xnyp"}], 
       RowBox[{"4", " ", "Ly"}]], "-", 
      FractionBox[
       RowBox[{"Lx", " ", "xpyp"}], 
       RowBox[{"4", " ", "Ly"}]], "+", 
      FractionBox[
       RowBox[{"3", " ", "ynxp"}], "4"], "+", 
      FractionBox["ypxp", "4"]}]}], ",", 
    RowBox[{"ypx", "\[Rule]", 
     RowBox[{
      RowBox[{"-", 
       FractionBox[
        RowBox[{"Lx", " ", "xnyp"}], 
        RowBox[{"4", " ", "Ly"}]]}], "+", 
      FractionBox[
       RowBox[{"Lx", " ", "xpyp"}], 
       RowBox[{"4", " ", "Ly"}]], "+", 
      FractionBox["ynxp", "4"], "+", 
      FractionBox[
       RowBox[{"3", " ", "ypxp"}], "4"]}]}], ",", 
    RowBox[{"znx", "\[Rule]", 
     RowBox[{
      FractionBox[
       RowBox[{"Lx", " ", "xnzp"}], 
       RowBox[{"4", " ", "Lz"}]], "-", 
      FractionBox[
       RowBox[{"Lx", " ", "xpzp"}], 
       RowBox[{"4", " ", "Lz"}]], "+", 
      FractionBox[
       RowBox[{"3", " ", "znxp"}], "4"], "+", 
      FractionBox["zpxp", "4"]}]}], ",", 
    RowBox[{"zpx", "\[Rule]", 
     RowBox[{
      RowBox[{"-", 
       FractionBox[
        RowBox[{"Lx", " ", "xnzp"}], 
        RowBox[{"4", " ", "Lz"}]]}], "+", 
      FractionBox[
       RowBox[{"Lx", " ", "xpzp"}], 
       RowBox[{"4", " ", "Lz"}]], "+", 
      FractionBox["znxp", "4"], "+", 
      FractionBox[
       RowBox[{"3", " ", "zpxp"}], "4"]}]}], ",", 
    RowBox[{"zny", "\[Rule]", 
     RowBox[{
      FractionBox[
       RowBox[{"Ly", " ", "ynzp"}], 
       RowBox[{"4", " ", "Lz"}]], "-", 
      FractionBox[
       RowBox[{"Ly", " ", "ypzp"}], 
       RowBox[{"4", " ", "Lz"}]], "+", 
      FractionBox[
       RowBox[{"3", " ", "znyp"}], "4"], "+", 
      FractionBox["zpyp", "4"]}]}], ",", 
    RowBox[{"zpy", "\[Rule]", 
     RowBox[{
      RowBox[{"-", 
       FractionBox[
        RowBox[{"Ly", " ", "ynzp"}], 
        RowBox[{"4", " ", "Lz"}]]}], "+", 
      FractionBox[
       RowBox[{"Ly", " ", "ypzp"}], 
       RowBox[{"4", " ", "Lz"}]], "+", 
      FractionBox["znyp", "4"], "+", 
      FractionBox[
       RowBox[{"3", " ", "zpyp"}], "4"]}]}], ",", 
    RowBox[{"xny", "\[Rule]", 
     RowBox[{
      FractionBox[
       RowBox[{"3", " ", "xnyp"}], "4"], "+", 
      FractionBox["xpyp", "4"], "+", 
      FractionBox[
       RowBox[{"Ly", " ", "ynxp"}], 
       RowBox[{"4", " ", "Lx"}]], "-", 
      FractionBox[
       RowBox[{"Ly", " ", "ypxp"}], 
       RowBox[{"4", " ", "Lx"}]]}]}], ",", 
    RowBox[{"xpy", "\[Rule]", 
     RowBox[{
      FractionBox["xnyp", "4"], "+", 
      FractionBox[
       RowBox[{"3", " ", "xpyp"}], "4"], "-", 
      FractionBox[
       RowBox[{"Ly", " ", "ynxp"}], 
       RowBox[{"4", " ", "Lx"}]], "+", 
      FractionBox[
       RowBox[{"Ly", " ", "ypxp"}], 
       RowBox[{"4", " ", "Lx"}]]}]}], ",", 
    RowBox[{"xnz", "\[Rule]", 
     RowBox[{
      FractionBox[
       RowBox[{"3", " ", "xnzp"}], "4"], "+", 
      FractionBox["xpzp", "4"], "+", 
      FractionBox[
       RowBox[{"Lz", " ", "znxp"}], 
       RowBox[{"4", " ", "Lx"}]], "-", 
      FractionBox[
       RowBox[{"Lz", " ", "zpxp"}], 
       RowBox[{"4", " ", "Lx"}]]}]}], ",", 
    RowBox[{"xpz", "\[Rule]", 
     RowBox[{
      FractionBox["xnzp", "4"], "+", 
      FractionBox[
       RowBox[{"3", " ", "xpzp"}], "4"], "-", 
      FractionBox[
       RowBox[{"Lz", " ", "znxp"}], 
       RowBox[{"4", " ", "Lx"}]], "+", 
      FractionBox[
       RowBox[{"Lz", " ", "zpxp"}], 
       RowBox[{"4", " ", "Lx"}]]}]}], ",", 
    RowBox[{"ypz", "\[Rule]", 
     RowBox[{
      FractionBox["ynzp", "4"], "+", 
      FractionBox[
       RowBox[{"3", " ", "ypzp"}], "4"], "-", 
      FractionBox[
       RowBox[{"Lz", " ", "znyp"}], 
       RowBox[{"4", " ", "Ly"}]], "+", 
      FractionBox[
       RowBox[{"Lz", " ", "zpyp"}], 
       RowBox[{"4", " ", "Ly"}]]}]}], ",", 
    RowBox[{"ynz", "\[Rule]", 
     RowBox[{
      FractionBox[
       RowBox[{"3", " ", "ynzp"}], "4"], "+", 
      FractionBox["ypzp", "4"], "+", 
      FractionBox[
       RowBox[{"Lz", " ", "znyp"}], 
       RowBox[{"4", " ", "Ly"}]], "-", 
      FractionBox[
       RowBox[{"Lz", " ", "zpyp"}], 
       RowBox[{"4", " ", "Ly"}]]}]}]}], "}"}], "}"}]], "Output",
 CellChangeTimes->{
  3.576515616982508*^9, 3.576515741762352*^9, {3.576515772541566*^9, 
   3.576515815248182*^9}, 3.576515901103277*^9, 3.5765160506195*^9, {
   3.57651612304274*^9, 3.576516150614615*^9}, {3.576516321860644*^9, 
   3.576516332546222*^9}, 3.576521814851218*^9, {3.576522688764086*^9, 
   3.576522698462388*^9}, 3.576574149329232*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"x", "=", 
  RowBox[{
   FractionBox[
    RowBox[{"Lx", " ", "xnyp"}], 
    RowBox[{"4", " ", "Ly"}]], "-", 
   FractionBox[
    RowBox[{"Lx", " ", "xpyp"}], 
    RowBox[{"4", " ", "Ly"}]], "+", 
   FractionBox[
    RowBox[{"3", " ", "ynxp"}], "4"], "+", 
   FractionBox["ypxp", "4"], "+", 
   RowBox[{"-", 
    FractionBox[
     RowBox[{"Lx", " ", "xnyp"}], 
     RowBox[{"4", " ", "Ly"}]]}], "+", 
   FractionBox[
    RowBox[{"Lx", " ", "xpyp"}], 
    RowBox[{"4", " ", "Ly"}]], "+", 
   FractionBox["ynxp", "4"], "+", 
   FractionBox[
    RowBox[{"3", " ", "ypxp"}], "4"], "+", 
   FractionBox[
    RowBox[{"Lx", " ", "xnzp"}], 
    RowBox[{"4", " ", "Lz"}]], "-", 
   FractionBox[
    RowBox[{"Lx", " ", "xpzp"}], 
    RowBox[{"4", " ", "Lz"}]], "+", 
   FractionBox[
    RowBox[{"3", " ", "znxp"}], "4"], "+", 
   FractionBox["zpxp", "4"], "-", 
   FractionBox[
    RowBox[{"Lx", " ", "xnzp"}], 
    RowBox[{"4", " ", "Lz"}]], "+", 
   FractionBox[
    RowBox[{"Lx", " ", "xpzp"}], 
    RowBox[{"4", " ", "Lz"}]], "+", 
   FractionBox["znxp", "4"], "+", 
   FractionBox[
    RowBox[{"3", " ", "zpxp"}], "4"]}]}]], "Input",
 CellChangeTimes->{{3.576521827672978*^9, 3.576521854190566*^9}, {
  3.576522559463652*^9, 3.576522597026846*^9}}],

Cell[BoxData[
 RowBox[{"ynxp", "+", "ypxp", "+", "znxp", "+", "zpxp"}]], "Output",
 CellChangeTimes->{3.576521855276415*^9, 3.576521906415423*^9, 
  3.576522602265143*^9, 3.57652270141568*^9, 3.576574151532703*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"y", "=", 
  RowBox[{
   FractionBox[
    RowBox[{"Ly", " ", "ynzp"}], 
    RowBox[{"4", " ", "Lz"}]], "-", 
   FractionBox[
    RowBox[{"Ly", " ", "ypzp"}], 
    RowBox[{"4", " ", "Lz"}]], "+", 
   FractionBox[
    RowBox[{"3", " ", "znyp"}], "4"], "+", 
   FractionBox["zpyp", "4"], "-", 
   FractionBox[
    RowBox[{"Ly", " ", "ynzp"}], 
    RowBox[{"4", " ", "Lz"}]], "+", 
   FractionBox[
    RowBox[{"Ly", " ", "ypzp"}], 
    RowBox[{"4", " ", "Lz"}]], "+", 
   FractionBox["znyp", "4"], "+", 
   FractionBox[
    RowBox[{"3", " ", "zpyp"}], "4"], "+", 
   FractionBox[
    RowBox[{"3", " ", "xnyp"}], "4"], "+", 
   FractionBox["xpyp", "4"], "+", 
   FractionBox[
    RowBox[{"Ly", " ", "ynxp"}], 
    RowBox[{"4", " ", "Lx"}]], "-", 
   FractionBox[
    RowBox[{"Ly", " ", "ypxp"}], 
    RowBox[{"4", " ", "Lx"}]], "+", 
   FractionBox["xnyp", "4"], "+", 
   FractionBox[
    RowBox[{"3", " ", "xpyp"}], "4"], "-", 
   FractionBox[
    RowBox[{"Ly", " ", "ynxp"}], 
    RowBox[{"4", " ", "Lx"}]], "+", 
   FractionBox[
    RowBox[{"Ly", " ", "ypxp"}], 
    RowBox[{"4", " ", "Lx"}]]}]}]], "Input",
 CellChangeTimes->{{3.576522538936041*^9, 3.576522564913881*^9}, {
  3.576522616854067*^9, 3.576522655696371*^9}}],

Cell[BoxData[
 RowBox[{"xnyp", "+", "xpyp", "+", "znyp", "+", "zpyp"}]], "Output",
 CellChangeTimes->{3.576522631139421*^9, 3.576522703686084*^9, 
  3.576574155092934*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"x", "=", 
  RowBox[{
   FractionBox[
    RowBox[{"3", " ", "xnzp"}], "4"], "+", 
   FractionBox["xpzp", "4"], "+", 
   FractionBox[
    RowBox[{"Lz", " ", "znxp"}], 
    RowBox[{"4", " ", "Lx"}]], "-", 
   FractionBox[
    RowBox[{"Lz", " ", "zpxp"}], 
    RowBox[{"4", " ", "Lx"}]], "+", 
   FractionBox["xnzp", "4"], "+", 
   FractionBox[
    RowBox[{"3", " ", "xpzp"}], "4"], "-", 
   FractionBox[
    RowBox[{"Lz", " ", "znxp"}], 
    RowBox[{"4", " ", "Lx"}]], "+", 
   FractionBox[
    RowBox[{"Lz", " ", "zpxp"}], 
    RowBox[{"4", " ", "Lx"}]], "+", 
   FractionBox["ynzp", "4"], "+", 
   FractionBox[
    RowBox[{"3", " ", "ypzp"}], "4"], "-", 
   FractionBox[
    RowBox[{"Lz", " ", "znyp"}], 
    RowBox[{"4", " ", "Ly"}]], "+", 
   FractionBox[
    RowBox[{"Lz", " ", "zpyp"}], 
    RowBox[{"4", " ", "Ly"}]], "+", 
   FractionBox[
    RowBox[{"3", " ", "ynzp"}], "4"], "+", 
   FractionBox["ypzp", "4"], "+", 
   FractionBox[
    RowBox[{"Lz", " ", "znyp"}], 
    RowBox[{"4", " ", "Ly"}]], "-", 
   FractionBox[
    RowBox[{"Lz", " ", "zpyp"}], 
    RowBox[{"4", " ", "Ly"}]]}]}]], "Input",
 CellChangeTimes->{{3.576522543803402*^9, 3.576522569718054*^9}, {
  3.576522635646622*^9, 3.576522653798685*^9}, {3.576522727455355*^9, 
  3.576522729701387*^9}}],

Cell[BoxData[
 RowBox[{"xnzp", "+", "xpzp", "+", "ynzp", "+", "ypzp"}]], "Output",
 CellChangeTimes->{3.576522730295838*^9, 3.576574157395776*^9}]
}, Open  ]]
},
WindowSize->{924, 857},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
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
Cell[1235, 30, 76, 1, 30, "Input"],
Cell[1314, 33, 225, 4, 69, "Input"],
Cell[CellGroupData[{
Cell[1564, 41, 4136, 112, 297, "Input"],
Cell[5703, 155, 4644, 144, 231, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[10384, 304, 1265, 41, 101, "Input"],
Cell[11652, 347, 214, 3, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[11903, 355, 1243, 40, 98, "Input"],
Cell[13149, 397, 171, 3, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13357, 405, 1292, 41, 101, "Input"],
Cell[14652, 448, 146, 2, 30, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature iv0wNjHhZCv0YCwlxWI0WFDr *)
