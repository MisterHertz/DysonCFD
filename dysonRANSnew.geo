SetFactory("OpenCASCADE");
Merge "dyson.step";
Physical Volume("vol") = {1};
//+

Transfinite Line {5, 33, 34, 7} = 30 Using Progression 1; //45

Transfinite Line {22, 19, 20, 17} = 30 Using Progression 1; //30

Transfinite Line {10, 15, 14, 8} = 30 Using Progression 1; //45

Transfinite Line {26, 32, 25, 30} = 30 Using Progression 1; //30

Transfinite Line {40, 45} = 10 Using Progression 1;

Transfinite Line {1, 3} = 1 Using Progression 1;
Transfinite Line {11, 13} = 6 Using Progression 1;
Transfinite Line {28, 27} = 10 Using Progression 1;

Transfinite Line {12, 9, 29, 24, 6, 31, 21, 16, 51, 23, 23, 23, 18, 2, 2, 2, 4} = 300 Using Progression 1;//bump 0.5

Transfinite Line {46, 39} = 20 Using Progression 1;

Transfinite Line {37, 35, 43, 41} = 20 Using Progression 1; //box 

Transfinite Line {49, 50, 47, 48} = 20 Using Progression 1; //box

Transfinite Line {36, 44, 42, 38} = 20 Using Progression 1; //box



//Note : surface 13 is the symmetric surface, surfaces 12-17 are surface of outer box.
//Transfinite Surface {1};
//Transfinite Surface {2};
//Transfinite Surface {3};
//Transfinite Surface {4};
//Transfinite Surface {5};
//Transfinite Surface {6};
//Transfinite Surface {7};
//Transfinite Surface {8};
//Transfinite Surface {9};
//Transfinite Surface {10};
//Transfinite Surface {11};
//Transfinite Surface {12};
//Transfinite Surface {13};
//Transfinite Surface {14};
//Transfinite Surface {15};
//Transfinite Surface {16};
//Transfinite Surface {17};
//Transfinite Surface {18};
//Transfinite Surface {19};

//+
Recombine Surface {16, 11, 14, 12,13, 15, 5, 19, 1, 2, 10, 3, 4, 9, 8, 6, 7, 17, 18};
Recombine Surface {1,2,3,4,5,6,7,8,9,10,11,18,19};
//+

//+
Physical Surface("outerBox") = {12, 14, 15, 16, 17};
Physical Surface("symmetricWall") = {13};
Physical Surface("inlet") = {9};
Physical Surface("dysonWall") = {1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 18, 19};
//+
Physical Surface("outlet") = {16};
//+

//Field[1] = Distance;
//Field[1].NodesList = {3};
//Field[1].NNodesByEdge = 3;
//Field[1].EdgesList = {39};
//+
Field[2] = Threshold;
Field[2].IField = 1;
Field[2].LcMin = 1.3e-4;
Field[2].LcMax = 1.3e-2;
Field[2].DistMin = 1.29e-3;
Field[2].DistMax = 1e-3;
//+
Field[3] = Min;
Field[3].FieldsList = {2};
Background Field = 3;
//+
//Field[4] = MathEval;
//Field[4].F = Sprintf("F4^3 + %g", lc / 100);

Mesh.CharacteristicLengthExtendFromBoundary = 0;
Mesh.CharacteristicLengthFromPoints = 0;
Mesh.CharacteristicLengthFromCurvature = 0;
//+

