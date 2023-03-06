//Maya ASCII 2019 scene
//Name: nemestice_intro_model.ma
//Last modified: Wed, Jun 16, 2021 09:45:22 PM
//Codeset: 1252
file -rdi 1 -ns "REF" -rfn "nemestice_clean2RN" -op "v=0;" -typ "mayaAscii" "E:/Valve/dev/source2/main/content/dota_addons/nemestice/maps/nemestice_enviro.ma";
file -r -ns "REF" -dr 1 -rfn "nemestice_clean2RN" -op "v=0;" -typ "mayaAscii" "E:/Valve/dev/source2/main/content/dota_addons/nemestice/maps/nemestice_enviro.ma";
requires maya "2019";
requires -nodeType "floatLogic" -nodeType "floatMath" "lookdevKit" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "4.0.2.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "202004141915-92acaa8c08";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19043)\n";
createNode transform -s -n "persp";
	rename -uid "1AA66D79-46BC-A117-8C08-4BAEC7C55375";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3482.486485529626 6415.0071419398619 4048.6915048214109 ;
	setAttr ".r" -type "double3" -43.538352102509876 52.80009447309925 5.2606123833488751e-15 ;
	setAttr ".rp" -type "double3" -9.0949470177292824e-13 0 1.8189894035458565e-12 ;
	setAttr ".rpt" -type "double3" -2.3192627845383789e-13 1.099635921260907e-12 -2.2653339520663273e-12 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AA625592-4F9F-B14C-23B5-D98B02C42DE3";
	setAttr -k off ".v" no;
	setAttr ".fl" 56.446672224050531;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 6651.8052588119408;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -379.81188484357585 2300.7700535302238 1049.500534195718 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "3DA3D971-43DC-3A19-7EEC-B689067D4D52";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 250.81741650252923 8869.1873687237348 636.69695474530033 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A127ED1D-4943-D06D-83CD-96B37323CBF7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 6367.1458575768129;
	setAttr ".ow" 3897.2873015905129;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -1799.9899291341694 2502.0415111469229 2037.0321449130347 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "DAE9E7D2-431A-65A6-995E-209A03ED49D4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DFB63B01-4D2E-B0B9-733C-50879D37C4FA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "91B7153D-451C-AE90-6451-819D4EC09A01";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1462.648440059874 -96.996286929082771 -8.2915065831912216e-05 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "21D59075-4CD3-7855-8DF6-86BFB792B0F9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1491.1387353896919;
	setAttr ".ow" 17366.27512186013;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -28.490295329817855 -96.996286929082771 -8.2915065831912216e-05 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lookAt -n "camera1_group";
	rename -uid "7211E123-4559-367E-3A47-EFA0572A150E";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".db" 1762.8257811825181;
createNode transform -n "camera1" -p "camera1_group";
	rename -uid "BDD012CA-41B3-B42B-0A76-ED9673EA8C71";
	setAttr ".t" -type "double3" -637.27973744167753 1462.9419692700856 -754.15289867692093 ;
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "762F966B-4C8E-52B0-9216-D1B4983927EF";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6790517600000001 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 20.7;
	setAttr ".coi" 1762.8257811825181;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera1_aim" -p "camera1_group";
	rename -uid "142702EB-4704-90B7-B416-59B6F52FCDF2";
	setAttr ".t" -type "double3" -1.1368683772161603e-12 -3.6152414395473897e-11 -4.9999999999676472 ;
	setAttr ".s" -type "double3" 50 50 50 ;
	setAttr ".drp" yes;
createNode locator -n "camera1_aimShape" -p "camera1_aim";
	rename -uid "A8F0B683-4A16-FCAD-6A3B-B392B4C48CFD";
	setAttr -k off ".v" no;
createNode transform -n "camera_intro";
	rename -uid "C83DA3A8-46CC-3B8A-9B29-9897114A9F86";
	setAttr ".s" -type "double3" 50 50 50 ;
	setAttr ".rp" -type "double3" -8.8817841970012523e-14 0 7.1054273576010019e-13 ;
	setAttr ".rpt" -type "double3" -1.7755831861532518e-13 6.1034144565678725e-13 -7.3663611001678387e-13 ;
createNode camera -n "camera_introShape" -p "camera_intro";
	rename -uid "6E539022-4DB4-604E-40A0-67BBD17DC81C";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797793176000002 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 9.9999997473787516e-06;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera2";
	setAttr ".den" -type "string" "camera2_depth";
	setAttr ".man" -type "string" "camera2_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "persp1";
	rename -uid "87F87844-4642-6410-876B-4CB0B3C3E58E";
	setAttr ".t" -type "double3" -6.2542939420500518 4.1522913844067997 2.4445476047551069 ;
	setAttr ".r" -type "double3" -30.338352729538567 291.79999999999274 4.2822161439372784e-15 ;
createNode camera -n "perspShape1" -p "persp1";
	rename -uid "7FEE843A-47E7-C843-4D24-70A0EE51ADDC";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 7.8048257333999338;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".tp" -type "double3" 0 0.21003135714285714 -0.056991500000000084 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera3";
	rename -uid "B18B0894-4B11-D557-3496-E5937A696F43";
	setAttr ".s" -type "double3" 50 50 50 ;
createNode camera -n "cameraShape3" -p "camera3";
	rename -uid "5CFF9F0C-4CA2-C855-D7C7-2FA9A329C499";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6790517600000001 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".coi" 14878.858110299534;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" -28.490295329817855 -96.996286929082771 -8.2915065831912216e-05 ;
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera4_pos4";
	rename -uid "BCE2A564-42D5-3829-E007-048378679DF6";
	setAttr ".s" -type "double3" 50 50 50 ;
createNode camera -n "camera4_posShape4" -p "camera4_pos4";
	rename -uid "2C08AB9E-41F1-B337-5461-53835701B9E1";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6790517600000001 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 3.7487313315228188;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera4";
	setAttr ".den" -type "string" "camera4_depth";
	setAttr ".man" -type "string" "camera4_mask";
	setAttr ".tp" -type "double3" -28.490295329817855 -810.33559092097448 -8.2915065831912216e-05 ;
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode lookAt -n "camera5_group";
	rename -uid "91E5CE20-4A75-9419-A0C0-4B9DACA6E4E1";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".db" 2497.7392222515678;
createNode transform -n "camera5" -p "camera5_group";
	rename -uid "6B65209F-42C6-C28E-5235-5EA8C7A9BA25";
createNode camera -n "cameraShape4" -p "camera5";
	rename -uid "A97AE483-4478-4342-47AC-30BCD8350B4D";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".coi" 2497.7392222515678;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera5";
	setAttr ".den" -type "string" "camera5_depth";
	setAttr ".man" -type "string" "camera5_mask";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera5_aim" -p "camera5_group";
	rename -uid "64454F6D-42A3-B027-EE6F-9E96D75FE8E5";
	setAttr ".t" -type "double3" 0 0 -5 ;
	setAttr ".drp" yes;
createNode locator -n "camera5_aimShape" -p "camera5_aim";
	rename -uid "37A05A4F-4E9A-F76D-1FB3-A6B17A144B50";
	setAttr -k off ".v" no;
createNode transform -n "camera6_elem";
	rename -uid "EAB6884D-47BD-55C3-5129-E4A6E6B56742";
	setAttr ".s" -type "double3" 50 50 50 ;
createNode camera -n "camera6_elemShape" -p "camera6_elem";
	rename -uid "13365979-47B6-10D2-06DD-7A9822604A30";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797131760000001 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 976.80564966196494;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera6";
	setAttr ".den" -type "string" "camera6_depth";
	setAttr ".man" -type "string" "camera6_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "bezier1";
	rename -uid "72C92465-4FE5-B587-46C0-FA9BEE24C288";
createNode bezierCurve -n "bezierShape1" -p "bezier1";
	rename -uid "7E462B4E-4186-CBF6-E1CD-95AD2585C6E3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 34 0 no 3
		39 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4 5 5 5 6 6 6 7 7 7 8 8 8 9 9 9 10 10 10 11
		 11 11 12 12 12
		37
		865.8343505859375 690.35479736328125 -3301.2498779296875
		658.96304534369744 690.35479736328125 -3248.5799166943884
		601.85924373909643 782.485595703125 -3268.605391711797
		533.80426025390625 782.485595703125 -3127.75244140625
		465.74927676871607 782.485595703125 -2986.899491100703
		230.87375894793809 1092.3570556640625 -2854.5041754508638
		-529.3582763671875 1092.3570556640625 -3067.739990234375
		-1289.5903116823131 1092.3570556640625 -3280.9758050178862
		-3132.2637497230262 1646.384765625 -3911.659558254556
		-3792.1807861328125 1646.384765625 -3356.2762451171875
		-4452.0978225425988 1646.384765625 -2800.892931979819
		-4135.4813614493878 1915.671875 -2406.4623695880628
		-3783.1787109375 1915.671875 -1405.18115234375
		-3430.8760604256122 1915.671875 -403.89993509943724
		-1948.8940778443473 2058.91015625 740.22744229922341
		-1603.3999543298989 2058.91015625 1006.881317346581
		-1257.9058308154506 2058.91015625 1273.5351923939386
		-955.90869259390365 2252.2816324103583 1595.6985304853365
		-785.393621460693 2252.2816324103583 1841.7381565270514
		-614.87855032748234 2252.2816324103583 2087.7777825687663
		-207.08681432087019 2225.850039235374 2592.7816837753116
		516.18846824142008 2512.4067385586641 2270.1582481773548
		1239.4637508037104 2798.9634378819542 1947.534812579398
		1078.4951466981734 2965.333450348352 546.80302907248574
		725.2009470542273 3179.7991654261741 7.4075248729896606
		371.90674741028124 3394.2648805039962 -531.98797932650632
		394.70625228379396 3495.9164137444423 -720.0004652234569
		13.264657748118623 3495.9164137444423 -733.36831414071685
		-368.17693678755671 3495.9164137444423 -746.7361630579768
		-726.93408014252134 3495.9164137444423 -576.65167813292442
		-754.74744728819644 3495.9164137444423 39.367851489767645
		-782.56081443387154 3495.9164137444423 655.38738111245971
		-415.91737270771307 3495.9164137444423 1115.0959543314282
		12.341692013629881 3495.9164137444423 1124.0591711958473
		440.60075673497283 3495.9164137444423 1133.0223880602664
		796.76299842119931 3495.9164137444423 951.23480868158913
		843.11861033065759 3495.9164137444423 351.35300454062178
		;
createNode transform -n "positionMarker1" -p "bezierShape1";
	rename -uid "14F671FB-48C9-4887-5B29-5CAA26F44735";
createNode positionMarker -n "positionMarkerShape1" -p "positionMarker1";
	rename -uid "9D70DBA5-49DD-C6E2-3593-DBACC5BA3484";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
	setAttr ".t" 1;
createNode transform -n "positionMarker2" -p "bezierShape1";
	rename -uid "009FF25B-40C1-60C7-77E1-529E18E2E988";
createNode positionMarker -n "positionMarkerShape2" -p "positionMarker2";
	rename -uid "24FE408B-442F-4DC8-1F24-779A301B9032";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
	setAttr ".lp" -type "double3" 1 0 0 ;
	setAttr ".t" 596;
createNode transform -n "positionMarker4" -p "bezierShape1";
	rename -uid "CB6BF256-48C4-7D0B-878D-199E87F9342A";
createNode positionMarker -n "positionMarkerShape4" -p "positionMarker4";
	rename -uid "3C724688-4E1E-A82A-7BE6-859FA1B04009";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
	setAttr ".lp" -type "double3" 0.80667984719619024 0 0 ;
	setAttr ".t" 760;
createNode transform -n "positionMarker5" -p "bezierShape1";
	rename -uid "745DBB71-4F0A-A762-D73E-7AAA380DA500";
createNode positionMarker -n "positionMarkerShape5" -p "positionMarker5";
	rename -uid "82EC99CC-4F63-A0FA-6BA1-4795E3D74613";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
	setAttr ".lp" -type "double3" 0.454093420185604 0 0 ;
	setAttr ".t" 418;
createNode transform -n "positionMarker6" -p "bezierShape1";
	rename -uid "FA776363-486B-6D83-FA85-F2A0CAB87DEC";
createNode positionMarker -n "positionMarkerShape6" -p "positionMarker6";
	rename -uid "C9AD1836-4FCC-850A-E0D7-A9A9EA117ED1";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
	setAttr ".lp" -type "double3" 0.454 0 0 ;
	setAttr ".t" 1;
createNode lookAt -n "camera7_groupq";
	rename -uid "DD3ABEAC-4E34-6983-247E-C08F09856BBE";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 50 50 50 ;
	setAttr ".smd" 7;
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".db" 2.0000000000001421;
createNode transform -n "camera7" -p "camera7_groupq";
	rename -uid "3CDEC8FF-4572-80BE-27DF-AB913B53E76A";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -3.5527136788005009e-15 -1.1368683772161603e-13 ;
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 0 1.2789769243681803e-13 ;
createNode camera -n "cameraShape5" -p "camera7";
	rename -uid "A15E6DF5-41B8-17E6-AC07-FFA325AD4BCB";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797131760000001 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".coi" 2.0000000000001421;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera7";
	setAttr ".den" -type "string" "camera7_depth";
	setAttr ".man" -type "string" "camera7_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "aim_root" -p "camera7_groupq";
	rename -uid "25B2AC3F-4392-93E2-D3AB-DABF6A1E8A88";
createNode locator -n "aim_rootShape" -p "aim_root";
	rename -uid "2EF96080-45EE-64B5-B4F1-10B1A2930757";
	setAttr -k off ".v";
createNode transform -n "camera7_aim" -p "aim_root";
	rename -uid "48FCAA54-46E4-8F58-6993-168EBD4DF149";
	setAttr ".t" -type "double3" 3.4816594052244909e-13 -2.9487523534044158e-13 -2.0000000000001137 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".drp" yes;
createNode locator -n "camera7_aimShape" -p "camera7_aim";
	rename -uid "BD3B81C5-40F0-1315-84DF-42A6ADBCACBE";
	setAttr -k off ".v" no;
createNode aimConstraint -n "aim_root_aimConstraint1" -p "aim_root";
	rename -uid "532F3457-4780-8664-1EC3-DAB93CC045FE";
	addAttr -dcb 0 -ci true -sn "w0" -ln "aim_targetW0" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w1" -ln "pCube_int_point_1W1" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w2" -ln "pCube_int_point_2W2" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w3" -ln "pCube_int_point_3W3" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w4" -ln "pCube_int_point_4W4" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 5 ".tg";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".rsrr" -type "double3" 12.638322069353382 -77.674754427583608 -42.888408169792847 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
	setAttr -k on ".w4";
createNode transform -n "aim_target" -p "camera7_groupq";
	rename -uid "2171C944-41A6-42C2-6A2C-8C870E87239A";
	setAttr ".t" -type "double3" 1.0043077480759166e-12 -1.9113738673093661 -3.0000000000004676 ;
createNode locator -n "aim_targetShape" -p "aim_target";
	rename -uid "7F258D1A-4ED5-AB40-891D-4C9AEEAD2AFB";
	setAttr -k off ".v";
createNode transform -n "pCube_int_point_1";
	rename -uid "552F9A3E-4470-8093-5AF5-AAAECDCD21CD";
	setAttr ".t" -type "double3" 1008.7285655616437 437.85302925697454 -3333.0227988224547 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape1" -p "pCube_int_point_1";
	rename -uid "7038AE8F-4197-5F09-1875-D2BD5E77B374";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube_int_point_2";
	rename -uid "58785177-4320-A3AB-858E-F1987385D694";
	setAttr ".t" -type "double3" -3073.8875300334239 450.99243146130414 -3329.5581100145864 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape2" -p "pCube_int_point_2";
	rename -uid "E2FC31F2-4F52-546B-8E8A-9DB3C6C976AF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube_int_point_3";
	rename -uid "6B86D499-4B41-3C26-4935-51B1728058F6";
	setAttr ".t" -type "double3" -2708.3108797694954 450.99243146130414 -1878.3018796454908 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape3" -p "pCube_int_point_3";
	rename -uid "4864CB52-4678-66C3-97BF-DBA4595E9BE7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube_int_point_4";
	rename -uid "B050DD05-4D7A-B059-765B-A1BD8E158A4C";
	setAttr ".t" -type "double3" 7.5991095326670575 157.6804535722099 -17.634026355233971 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape4" -p "pCube_int_point_4";
	rename -uid "B7028789-42B2-933D-F0A0-EC80DB711B09";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cam7_constraint_ctrl";
	rename -uid "ED58556A-43B3-3DFF-6583-2A935F4BD0B6";
	addAttr -ci true -sn "target_00" -ln "target_00" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_01" -ln "target_01" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_02" -ln "target_02" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_03" -ln "target_03" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_04" -ln "target_04" -min 0 -max 1 -at "double";
	setAttr -k on ".target_00";
	setAttr -k on ".target_01";
	setAttr -k on ".target_02";
	setAttr -k on ".target_03";
	setAttr -k on ".target_04";
createNode locator -n "cam7_constraint_ctrlShape" -p "cam7_constraint_ctrl";
	rename -uid "AA977F29-4BB4-43B1-C9DE-268F7D5903B5";
	setAttr -k off ".v";
createNode transform -n "group";
	rename -uid "A7ECAC20-4752-30A7-0300-6CA0AAB6E683";
createNode transform -n "pasted__cam7_constraint_ctrl" -p "group";
	rename -uid "E95D7C68-425C-5BC7-353D-95A216EABC1A";
	addAttr -ci true -sn "target_00" -ln "target_00" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_01" -ln "target_01" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_02" -ln "target_02" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_03" -ln "target_03" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_04" -ln "target_04" -min 0 -max 1 -at "double";
	setAttr -k on ".target_00";
	setAttr -k on ".target_01";
	setAttr -k on ".target_02";
	setAttr -k on ".target_03";
	setAttr -k on ".target_04";
createNode locator -n "pasted__cam7_constraint_ctrlShape" -p "pasted__cam7_constraint_ctrl";
	rename -uid "145E92F4-4B7E-AA93-50BF-8F9DD8E369E2";
	setAttr -k off ".v";
createNode lookAt -n "camera8_group_shrine";
	rename -uid "BC567995-4995-3E44-E6D1-9DB032264C3D";
	setAttr ".s" -type "double3" 50 50 50 ;
	setAttr ".smd" 7;
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".db" 60.584199779702288;
createNode transform -n "camera8" -p "camera8_group_shrine";
	rename -uid "E03D0B9A-4CAB-624F-E2FC-D7BD57DF16D8";
createNode camera -n "cameraShape6" -p "camera8";
	rename -uid "185D020E-43B1-8FD9-629C-B49A337B40A2";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797131760000001 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".coi" 60.584199779702288;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera8";
	setAttr ".den" -type "string" "camera8_depth";
	setAttr ".man" -type "string" "camera8_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera8_aim" -p "camera8_group_shrine";
	rename -uid "A867FBA0-43D0-2C4B-32B7-2F8DF40AE5F5";
	setAttr ".drp" yes;
createNode locator -n "camera8_aimShape" -p "camera8_aim";
	rename -uid "2F21CC1A-4035-839C-41F3-9BB28A91768C";
	setAttr -k off ".v" no;
createNode parentConstraint -n "camera8_aim_parentConstraint1" -p "camera8_aim";
	rename -uid "31DF9C0F-4339-44E9-FB84-119B29581D33";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pCube_int_point_4W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 41.625898987928387 -3.2672821879873624 ;
	setAttr ".rst" -type "double3" 376.98633765654597 -2727.8739015465085 -934.60084805533904 ;
	setAttr ".rsrr" -type "double3" 0 -106.65130041172446 0 ;
	setAttr -k on ".w0";
createNode transform -n "camera9_mixer";
	rename -uid "06E65864-4424-2C81-3D86-E1883FBE5A8B";
	addAttr -ci true -sn "target_00" -ln "target_00" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_01" -ln "target_01" -min 0 -max 1 -at "double";
	setAttr ".s" -type "double3" 50 50 50 ;
	setAttr -k on ".target_00";
	setAttr -k on ".target_01";
createNode camera -n "camera9_mixerShape" -p "camera9_mixer";
	rename -uid "BF451AA1-4352-1885-D35D-CCB0A5900916";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797131760000001 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 976.80564966196494;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera6";
	setAttr ".den" -type "string" "camera6_depth";
	setAttr ".man" -type "string" "camera6_mask";
	setAttr ".dfg" yes;
	setAttr ".dfc" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode parentConstraint -n "camera9_mixer_parentConstraint1" -p "camera9_mixer";
	rename -uid "F93A2E17-42A5-179E-1780-6B9337CCB787";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "camera6_elemW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "camera8W1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -56.18063465681734 -86.260104122544519 4.8761204636975434e-14 ;
	setAttr ".rst" -type "double3" -139.8131907077827 1724.2917487840396 1947.7314214524686 ;
	setAttr ".rsrr" -type "double3" -34.51752741701722 -8.4093683583256063 -0.54852643546495394 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "camera11_sampler";
	rename -uid "FF822247-4E2E-4EC8-5D97-1D8846771651";
createNode camera -n "camera11_samplerShape" -p "camera11_sampler";
	rename -uid "AF8E7252-4F11-66B6-4E8A-1CAE638754A2";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797793176000002 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera11";
	setAttr ".den" -type "string" "camera11_depth";
	setAttr ".man" -type "string" "camera11_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera12";
	rename -uid "D601FEA3-438F-7F33-E87C-49B27EB0ED3D";
createNode camera -n "camera12Shape" -p "camera12";
	rename -uid "A552DADD-43A3-E60E-7B61-B4A371AD89BF";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797793176000002 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera11";
	setAttr ".den" -type "string" "camera11_depth";
	setAttr ".man" -type "string" "camera11_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera13";
	rename -uid "21433437-44CE-846A-347B-83BE05C59B61";
	setAttr ".s" -type "double3" 50 50 50 ;
createNode camera -n "camera13Shape" -p "camera13";
	rename -uid "DF1796FE-498B-DD8F-3244-B1930F67555A";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797131760000001 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 976.80564966196494;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera6";
	setAttr ".den" -type "string" "camera6_depth";
	setAttr ".man" -type "string" "camera6_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera14";
	rename -uid "ED70C008-4FE3-9C2D-3489-CE9990D26713";
	setAttr ".s" -type "double3" 50 50 50 ;
createNode camera -n "camera14Shape" -p "camera14";
	rename -uid "BC927085-4B7B-2FAC-D528-F99E03D45166";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797131760000001 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 976.80564966196494;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera6";
	setAttr ".den" -type "string" "camera6_depth";
	setAttr ".man" -type "string" "camera6_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera15";
	rename -uid "A0499F8F-410E-02BE-1AAE-B7923D3143DD";
	setAttr ".s" -type "double3" 50 50 50 ;
createNode camera -n "camera15Shape" -p "camera15";
	rename -uid "DFC11328-444C-77BF-381C-089BE80FE128";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797131760000001 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 976.80564966196494;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera6";
	setAttr ".den" -type "string" "camera6_depth";
	setAttr ".man" -type "string" "camera6_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera16_constrained" -p "camera15";
	rename -uid "19B0B97A-429C-FAC1-CDC8-9FB9BEE08033";
	addAttr -ci true -sn "target_00" -ln "target_00" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_01" -ln "target_01" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_02" -ln "target_02" -min 0 -max 1 -at "double";
	setAttr -k on ".target_00";
	setAttr -k on ".target_01";
	setAttr -k on ".target_02";
createNode camera -n "camera16_constrainedShape" -p "camera16_constrained";
	rename -uid "52F783FE-43AA-CD8B-81F0-528F35B4C601";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797793176000002 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera16";
	setAttr ".den" -type "string" "camera16_depth";
	setAttr ".man" -type "string" "camera16_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode aimConstraint -n "camera16_constrained_aimConstraint1" -p "camera16_constrained";
	rename -uid "2033913D-4DF2-DF0F-A2A1-E2A111402304";
	addAttr -dcb 0 -ci true -sn "w0" -ln "cam_16_forward_aimW0" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w1" -ln "pCube_int_point_4W1" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w2" -ln "pCube_int_point_1W2" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 3 ".tg";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".rsrr" -type "double3" 4.3248713003116617 -1.7244696368002992 -1.8541339133175536 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
createNode transform -n "cam_16_forward_aim" -p "camera15";
	rename -uid "B308347B-4B04-D4DA-ADC0-0BBE69DAF00B";
	setAttr ".t" -type "double3" 0 0 -10 ;
createNode locator -n "cam_16_forward_aimShape" -p "cam_16_forward_aim";
	rename -uid "83AB7764-4454-ECE8-80F9-3E8D9EFC6D4A";
	setAttr -k off ".v";
createNode transform -n "camera17";
	rename -uid "DE1CAB73-4E39-54A4-3F0C-17AC3DEA24B3";
	setAttr ".s" -type "double3" 50 50 50 ;
createNode camera -n "camera17Shape" -p "camera17";
	rename -uid "DE3B2004-400A-E0BC-3F3B-C289C002E347";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797131760000001 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 976.80564966196516;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera6";
	setAttr ".den" -type "string" "camera6_depth";
	setAttr ".man" -type "string" "camera6_mask";
	setAttr ".dfg" yes;
	setAttr ".dcf" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera18_constrained" -p "camera17";
	rename -uid "03DF0583-45E4-DE96-4580-9AB08BA5A5D4";
	addAttr -ci true -sn "target_00" -ln "target_00" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_01" -ln "target_01" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_02" -ln "target_02" -min 0 -max 1 -at "double";
	setAttr -k on ".target_00";
	setAttr -k on ".target_01";
	setAttr -k on ".target_02";
createNode camera -n "camera18_constrainedShape" -p "camera18_constrained";
	rename -uid "337A8D56-4CA7-E537-0585-5DBA461A6DBB";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797793176000002 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera16";
	setAttr ".den" -type "string" "camera16_depth";
	setAttr ".man" -type "string" "camera16_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode aimConstraint -n "camera18_constrained_aimConstraint1" -p "camera18_constrained";
	rename -uid "B68F8519-4407-1586-B7D4-2BA8152F0E6C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "cam_18_forward_aimW0" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w1" -ln "pCube_int_point_1W1" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w2" -ln "pCube_int_point_4W2" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 3 ".tg";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".rsrr" -type "double3" 132.55787114790635 -33.387727883991232 -160.39719417178242 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
createNode transform -n "cam_18_forward_aim" -p "camera17";
	rename -uid "3CDB1180-493F-1509-4EAA-1E8CDC39EF12";
	setAttr ".t" -type "double3" 0 0 -10 ;
createNode locator -n "cam_18_forward_aimShape" -p "cam_18_forward_aim";
	rename -uid "20B1B07A-4DD2-7E7D-2974-1C8C7761AA4E";
	setAttr -k off ".v";
createNode transform -n "pCube_int_point_5";
	rename -uid "88C77358-4829-8A49-61D7-19943E2D3858";
	setAttr ".t" -type "double3" 1008.7285655616437 437.85302925697454 -3333.0227988224547 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape5" -p "pCube_int_point_5";
	rename -uid "9DBB8C21-412C-31B8-0DA4-CAA6D885817F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube_int_point_6";
	rename -uid "D39F1439-4F41-E701-CEBF-21938C5FB60F";
	setAttr ".t" -type "double3" 7.5991095326670575 157.6804535722099 -17.634026355233971 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape6" -p "pCube_int_point_6";
	rename -uid "0ADD203D-4EDE-E2D0-8AA3-849D0D64AED9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "camera19";
	rename -uid "0546BD0B-495B-CE43-9F1F-138BC4E03756";
	setAttr ".s" -type "double3" 50 50 50 ;
	setAttr ".rp" -type "double3" -1.4210854715202004e-11 4.9915627187147038e-11 4.5297099404706387e-12 ;
	setAttr ".rpt" -type "double3" 1.2832621507279994e-10 -5.1632959437479782e-11 5.4953363772616914e-11 ;
createNode camera -n "camera19Shape" -p "camera19";
	rename -uid "597090C3-4AD1-6864-5533-439AE166A981";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797131760000001 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 2240.5858904174529;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera6";
	setAttr ".den" -type "string" "camera6_depth";
	setAttr ".man" -type "string" "camera6_mask";
	setAttr ".dfg" yes;
	setAttr ".dcf" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera21_constrained" -p "camera19";
	rename -uid "EC7261B7-4E07-DF40-5491-249468F205D4";
	addAttr -ci true -sn "target_00" -ln "target_00" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_01" -ln "target_01" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_02" -ln "target_02" -min 0 -max 1 -at "double";
	setAttr -k on ".target_00";
	setAttr -k on ".target_01";
	setAttr -k on ".target_02";
createNode camera -n "camera21_constrainedShape" -p "camera21_constrained";
	rename -uid "1AA0C4AA-4909-0A59-6F94-10BD030B5238";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797793176000002 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera16";
	setAttr ".den" -type "string" "camera16_depth";
	setAttr ".man" -type "string" "camera16_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode aimConstraint -n "camera18_constrained_aimConstraint1" -p "camera21_constrained";
	rename -uid "42020AC6-4564-43C5-B8D1-FAB7AA253962";
	addAttr -dcb 0 -ci true -sn "w0" -ln "cam_18_forward_aimW0" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w1" -ln "pCube_int_point_1W1" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w2" -ln "pCube_int_point_4W2" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 3 ".tg";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".rsrr" -type "double3" 132.55787114790635 -33.387727883991232 -160.39719417178242 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
createNode transform -n "cam_21_forward_aim" -p "camera19";
	rename -uid "07ADB3DB-4496-C306-7C37-92AC5AC937BC";
	setAttr ".t" -type "double3" 0 0 -10 ;
createNode locator -n "cam_21_forward_aimShape" -p "cam_21_forward_aim";
	rename -uid "D5E65C93-49CE-6F53-3DA1-148F3696CB3C";
	setAttr -k off ".v";
createNode transform -n "pCube_int_point_7";
	rename -uid "C91B0B46-49FA-FC7C-9A5F-C99513E54237";
	setAttr ".t" -type "double3" 1008.7285655616437 437.85302925697454 -3333.0227988224547 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape7" -p "pCube_int_point_7";
	rename -uid "069016C2-4555-F699-78DC-118153625AE3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube_int_point_8";
	rename -uid "2B685D7B-4C78-C451-29AA-B99A074E7A93";
	setAttr ".t" -type "double3" 7.5991095326670575 157.6804535722099 -17.634026355233971 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape8" -p "pCube_int_point_8";
	rename -uid "6F65DB5E-413E-83FF-5DD6-A9BED5C52FA1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube1";
	rename -uid "7B483E20-4107-F947-81B8-7186AD8E280D";
	setAttr ".t" -type "double3" 0 614.12096172039071 -3119.4820761746601 ;
	setAttr ".s" -type "double3" 50 50 50 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "2DACE4A0-41A9-59E1-B6FD-CAA8C65695F7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "camera22";
	rename -uid "05A6EDA1-4625-599E-8077-EF96E2E62109";
	setAttr ".s" -type "double3" 50 50 50 ;
	setAttr ".rp" -type "double3" -1.4210854715202004e-11 4.9915627187147038e-11 4.5297099404706387e-12 ;
	setAttr ".rpt" -type "double3" 1.2832621507279994e-10 -5.1632959437479782e-11 5.4953363772616914e-11 ;
createNode camera -n "camera22Shape" -p "camera22";
	rename -uid "7729EBE7-4110-0A95-C12D-349A676AF42E";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797131760000001 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 2240.5858904174529;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera6";
	setAttr ".den" -type "string" "camera6_depth";
	setAttr ".man" -type "string" "camera6_mask";
	setAttr ".dfg" yes;
	setAttr ".dcf" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera23_constrained" -p "camera22";
	rename -uid "A488988D-444B-E151-BB6B-59A355DA415F";
	addAttr -ci true -sn "target_00" -ln "target_00" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_01" -ln "target_01" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_02" -ln "target_02" -min 0 -max 1 -at "double";
	setAttr -k on ".target_00";
	setAttr -k on ".target_01";
	setAttr -k on ".target_02";
createNode camera -n "camera23_constrainedShape" -p "camera23_constrained";
	rename -uid "6D57B451-4C27-E191-6378-1E9C44182F4E";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797793176000002 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera16";
	setAttr ".den" -type "string" "camera16_depth";
	setAttr ".man" -type "string" "camera16_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode aimConstraint -n "camera18_constrained_aimConstraint1" -p "camera23_constrained";
	rename -uid "A4DC24A9-4A82-EBFA-48ED-D5A8B6B98147";
	addAttr -dcb 0 -ci true -sn "w0" -ln "cam_18_forward_aimW0" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w1" -ln "pCube_int_point_1W1" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w2" -ln "pCube_int_point_4W2" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 3 ".tg";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".rsrr" -type "double3" 132.55787114790635 -33.387727883991232 -160.39719417178242 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
createNode transform -n "cam_23_forward_aim" -p "camera22";
	rename -uid "B32ABFCE-4489-C3D7-683C-D6906BC45A18";
	setAttr ".t" -type "double3" 0 0 -10 ;
createNode locator -n "cam_23_forward_aimShape" -p "cam_23_forward_aim";
	rename -uid "CEDA79A0-45AF-AF83-C1C3-AB968CE54C59";
	setAttr -k off ".v";
createNode transform -n "pCube_int_point_9";
	rename -uid "0B5654A7-4443-4B5A-B361-968632088D70";
	setAttr ".t" -type "double3" 1008.7285655616437 437.85302925697454 -3333.0227988224547 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape9" -p "pCube_int_point_9";
	rename -uid "AE4265AC-41BE-0C9E-A7D6-9F84D278A13C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube_int_point_10";
	rename -uid "777C7E31-460B-8F29-B00F-67B3A8F8D6D7";
	setAttr ".t" -type "double3" 7.5991095326670575 157.6804535722099 -17.634026355233971 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape10" -p "pCube_int_point_10";
	rename -uid "CB65ADB2-43FA-0C6E-96CD-E69059D5DD29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "camera24";
	rename -uid "DF2DF244-4724-CF6C-8EDF-BE9C5D2EDDB9";
	setAttr ".s" -type "double3" 50 50 50 ;
createNode camera -n "camera24Shape" -p "camera24";
	rename -uid "590CE5C0-4697-2A0B-872C-5E90FCEB6D56";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797131760000001 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 976.80564966196494;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera6";
	setAttr ".den" -type "string" "camera6_depth";
	setAttr ".man" -type "string" "camera6_mask";
	setAttr ".dfg" yes;
	setAttr ".dcf" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera18_11_constrained" -p "camera24";
	rename -uid "D5CC76E2-4D6D-7EAC-CCDA-9BA0DCF53173";
	addAttr -ci true -sn "target_00" -ln "target_00" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_01" -ln "target_01" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_02" -ln "target_02" -min 0 -max 1 -at "double";
	setAttr -k on ".target_00";
	setAttr -k on ".target_01";
	setAttr -k on ".target_02";
createNode camera -n "camera18_11_constrainedShape" -p "camera18_11_constrained";
	rename -uid "09E88420-4F9F-99D6-1EEC-B2BB68B746F7";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797793176000002 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera16";
	setAttr ".den" -type "string" "camera16_depth";
	setAttr ".man" -type "string" "camera16_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode aimConstraint -n "camera18_constrained_aimConstraint1" -p "camera18_11_constrained";
	rename -uid "50FA45DF-4206-65B1-790B-D09A3A5255B5";
	addAttr -dcb 0 -ci true -sn "w0" -ln "cam_18_forward_aimW0" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w1" -ln "pCube_int_point_1W1" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w2" -ln "pCube_int_point_4W2" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 3 ".tg";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".rsrr" -type "double3" 132.55787114790635 -33.387727883991232 -160.39719417178242 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
createNode transform -n "cam_18_11_forward_aim" -p "camera24";
	rename -uid "010E2D61-4EE7-6978-AFE3-87871A16C579";
	setAttr ".t" -type "double3" 0 0 -10 ;
createNode locator -n "cam_18_11_forward_aimShape" -p "cam_18_11_forward_aim";
	rename -uid "9D417F31-4FED-3D20-775A-749F4C4AF763";
	setAttr -k off ".v";
createNode transform -n "pCube_int_point_11";
	rename -uid "11B70143-4068-8C38-C7CB-0297F0812312";
	setAttr ".t" -type "double3" 1008.7285655616437 437.85302925697454 -3333.0227988224547 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape11" -p "pCube_int_point_11";
	rename -uid "87ECCDDB-4AB3-6F99-ABD6-52990D92EE6D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube_int_point_12";
	rename -uid "EE6E802B-4362-9B8D-1211-ABAB8FAC3C9E";
	setAttr ".t" -type "double3" 7.5991095326670575 157.6804535722099 -17.634026355233971 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape12" -p "pCube_int_point_12";
	rename -uid "B64A613B-40D3-ED57-7B74-3FA30FE9BB60";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "camera25";
	rename -uid "07F749C1-4E09-31F2-550D-D19DEA2309C6";
	setAttr ".s" -type "double3" 50 50 50 ;
createNode camera -n "camera25Shape" -p "camera25";
	rename -uid "D4BD57B8-43FF-496B-3EE0-EB98C826440D";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797131760000001 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 100;
	setAttr ".fcp" 1000000;
	setAttr ".coi" 976.80564966196471;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera6";
	setAttr ".den" -type "string" "camera6_depth";
	setAttr ".man" -type "string" "camera6_mask";
	setAttr ".dfg" yes;
	setAttr ".dcf" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "camera18_12_constrained" -p "camera25";
	rename -uid "6406A6BC-48AE-C99C-E2FF-898DCF9275DE";
	addAttr -ci true -sn "target_00" -ln "target_00" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_01" -ln "target_01" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "target_02" -ln "target_02" -min 0 -max 1 -at "double";
	setAttr -k on ".target_00";
	setAttr -k on ".target_01";
	setAttr -k on ".target_02";
createNode camera -n "camera18_12_constrainedShape" -p "camera18_12_constrained";
	rename -uid "8FE77A37-46F6-D5C6-2AE7-338CE3CE2CD7";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6797793176000002 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera16";
	setAttr ".den" -type "string" "camera16_depth";
	setAttr ".man" -type "string" "camera16_mask";
	setAttr ".dfg" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode aimConstraint -n "camera18_constrained_aimConstraint1" -p "camera18_12_constrained";
	rename -uid "FEF0102E-487F-EFAD-F153-D7A805E8CF70";
	addAttr -dcb 0 -ci true -sn "w0" -ln "cam_18_forward_aimW0" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w1" -ln "pCube_int_point_1W1" -dv 1 -at "double";
	addAttr -dcb 0 -ci true -sn "w2" -ln "pCube_int_point_4W2" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 3 ".tg";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".rsrr" -type "double3" 132.55787114790635 -33.387727883991232 -160.39719417178242 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
createNode transform -n "cam_18_12_forward_aim" -p "camera25";
	rename -uid "E695130D-44B7-D50B-2932-97B2A1D2067D";
	setAttr ".t" -type "double3" 0 0 -10 ;
createNode locator -n "cam_18_12_forward_aimShape" -p "cam_18_12_forward_aim";
	rename -uid "5082A0E7-42E5-7521-85CA-9A9978CD4FB4";
	setAttr -k off ".v";
createNode transform -n "pCube_int_point_13";
	rename -uid "4C712F9F-47E3-E8F8-5C4E-C583C888F6FC";
	setAttr ".t" -type "double3" 1008.7285655616437 437.85302925697454 -3333.0227988224547 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape13" -p "pCube_int_point_13";
	rename -uid "134F2137-4F5C-F17B-7213-BA8E57642922";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube_int_point_14";
	rename -uid "E26E00D1-40C4-B012-89E6-7AAFE251EFC2";
	setAttr ".t" -type "double3" 7.5991095326670575 157.6804535722099 -17.634026355233971 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode mesh -n "pCube_int_point_Shape14" -p "pCube_int_point_14";
	rename -uid "869A62AC-41D5-F3D1-394F-B49D9375250C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BDC446C6-495C-7887-57B2-55BF7C540484";
	setAttr -s 311 ".lnk";
	setAttr -s 311 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "75A57CE1-4295-508E-C5F8-9C9364170C1F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C2B86211-4E02-57EE-09DD-F792F5DC11CA";
createNode displayLayerManager -n "layerManager";
	rename -uid "48A8CA79-4C3F-0681-2535-F0BC66A6FDCE";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "B59FFB9D-4D5B-0AE2-F177-C398D4B039FC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9AD8BB5D-40AA-7BC8-F85C-E89AAFB5ED26";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6EDFCEDE-4D7B-3C2A-27FB-3893ED6805FE";
	setAttr ".g" yes;
createNode reference -n "nemestice_clean2RN";
	rename -uid "E63F5E29-409D-0C8A-E77D-0D85697A91FD";
	setAttr -s 2 ".fn";
	setAttr ".fn[0]" -type "string" "e:/Valve/dev/source2/main/content/dota_addons/nemestice/maps/nemestice_clean3.ma";
	setAttr ".fn[1]" -type "string" "e:/Valve/dev/source2/main/content/dota_addons/nemestice/maps/nemestice_clean2.ma";
	setAttr -s 19 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"nemestice_clean2RN"
		"nemestice_clean2RN" 0
		"nemestice_clean2RN" 20
		2 "|REF:dota:nemestice" "translate" " -type \"double3\" 0 250 0"
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice.drawOverride" "nemestice_clean2RN.placeHolderList[1]" 
		""
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h31631_CMapGroup|REF:dota:tree_oak_01_mesh|REF:dota:tree_oak_01_meshShape.drawOverride" 
		"nemestice_clean2RN.placeHolderList[2]" ""
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h31631_CMapGroup|REF:dota:tree_oak_01_mesh1|REF:dota:tree_oak_01_mesh1Shape.drawOverride" 
		"nemestice_clean2RN.placeHolderList[3]" ""
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h31631_CMapGroup|REF:dota:tree_oak_01_mesh2|REF:dota:tree_oak_01_mesh60Shape.drawOverride" 
		"nemestice_clean2RN.placeHolderList[4]" ""
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h31732_CMapGroup|REF:dota:tree_oak_01b_mesh|REF:dota:tree_oak_01b_meshShape.drawOverride" 
		"nemestice_clean2RN.placeHolderList[5]" ""
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h31732_CMapGroup|REF:dota:tree_oak_01b_mesh1|REF:dota:tree_oak_01b_mesh1Shape.drawOverride" 
		"nemestice_clean2RN.placeHolderList[6]" ""
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h31732_CMapGroup|REF:dota:tree_oak_01b_mesh2|REF:dota:tree_oak_01b_mesh128Shape.drawOverride" 
		"nemestice_clean2RN.placeHolderList[7]" ""
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h31769_CMapGroup|REF:dota:tree_oak_02_mesh|REF:dota:tree_oak_02_meshShape.drawOverride" 
		"nemestice_clean2RN.placeHolderList[8]" ""
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h31769_CMapGroup|REF:dota:tree_oak_02_mesh1|REF:dota:tree_oak_02_mesh1Shape.drawOverride" 
		"nemestice_clean2RN.placeHolderList[9]" ""
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h31769_CMapGroup|REF:dota:tree_oak_02_mesh2|REF:dota:tree_oak_02_mesh95Shape.drawOverride" 
		"nemestice_clean2RN.placeHolderList[10]" ""
		5 3 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h32447_CMapGroup|REF:dota:waterfall_bridge_statue002_tintable_mesh|REF:dota:waterfall_bridge_statue002_tintable_meshShape.instObjGroups" 
		"nemestice_clean2RN.placeHolderList[11]" ""
		5 3 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h32544_CMapGroup|REF:dota:waterfall_bridge_statue002_tintable_mesh|REF:dota:waterfall_bridge_statue002_tintable_meshShape.instObjGroups" 
		"nemestice_clean2RN.placeHolderList[12]" ""
		5 3 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h32566_CMapGroup|REF:dota:waterfall_bridge_statue002_tintable_mesh|REF:dota:waterfall_bridge_statue002_tintable_meshShape.instObjGroups" 
		"nemestice_clean2RN.placeHolderList[13]" ""
		5 3 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h32681_CMapGroup|REF:dota:waterfall_bridge_statue002_tintable_mesh|REF:dota:waterfall_bridge_statue002_tintable_meshShape.instObjGroups" 
		"nemestice_clean2RN.placeHolderList[14]" ""
		5 3 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h32806_CMapGroup|REF:dota:waterfall_bridge_statue002_tintable_mesh|REF:dota:waterfall_bridge_statue002_tintable_meshShape.instObjGroups" 
		"nemestice_clean2RN.placeHolderList[15]" ""
		5 3 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h39733_CMapGroup|REF:dota:waterfall_bridge_statue002_tintable_mesh|REF:dota:waterfall_bridge_statue002_tintable_meshShape.instObjGroups" 
		"nemestice_clean2RN.placeHolderList[16]" ""
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h37016_CMapGroup|REF:dota:tree_oak_spring_02_mesh|REF:dota:tree_oak_spring_02_meshShape.drawOverride" 
		"nemestice_clean2RN.placeHolderList[17]" ""
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h37016_CMapGroup|REF:dota:tree_oak_spring_02_mesh1|REF:dota:tree_oak_spring_02_mesh1Shape.drawOverride" 
		"nemestice_clean2RN.placeHolderList[18]" ""
		5 4 "nemestice_clean2RN" "|REF:dota:nemestice|REF:dota:h3415_CMapGroup|REF:dota:h37016_CMapGroup|REF:dota:tree_oak_spring_02_mesh2|REF:dota:tree_oak_spring_02_mesh2Shape.drawOverride" 
		"nemestice_clean2RN.placeHolderList[19]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "10FB3CF1-44FB-3E9E-D967-98AC745745C7";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"camera3\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"vPlanarDisplay\" 1 \n            -pluginObjects \"vRigWidget\" 1 \n"
		+ "            -pluginObjects \"vstAttachment\" 1 \n            -pluginObjects \"vChainDisplay\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"vPlanarDisplay\" 1 \n            -pluginObjects \"vRigWidget\" 1 \n            -pluginObjects \"vstAttachment\" 1 \n            -pluginObjects \"vChainDisplay\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"camera18_12_constrainedShape\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 0\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 946\n            -height 721\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"vPlanarDisplay\" 1 \n            -pluginObjects \"vRigWidget\" 1 \n            -pluginObjects \"vstAttachment\" 1 \n            -pluginObjects \"vChainDisplay\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 908\n            -height 721\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"vPlanarDisplay\" 1 \n            -pluginObjects \"vRigWidget\" 1 \n            -pluginObjects \"vstAttachment\" 1 \n            -pluginObjects \"vChainDisplay\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 0\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"on\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 0\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                -pluginObjects \"vPlanarDisplay\" 1 \n                -pluginObjects \"vRigWidget\" 1 \n                -pluginObjects \"vstAttachment\" 1 \n                -pluginObjects \"vChainDisplay\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 51 100 -ps 2 49 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera18_12_constrainedShape\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 946\\n    -height 721\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"vPlanarDisplay\\\" 1 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 1 \\n    -pluginObjects \\\"vChainDisplay\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera18_12_constrainedShape\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 946\\n    -height 721\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"vPlanarDisplay\\\" 1 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 1 \\n    -pluginObjects \\\"vChainDisplay\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 908\\n    -height 721\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"vPlanarDisplay\\\" 1 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 1 \\n    -pluginObjects \\\"vChainDisplay\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 908\\n    -height 721\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"vPlanarDisplay\\\" 1 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 1 \\n    -pluginObjects \\\"vChainDisplay\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6C5CA330-4D54-54BB-6FA7-13A673405718";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 500 -ast 1 -aet 1286 ";
	setAttr ".st" 6;
createNode animCurveTL -n "camera_intro_translateX";
	rename -uid "C0AC3C19-4414-07A2-A9AE-DBA92AEFF675";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -9.7157749971435692 180 -9.7157749971435692;
createNode animCurveTL -n "camera_intro_translateY";
	rename -uid "603C092E-417E-3A3A-793C-8185C47DA78E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1887.9473175038797 180 2563.7916881999449;
createNode animCurveTL -n "camera_intro_translateZ";
	rename -uid "02E924E5-4D6E-B1F4-8250-A1A12027DF17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -19.106994804416562 180 -19.106994804416562;
createNode animCurveTA -n "camera_intro_rotateX";
	rename -uid "494CC4E5-4F3C-9C92-4F23-A1871DC716C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 90 180 90.000000000000028;
createNode animCurveTA -n "camera_intro_rotateY";
	rename -uid "6789B074-40BE-4FF0-06F0-79B1EC12664D";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  1 -90 180 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  5.8137524072159668;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  5.8137524072159668;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "camera_intro_rotateZ";
	rename -uid "10B877DC-4C45-5C1E-AA1B-4EA3E0EA4018";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 180 180 179.99999999999997;
createNode animCurveTU -n "camera_introShape_focalLength";
	rename -uid "D6DC497E-455A-ECB9-728D-F09046366560";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 29;
createNode blinn -n "typeBlinn";
	rename -uid "0EE05864-4375-221A-1BF9-D0B4F7F017A5";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "typeBlinnSG";
	rename -uid "9F6DC972-4B24-F44E-5FED-198545D9E671";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "CFD53D0E-4358-7916-F852-6889B84038E0";
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "6D395B5A-4144-5FBB-268C-F98AE61DC859";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "D2739529-4A13-53A2-EE11-6287CF3773D8";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "multiplyDivide3";
	rename -uid "0832DBFE-49D1-3202-FB80-CABD222F1A3F";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "multiplyDivide4";
	rename -uid "FF6F6BA9-4927-AB32-0C84-3DA00A568257";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode unitConversion -n "unitConversion8";
	rename -uid "55C7872F-4640-AC22-0682-23B139939606";
	setAttr ".cf" 0.017453292519943295;
createNode animCurveTL -n "camera3_translateX";
	rename -uid "9B89D4F7-4019-FCB5-7F93-9298622F8CA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5884.6559999999999 180 -746.00094939239818
		 290 -1109.2884232731126;
createNode animCurveTL -n "camera3_translateY";
	rename -uid "A77FD7F7-48D1-5704-4304-30889EC6ABBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1971.144 180 1675.3324605271205 290 848.18043059352021;
createNode animCurveTL -n "camera3_translateZ";
	rename -uid "AF1477A5-4AC9-6D6D-B351-97BC365E17B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -638.937 180 -725.73899247575389 290 -1237.5640353542929;
createNode animCurveTA -n "camera3_rotateX";
	rename -uid "DE91F00C-4350-2930-F064-17A75A5F524B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -59.999999999999986 180 -53.954485515834634
		 290 -19.836085515834675;
createNode animCurveTA -n "camera3_rotateY";
	rename -uid "86E5CABE-43E6-223B-0B49-35BDD0287CEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90 180 -134.0132808283812 290 -138.01328082838114;
createNode animCurveTA -n "camera3_rotateZ";
	rename -uid "FE9A59D0-4866-317C-970C-1296AFC3DEBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 180 0 290 0;
createNode animCurveTU -n "cameraShape3_focalLength";
	rename -uid "278DCBCC-4ABF-26F4-1892-F69A0F11FCA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 20.7 290 20.7;
createNode reference -n "sharedReferenceNode";
	rename -uid "DD99B844-4FCF-4816-DE83-A39F03AD7C1F";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode animCurveTL -n "camera4_pos4_translateX";
	rename -uid "6363A871-4817-8E08-1C13-0FA2707721F1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1884.1163721549174 30 2296.3248837819106
		 78 2684.4278769235516 164.99999978741496 2517.1492201796145 255 461.45470145613223
		 345 75.801361566454318 435 58.085774543766831;
	setAttr -s 7 ".kit[0:6]"  2 9 9 9 9 9 18;
	setAttr -s 7 ".kot[0:6]"  2 9 9 9 9 9 18;
createNode animCurveTL -n "camera4_pos4_translateY";
	rename -uid "8FA000C4-4F55-6B31-8034-0D8D21E63454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1500.5490142871708 30 1500.5490142871708
		 78 1388.0747735344435 164.99999978741496 1385.0071273204805 255 2893.9960265693148
		 345 3315.821446078975 435 2400.0229539926836;
	setAttr -s 7 ".kit[0:6]"  2 9 9 9 9 9 18;
	setAttr -s 7 ".kot[0:6]"  2 9 9 9 9 9 18;
createNode animCurveTL -n "camera4_pos4_translateZ";
	rename -uid "DA079BF1-49F7-5B0E-2101-599B52A92B1E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 4502.6833791256522 30 4070.1843889162078
		 78 2981.0111521359195 164.99999978741496 465.32457907146301 255 -2893.9967151445239
		 345 -433.11730261886964 435 -288.69979184113754;
	setAttr -s 7 ".kit[0:6]"  2 9 9 9 9 9 18;
	setAttr -s 7 ".kot[0:6]"  2 9 9 9 9 9 18;
createNode animCurveTA -n "camera4_pos4_rotateX";
	rename -uid "290CDF5B-42BC-6956-F7F0-BD8D2DAF0AB1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -84.263893768629686 30 -84.263893768629686
		 78 -42.404011358567104 164.99999978741496 -43.121295980349664 255 -47.411387878142357
		 345 -81.880993926290728 435 -53.831130819584821;
	setAttr -s 7 ".kit[0:6]"  2 9 9 9 9 9 18;
	setAttr -s 7 ".kot[0:6]"  2 9 9 9 9 9 18;
createNode animCurveTA -n "camera4_pos4_rotateY";
	rename -uid "8AD6F4EF-4C50-EBCA-2D10-C592E606D994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -224.42252228132037 30 -224.42252228132037
		 78 -196.12975101960012 164.99999978741496 -181.72875227652378 255 -189.79219236801632
		 345 -194.09209615349715 435 -103.4209011180767;
	setAttr -s 7 ".kit[0:6]"  2 9 9 9 9 9 18;
	setAttr -s 7 ".kot[0:6]"  2 9 9 9 9 9 18;
createNode animCurveTA -n "camera4_pos4_rotateZ";
	rename -uid "FFF2844A-4A97-93E0-1B0B-B9A59A3276E8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0.47143683695924959 30 0.47143683695924959
		 78 -2.3644745880180866 164.99999978741496 7.8781454418192087 255 0.2030839972107237
		 345 0.82488611980910986 435 -36.58077285100088;
	setAttr -s 7 ".kit[0:6]"  2 9 9 9 9 9 18;
	setAttr -s 7 ".kot[0:6]"  2 9 9 9 9 9 18;
createNode animCurveTL -n "camera5_translateX";
	rename -uid "2A5B98F6-441E-998E-18D8-0492C999B96B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 2684.4278769235516 89.999999787414964 2517.1492201796145
		 180 461.45470145613223 270 75.801361566454318 360 58.085774543766831;
	setAttr -s 5 ".kit[0:4]"  2 9 9 9 18;
	setAttr -s 5 ".kot[0:4]"  2 9 9 9 18;
createNode animCurveTL -n "camera5_translateY";
	rename -uid "BCEFC13A-4EB9-0D2D-E099-28BFC340D621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 1388.0747735344435 89.999999787414964 1385.0071273204805
		 180 3456.8555426076641 270 3457.1747601267657 360 2400.0229539926836;
	setAttr -s 5 ".kit[0:4]"  2 9 9 9 18;
	setAttr -s 5 ".kot[0:4]"  2 9 9 9 18;
createNode animCurveTL -n "camera5_translateZ";
	rename -uid "BC818AEA-4A7B-A2C8-36E0-399FF30C606E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 2981.0111521359195 89.999999787414964 465.32457907146301
		 180 -2893.9967151445239 270 -433.11730261886964 360 -288.69979184113754;
	setAttr -s 5 ".kit[0:4]"  2 9 9 9 18;
	setAttr -s 5 ".kot[0:4]"  2 9 9 9 18;
createNode animCurveTL -n "camera6_elem_translateX";
	rename -uid "2FD273A9-42BF-8370-271E-F7B8935DF4BE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 865.83433568636724 50 533.80427761295243
		 130 -656.98521790140296 190 -2104.5910116153154 235 -3720.2527115039866 325 -5111.6131936472902
		 385 -3783.1787174163396 415 -3066.2540682353615 445 -1556.1770655650225 515 4.7997358983425258
		 555 959.18754245263767 585 1185.2095878676244 665 998.29051687732101;
	setAttr -s 13 ".kit[10:12]"  18 18 18;
	setAttr -s 13 ".kot[10:12]"  18 18 18;
createNode animCurveTL -n "camera6_elem_translateY";
	rename -uid "CBA62D83-4095-8FDC-72FE-3B8E3E69A79B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 690.35481689566132 50 782.4855777374953
		 130 1092.357 190 1383.8316557435433 235 1646.3847102806963 325 1775.7009189239852
		 385 1915.6718249342073 445 2098.9100954473697 515 1751.1727085417506 555 2365.9463836858622
		 585 3178.8663269236181 665 3471.1727085417506;
	setAttr -s 12 ".kit[9:11]"  18 18 18;
	setAttr -s 12 ".kot[9:11]"  18 18 18;
createNode animCurveTL -n "camera6_elem_translateZ";
	rename -uid "BBA3A7B0-48A0-414A-E599-CFB8E0E7FA2C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -3301.2498615624795 50 -3127.7524414644399
		 130 -3465.1345391698696 190 -4172.03919308489 235 -3898.4960201842214 325 -2859.2417764003749
		 385 -1405.1811097235038 445 1042.3637195345618 515 2047.2475353094958 555 1337.7808652845385
		 585 409.27730901200948 665 125.87637106096079;
	setAttr -s 12 ".kit[9:11]"  18 18 18;
	setAttr -s 12 ".kot[9:11]"  18 18 18;
createNode displayLayer -n "REF_environment";
	rename -uid "D05BAECB-4CBA-EA4B-410C-EF897F51CFF0";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode animCurveTA -n "camera6_elem_rotateZ";
	rename -uid "EB6563DF-4D14-C374-16AE-ADBE170A5F8B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 2.6861892611828835e-14 50 1.8179138937435711e-14
		 130 0 190 0 235 0 325 0 385 0 445 0 515 0 555 0 585 0 665 0;
	setAttr -s 12 ".kit[9:11]"  18 18 18;
	setAttr -s 12 ".kot[9:11]"  18 18 18;
createNode animCurveTA -n "camera6_elem_rotateY";
	rename -uid "43A9C1B5-48CB-E40F-64C1-E1A89491B10E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -81.000000537310527 50 -68.200508267356412
		 130 -109.99999621653467 190 -90.636731284602433 235 -88.400000424994715 325 -88.400000424994715
		 385 -76.853071447382405 445 -55.600007390148875 515 0.39998098025661954 555 36.129930954296405
		 585 71.474651817348985 665 82.399963696468447;
	setAttr -s 12 ".kit[9:11]"  18 18 18;
	setAttr -s 12 ".kot[9:11]"  18 18 18;
createNode animCurveTA -n "camera6_elem_rotateX";
	rename -uid "AB227D4C-40E2-8B15-CB23-04BBC410FE3F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -32.95492140038197 50 -24.619400637032719
		 130 -27.00000232636587 190 -48.477374301063648 235 -57.043759279970075 325 -57.043759279970075
		 385 -52.45003459370426 445 -44.369761799557971 515 -37.059432008547951 555 -52.200128265440924
		 585 -66.541656010934517 665 -72.287802725630968;
	setAttr -s 12 ".kit[9:11]"  18 18 18;
	setAttr -s 12 ".kot[9:11]"  18 18 18;
createNode motionPath -n "motionPath1";
	rename -uid "1B0DD97E-4665-D718-654F-23BEF3374231";
	setAttr -s 2 ".pmt";
	setAttr -s 2 ".pmt";
	setAttr ".f" yes;
	setAttr ".fa" 2;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode animCurveTL -n "motionPath1_uValue";
	rename -uid "A47AC5C6-4A63-1499-7A36-31B974DECE1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 596 1;
createNode addDoubleLinear -n "addDoubleLinear1";
	rename -uid "22B7C856-4087-D6BF-8A1E-84A1E0B9323D";
createNode addDoubleLinear -n "addDoubleLinear2";
	rename -uid "7821B806-4FDD-3F09-6F55-E8B9C78E6D1C";
createNode addDoubleLinear -n "addDoubleLinear3";
	rename -uid "C6C1759D-4785-7946-AEC3-C399E8F64667";
createNode polyCube -n "polyCube6";
	rename -uid "40AE013B-41E8-1509-992B-029E96A5E94C";
	setAttr ".cuv" 4;
createNode expression -n "expression1";
	rename -uid "747ABC9F-49D2-964F-D596-8FBD6C202A89";
	setAttr -k on ".nds";
	setAttr -s 4 ".in";
	setAttr -s 4 ".in";
	setAttr ".ixp" -type "string" ".O[0] = max(1 - (.I[0] + .I[1] + .I[2] + .I[3]), 0)";
createNode floatMath -n "floatMath1";
	rename -uid "AE7C684F-488B-9453-7013-2BA021F5AF0A";
createNode floatMath -n "pasted__floatMath1";
	rename -uid "CB09AE23-4A3A-AE5B-E297-D68FEAA4421E";
createNode expression -n "pasted__expression1";
	rename -uid "065169BD-4D78-7D1D-BB43-9B992D5875CC";
	setAttr -k on ".nds";
	setAttr -s 4 ".in";
	setAttr -s 4 ".in";
	setAttr ".ixp" -type "string" ".O[0] = 1 - (.I[0] + .I[1] + .I[2] + .I[3])";
createNode floatMath -n "floatMath2";
	rename -uid "B8730A45-46D3-A065-2526-DEB5F1EDAB2E";
createNode floatMath -n "floatMath3";
	rename -uid "A45474A6-4085-6F2C-7013-BBABEC4F9632";
createNode floatMath -n "floatMath4";
	rename -uid "B4DE8183-48D9-1C2A-6A35-F196D40AA5A5";
	setAttr "._cnd" 1;
createNode floatLogic -n "floatLogic1";
	rename -uid "F799F9C1-45D8-01AA-539C-C79FAA167703";
	setAttr "._op" 3;
createNode animCurveTU -n "cam7_constraint_ctrl_target_01";
	rename -uid "3656C614-457B-2C25-FE76-2F9AD33A5D6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 0;
createNode animCurveTU -n "cam7_constraint_ctrl_target_02";
	rename -uid "AB671D41-4289-3FEA-0605-6FA10BC24EFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  150 0 210 1 240 0;
createNode animCurveTU -n "cam7_constraint_ctrl_target_03";
	rename -uid "A4E36F41-4942-3B37-1F76-B8B6F1EC5598";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  200 0 240 1 270 0;
createNode animCurveTU -n "cam7_constraint_ctrl_target_04";
	rename -uid "3F962CFF-40DF-4E53-B838-F2BDB5F74994";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  240 0 270 1;
createNode motionPath -n "motionPath2";
	rename -uid "50C625C3-4601-780F-B7F4-30AE115AB402";
	setAttr -s 3 ".pmt";
	setAttr -s 3 ".pmt";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode animCurveTL -n "motionPath2_uValue";
	rename -uid "93D7432F-4D44-689E-D7CC-50AB24795A58";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.454 418 0.454093420185604 760 0.80667984719619024;
	setAttr -s 3 ".kit[0:2]"  18 1 1;
	setAttr -s 3 ".kot[0:2]"  18 1 1;
	setAttr -s 3 ".ktl[1:2]" no yes;
	setAttr -s 3 ".kix[1:2]"  0.99999999977231002 0.9999984904292597;
	setAttr -s 3 ".kiy[1:2]"  2.1339636300620524e-05 0.0017375670352557599;
	setAttr -s 3 ".kox[1:2]"  0.99823139661575033 0.99999849043164302;
	setAttr -s 3 ".koy[1:2]"  0.059448118646165726 0.0017375656635927105;
createNode addDoubleLinear -n "addDoubleLinear4";
	rename -uid "471F7A1E-4F78-EC30-35CE-EABF3076F2E3";
createNode addDoubleLinear -n "addDoubleLinear5";
	rename -uid "7D854924-4F65-B4FF-81E0-7D9FD0059301";
createNode addDoubleLinear -n "addDoubleLinear6";
	rename -uid "C81945B2-492E-9E5B-CF16-2392C3925E1D";
createNode animCurveTU -n "camera9_mixer_target_01";
	rename -uid "92881A9C-4797-6049-A941-05973249B5A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  420 0 520 1;
createNode expression -n "expression2";
	rename -uid "25EA5FC6-4F7C-0139-7224-6C813E120B6F";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode timeEditor -s -n "timeEditor";
	rename -uid "1595884D-45CE-CCC2-C323-2CAB237E1F5A";
	setAttr ".ac" 0;
	setAttr -s 3 ".ats";
createNode animCurveTL -n "camera10_sampler_translateX";
	rename -uid "48373C91-44F8-7CC2-ECBB-179F6BB7C6E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 865.83433568636724 118 -439.31405311699154
		 190 -2104.5910116153154 229 -3561.5882432133094 292 -4852.7510127423602 322 -5108.0555483574371
		 334 -5059.7169704216039 352 -4701.9906687140719 388 -3717.9016382863965 409 -3261.525173464212
		 418 -2942.0701905318001 439 -1786.4098971317428 445 -1549.89060479658 532 732.92179082990447
		 559 1003.9148690864339 800 61.642006890603497;
createNode animCurveTL -n "camera10_sampler_translateY";
	rename -uid "4546F258-45C5-CDE3-E8DD-3C992A85B013";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 690.35481689566132 202 1457.1243731721231
		 442 2096.127299025316 484 2138.2718891709037 499 2246.3384559678257 547 2730.3776868545006
		 712 3473.2804831394606 800 3495.3170801332012;
createNode animCurveTL -n "camera10_sampler_translateZ";
	rename -uid "2887A443-4493-E375-3DBD-12A4638905DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -3301.2498615624795 133 -3489.8672243294691
		 190 -4172.03919308489 322 -2908.2862329639593 373 -1774.191739944109 394 -1075.5488356131343
		 436 765.25678417884978 493 2209.3247699336898 505 2351.4553672957395 523 2261.1366173680649
		 634 23.184857944782834 727 -713.50350483599959 800 -730.54849321635436;
createNode animCurveTA -n "camera10_sampler_rotateX";
	rename -uid "8026DA8A-429C-E5AD-7BAF-F9A5F2905087";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 -32.95492140038197 40 -25.535318166730196
		 94 -23.720537059533076 124 -26.067759931478186 136 -28.27507050594734 151 -33.196260019805891
		 184 -46.577434748052042 211 -53.710381455870525 232 -56.822200021404051 343 -56.180634656817276
		 445 -44.54067134732496 472 -43.696722300083977 493 -41.559210285584179 502 -41.851211353946212
		 529 -46.606822628372989 613 -71.970833180983576 643 -77.850666437306757 664 -79.235075096408565
		 800 -77.909312392436092;
createNode animCurveTA -n "camera10_sampler_rotateY";
	rename -uid "EA7C7903-431E-4F32-87A9-99808DA36A2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -81.000000537310527 43 -67.529474212133721
		 130 -109.99999621653467 433 -62.087951367641637 637 89.82581421076749 688 144.27945592353615
		 751 174.39631204153773 800 175.66495106516552;
createNode animCurveTA -n "camera10_sampler_rotateZ";
	rename -uid "F235F868-4D28-E492-F458-69A3CC63BE25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  1 2.0331548223494798e-14 421 0.00064267150518173665
		 424 0.0070478559888127778 427 0.013843266782454193 430 0.016508737025619447 433 0.014151620093316145
		 439 0.0026376008763424569 442 -7.4794616871400263e-05 445 0.0027959533976143255 448 0.013041473059593432
		 451 0.03134282653041217 454 0.056552676684425728 457 0.086040137920339169 460 0.11630592281311326
		 463 0.14362931129096493 466 0.16457429305754506 469 0.17629230471149562 472 0.17660616240265983
		 475 0.16415402520683589 484 0.10946308102494573 487 0.093106610583215788 490 0.078453014201458879
		 493 0.065444110260881649 496 0.053834760105879634 502 0.033620153045375231 508 0.016608686183073429
		 511 0.0097326014484169429 514 0.0044489159739651788 517 0.001119768245991707 520 0
		 800 0;
createNode timeEditorTracks -n "Composition1";
	rename -uid "BD5EFB28-4006-D654-D391-7285A129E41F";
	setAttr -s 3 ".t";
	setAttr ".t[0].idx" 0;
	setAttr ".t[0].tc" -type "float3" 0.21960784 0.21960784 0.21960784 ;
	setAttr ".t[1].idx" 1;
	setAttr ".t[1].n" -type "string" "track2";
	setAttr ".t[1].tm" yes;
	setAttr ".t[1].tc" -type "float3" 0.21960784 0.21960784 0.21960784 ;
	setAttr ".t[2].idx" 2;
	setAttr ".t[2].n" -type "string" "track3";
	setAttr ".t[2].tc" -type "float3" 0.21960784 0.21960784 0.21960784 ;
	setAttr -s 2 ".ct";
	setAttr ".clch" yes;
createNode timeEditorAnimSource -n "anim_camera10sampler_AnimSource";
	rename -uid "511A45FC-4514-5854-409F-8C8E8B45F011";
	setAttr -s 6 ".an";
	setAttr ".an[0].asv" 865.83433568636724;
	setAttr ".an[0].at" -type "string" "camera10_sampler.translateX";
	setAttr ".an[1].asv" 690.35481689566132;
	setAttr ".an[1].at" -type "string" "camera10_sampler.translateY";
	setAttr ".an[2].asv" -3301.2498615624795;
	setAttr ".an[2].at" -type "string" "camera10_sampler.translateZ";
	setAttr ".an[3].asv" -0.57517188317260581;
	setAttr ".an[3].at" -type "string" "camera10_sampler.rotateX";
	setAttr ".an[4].asv" -1.4137167034932447;
	setAttr ".an[4].at" -type "string" "camera10_sampler.rotateY";
	setAttr ".an[5].asv" 3.5485245852798815e-16;
	setAttr ".an[5].at" -type "string" "camera10_sampler.rotateZ";
	setAttr ".s" 1;
	setAttr ".d" 799;
	setAttr ".ics" 1;
	setAttr ".icd" 799;
	setAttr ".iad" 799;
createNode timeEditorInterpolator -n "Interpolator";
	rename -uid "A48820D7-420C-F55C-AED3-8DB0DA694235";
	setAttr -s 12 ".o";
	setAttr ".o[0]" 61.642006890603497;
	setAttr ".o[1]" 3495.3170801332012;
	setAttr ".o[2]" -730.54849321635436;
	setAttr ".o[3]" -1.3597740192128303;
	setAttr ".o[4]" 3.0659317764418583;
	setAttr ".o[5]" 0;
	setAttr ".o[6]" -4003.6334133191308;
	setAttr ".o[7]" 1892.524656147358;
	setAttr ".o[8]" -1676.6380884182342;
	setAttr ".o[9]" -0.93112663980440269;
	setAttr ".o[10]" -1.381676300276957;
	setAttr ".o[11]" 2.3008373704191449e-16;
	setAttr -s 6 ".ta";
	setAttr -s 2 ".in";
createNode animCurveTU -n "anim_camera10sampler_timeWarp";
	rename -uid "7515EA11-444C-8649-249D-08A6E1877616";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 60 26.592334494773468 217 193.45348283320948
		 253 208.86490684012566 281 230.16405413915331 325 290.31354263075724 353 318.40354833412437
		 376 360.92466755593335 406 381.0962266288077 437 425.27606292757531 799 799;
	setAttr -s 11 ".kit[1:10]"  1 18 18 1 18 18 18 18 
		1 1;
	setAttr -s 11 ".kot[1:10]"  1 18 18 1 18 18 18 18 
		1 1;
	setAttr -s 11 ".kix[1:10]"  1.9999999999999996 0.03527316173442023 
		0.058014359030021577 0.030825739897396093 0.02718865050884723 0.024068551939305346 
		0.028168610379596375 0.031581584965502132 1.0333333333333297 0.033314830232628545;
	setAttr -s 11 ".kiy[1:10]"  59.999999999997634 0.9993777084072154 0.99831574872198414 
		0.99952477395999451 0.99963032031021737 0.99971031044375314 0.99960318596395159 0.99950117733350707 
		35.402808187589358 0.99944490697915467;
	setAttr -s 11 ".kox[1:10]"  0.033314830232640168 0.035273161734420237 
		0.058014359030021577 0.030825739897397807 0.027188650508847226 0.024068551939305342 
		0.028168610379596379 0.031581584965502132 11.833333333333339 0.033314830232638482;
	setAttr -s 11 ".koy[1:10]"  0.99944490697915433 0.99937770840721551 
		0.99831574872198403 0.99952477395999451 0.99963032031021726 0.99971031044375303 0.9996031859639517 
		0.99950117733350718 405.41925505142626 0.99944490697915433;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveTL -n "camera11_sampler_translateX";
	rename -uid "C24F14AA-4606-96AA-274D-34B557049F3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 800 ".ktv";
	setAttr ".ktv[0:249]"  1 865.83433568636724 2 859.15874374614782 3 852.67583755262945
		 4 846.37305064407064 5 840.23781655873006 6 834.25756883486645 7 828.41974101073822
		 8 822.71176662460425 9 817.12107921472307 10 811.6351123193532 11 806.2412994767534
		 12 800.9270742251822 13 795.67987010289835 14 790.48712064816027 15 785.33625939922683
		 16 780.21471989435656 17 775.10993567180799 18 770.00934026983998 19 764.90036722671096
		 20 759.77045008067955 21 754.60702237000453 22 749.39751763294441 23 744.12936940775785
		 24 738.79001123270348 25 733.36687664603983 26 727.84739918602577 27 722.21901239091972
		 28 716.46914979898031 29 710.58524494846631 30 704.55473137763624 31 698.36504262474875
		 32 692.00361222806248 33 685.45787372583607 34 678.71526065632804 35 671.76320655779716
		 36 664.58914496850207 37 657.18050942670129 38 649.52473347065347 39 641.60925063861714
		 40 633.42149446885128 41 624.94889849961407 42 616.17889626916451 43 607.09892131576089
		 44 597.69640717766219 45 587.95878739312684 46 577.87349550041336 47 567.42796503778072
		 48 556.60962954348713 49 545.40592255579156 50 533.80427761295243 51 521.97184575586925
		 52 510.08360520035785 53 498.13873024705254 54 486.13639519658705 55 474.07577434959546
		 56 461.95604200671153 57 449.77637246856943 58 437.53594003580287 59 425.23391900904602
		 60 412.86948368893258 61 400.44180837609673 62 387.95006737117217 63 375.39343497479308
		 64 362.77108548759338 65 350.08219321020692 66 337.3259324432675 67 324.50147748740937
		 68 311.60800264326633 69 298.6446822114724 70 285.61069049266121 71 272.50520178746706
		 72 259.32739039652387 73 246.07643062046549 74 232.7514967599256 75 219.35176311553863
		 76 205.87640398793832 77 192.3245936777584 78 178.69550648563319 79 164.98831671219648
		 80 151.20219865808212 81 137.33632662392404 82 123.38987491035635 83 109.36201781801287
		 84 95.251929647527675 85 81.058784699534385 86 66.78175727466737 87 52.42002167356037
		 88 37.972752196847352 89 23.439123145162 90 8.8183088191387924 91 -5.890516480588758
		 92 -20.688178453386627 93 -35.575502798620619 94 -50.553315215657108 95 -65.622441403862013
		 96 -80.783707062601593 97 -96.037937891241427 98 -111.385959589148 99 -126.82859785568701
		 100 -142.36667839022516 101 -158.00102689212781 102 -173.73246906076122 103 -189.56183059549153
		 104 -205.48993719568512 105 -221.51761456070722 106 -237.64568838992466 107 -253.87498438270325
		 108 -270.20632823840879 109 -286.64054565640765 110 -303.17846233606565 111 -319.82090397674915
		 112 -336.56869627782396 113 -353.42266493865623 114 -370.38363565861198 115 -387.45243413705771
		 116 -404.62988607335865 117 -421.91681716688117 118 -439.31405311699154 119 -456.82241962305557
		 120 -474.4427423844395 121 -492.17584710050949 122 -510.02255947063111 123 -527.98370519417097
		 124 -546.06010997049532 125 -564.25259949896929 126 -582.56199947895936 127 -600.98913560983181
		 128 -619.53483359095242 129 -638.19991912168746 130 -656.98521790140296 131 -675.9227494462865
		 132 -695.04372295107089 133 -714.34774863293808 134 -733.83443670907127 135 -753.50339739665344
		 136 -773.35424091286745 137 -793.38657747489606 138 -813.60001729992211 139 -833.99417060512906
		 140 -854.56864760769872 141 -875.32305852481431 142 -896.25701357365892 143 -917.3701229714153
		 144 -938.66199693526619 145 -960.13224568239468 146 -981.78047942998342 147 -1003.6063083952159
		 148 -1025.6093427952737 149 -1047.7891928473407 150 -1070.1454687685991 151 -1092.6777807762323
		 152 -1115.3857390874227 153 -1138.2689539193536 154 -1161.3270354892084 155 -1184.5595940141684
		 156 -1207.9662397114171 157 -1231.5465827981375 158 -1255.3002334915127 159 -1279.2268020087254
		 160 -1303.3258985669581 161 -1327.5971333833938 162 -1352.0401166752163 163 -1376.6544586596069
		 164 -1401.4397695537493 165 -1426.3956595748261 166 -1451.5217389400204 167 -1476.8176178665149
		 168 -1502.2829065714923 169 -1527.9172152721367 170 -1553.7201541856289 171 -1579.6913335291529
		 172 -1605.8303635198911 173 -1632.1368543750268 174 -1658.6104163117429 175 -1685.2506595472219
		 176 -1712.0571942986467 177 -1739.0296307832014 178 -1766.1675792180667 179 -1793.4706498204264
		 180 -1820.9384528074634 181 -1848.5705983963608 182 -1876.3666968043012 183 -1904.3263582484669
		 184 -1932.4491929460428 185 -1960.7348111142096 186 -1989.18282297015 187 -2017.7928387310485
		 188 -2046.5644686140868 189 -2075.4973228364483 190 -2104.5910116153154 191 -2134.3569025836046
		 192 -2165.2664079758206 193 -2197.2592049115269 194 -2230.2749705102892 195 -2264.2533818916731
		 196 -2299.1341161752434 197 -2334.8568504805658 198 -2371.3612619272044 199 -2408.5870276347259
		 200 -2446.4738247226933 201 -2484.9613303106726 202 -2523.989221518229 203 -2563.4971754649277
		 204 -2603.4248692703336 205 -2643.7119800540122 206 -2684.2981849355278 207 -2725.1231610344475
		 208 -2766.1265854703342 209 -2807.2481353627536 210 -2848.4274878312708 211 -2889.6043199954511
		 212 -2930.7183089748596 213 -2971.7091318890616 214 -3012.5164658576227 215 -3053.0799880001064
		 216 -3093.3393754360786 217 -3133.2343052851047 218 -3172.7044546667494 219 -3211.6895007005787
		 220 -3250.1291205061566 221 -3287.9629912030487 222 -3325.1307899108206 223 -3361.5721937490366
		 224 -3397.2268798372615 225 -3432.0345252950615 226 -3465.9348072420012 227 -3498.8674027976454
		 228 -3530.7719890815597 229 -3561.5882432133094 230 -3591.2558423124592 231 -3619.7144634985734
		 232 -3646.9037838912182 233 -3672.7634806099586 234 -3697.2332307743595 235 -3720.2527115039866
		 236 -3742.5416088470406 237 -3764.8557621909108 238 -3787.1890786639415 239 -3809.5354653944783
		 240 -3831.8888295108668 241 -3854.2430781414519 242 -3876.5921184145791 243 -3898.9298574585937
		 244 -3921.2502024018409 245 -3943.5470603726662 246 -3965.8143384994141 247 -3988.0459439104307
		 248 -4010.2357837340619 249 -4032.3777650986513 250 -4054.4657951325444;
	setAttr ".ktv[250:499]" 251 -4076.4937809640869 252 -4098.4556297216241 253 -4120.345248533501
		 254 -4142.1565445280639 255 -4163.8834248336561 256 -4185.5197965786256 257 -4207.0595668913147
		 258 -4228.4966429000706 259 -4249.8249317332375 260 -4271.0383405191624 261 -4292.1307763861878
		 262 -4313.0961464626616 263 -4333.9283578769291 264 -4354.6213177573327 265 -4375.1689332322194
		 266 -4395.5651114299344 267 -4415.8037594788238 268 -4435.8787845072311 269 -4455.7840936435032
		 270 -4475.5135940159844 271 -4495.0611927530208 272 -4514.4207969829567 273 -4533.5863138341374
		 274 -4552.5516504349089 275 -4571.3107139136155 276 -4589.8574113986042 277 -4608.1856500182184
		 278 -4626.2893369008052 279 -4644.1623791747079 280 -4661.7986839682726 281 -4679.1921584098445
		 282 -4696.3367096277689 283 -4713.2262447503908 284 -4729.8546709060565 285 -4746.2158952231093
		 286 -4762.3038248298972 287 -4778.1123668547625 288 -4793.6354284260533 289 -4808.8669166721129
		 290 -4823.8007387212865 291 -4838.4308017019212 292 -4852.7510127423602 293 -4866.7552789709507
		 294 -4880.437507516036 295 -4893.7916055059623 296 -4906.8114800690746 297 -4919.4910383337183
		 298 -4931.8241874282394 299 -4943.8048344809822 300 -4955.426886620292 301 -4966.6842509745147
		 302 -4977.5708346719948 303 -4988.0805448410774 304 -4998.2072886101096 305 -5007.9449731074346
		 306 -5017.2875054613987 307 -5026.2287928003461 308 -5034.7627422526248 309 -5042.8832609465762
		 310 -5050.5842560105484 311 -5057.8596345728856 312 -5064.7033037619331 313 -5071.1091707060359
		 314 -5077.0711425335403 315 -5082.5831263727905 316 -5087.6390293521317 317 -5092.2327585999101
		 318 -5096.3582212444708 319 -5100.0093244141581 320 -5103.1799752373181 321 -5105.8640808422961
		 322 -5108.0555483574371 323 -5109.7482849110856 324 -5110.9361976315886 325 -5111.6131936472902
		 326 -5111.2965622867796 327 -5109.5320708413137 328 -5106.3563433832414 329 -5101.8060039849124
		 330 -5095.9176767186736 331 -5088.7279856568757 332 -5080.2735548718647 333 -5070.5910084359921
		 334 -5059.7169704216039 335 -5047.68806490105 336 -5034.540915946679 337 -5020.3121476308397
		 338 -5005.0383840258792 339 -4988.7562492041488 340 -4971.5023672379948 341 -4953.3133621997667
		 342 -4934.2258581618134 343 -4914.2764791964837 344 -4893.5018493761245 345 -4871.9385927730864
		 346 -4849.6233334597173 347 -4826.592695508366 348 -4802.8833029913803 349 -4778.5317799811091
		 350 -4753.5747505499021 351 -4728.0488387701071 352 -4701.9906687140719 353 -4675.4368644541455
		 354 -4648.4240500626784 355 -4620.9888496120166 356 -4593.1678871745107 357 -4564.9977868225087
		 358 -4536.5151726283593 359 -4507.7566686644104 360 -4478.7588990030108 361 -4449.5584877165093
		 362 -4420.1920588772555 363 -4390.6962365575964 364 -4361.1076448298818 365 -4331.4629077664595
		 366 -4301.7986494396782 367 -4272.1514939218869 368 -4242.5580652854333 369 -4213.054987602668
		 370 -4183.6788849459381 371 -4154.4663813875932 372 -4125.4541009999812 373 -4096.6786678554499
		 374 -4068.1767060263492 375 -4039.9848395850277 376 -4012.1396926038333 377 -3984.6778891551148
		 378 -3957.6360533112215 379 -3931.0508091445013 380 -3904.9587807273028 381 -3879.396592131975
		 382 -3854.4008674308661 383 -3830.0082306963241 384 -3806.2553060006994 385 -3783.1787174163396
		 386 -3760.8016734656944 387 -3739.0694202670247 388 -3717.9016382863965 389 -3697.2180079898767
		 390 -3676.9382098435308 391 -3656.9819243134257 392 -3637.2688318656274 393 -3617.7186129662023
		 394 -3598.2509480812164 395 -3578.7855176767362 396 -3559.2420022188276 397 -3539.5400821735575
		 398 -3519.5994380069906 399 -3499.3397501851955 400 -3478.6806991742374 401 -3457.5419654401826
		 402 -3435.8432294490972 403 -3413.5041716670476 404 -3390.4444725601002 405 -3366.583812594321
		 406 -3341.841872235776 407 -3316.1383319505321 408 -3289.3928722046553 409 -3261.525173464212
		 410 -3232.4549161952682 411 -3202.1017808638903 412 -3170.3854479361448 413 -3137.2255978780959
		 414 -3102.5419111558131 415 -3066.2540682353615 416 -3027.6384088745363 417 -2986.1707950445953
		 418 -2942.0701905318001 419 -2895.5555591224111 420 -2846.8458646026897 421 -2795.9995351378316
		 422 -2743.1046157664418 423 -2688.427786329526 424 -2632.2389540329573 425 -2574.8098530194898
		 426 -2516.4126680625814 427 -2457.3187521547657 428 -2397.7973757055956 429 -2338.1144798631472
		 430 -2278.5315817064488 431 -2219.3046766863863 432 -2160.6830940989007 433 -2102.9086676980974
		 434 -2046.2146010388826 435 -1990.8247923721424 436 -1936.9527931902876 437 -1884.8011297994567
		 438 -1834.5606951683485 439 -1786.4098971317428 440 -1740.514333689089 441 -1697.0262774957869
		 442 -1656.0851450204109 443 -1617.8305924435401 444 -1582.3976800592261 445 -1549.89060479658
		 446 -1519.1171944669518 447 -1488.8156501095323 448 -1458.9741312090525 449 -1429.5807917135273
		 450 -1400.6237550005735 451 -1372.0911129285219 452 -1343.9712888320382 453 -1316.2520175090156
		 454 -1288.9216187190777 455 -1261.9683330819639 456 -1235.3805011442055 457 -1209.1466039764941
		 458 -1183.2556928463507 459 -1157.6962156468298 460 -1132.4576407407524 461 -1107.5296275411815
		 462 -1082.9023180143508 463 -1058.5668067882245 464 -1034.514103716931 465 -1010.7368431665952
		 466 -987.22862094032246 467 -963.98483158172144 468 -941.00209770527431 469 -918.28016763969231
		 470 -895.82201262831211 471 -873.6352004854466 472 -851.73393528468046 473 -830.14030356457135
		 474 -808.88935836330256 475 -787.92653463299962 476 -766.88489900493687 477 -745.67615846475667
		 478 -724.24933784272059 479 -702.55903918560102 480 -680.56271931822573 481 -658.22166603590824
		 482 -635.49944192920418 483 -612.36220293658982 484 -588.77919279822834 485 -564.72160167747882
		 486 -540.1651158298223 487 -515.08878072204936 488 -489.47606098926457 489 -463.315092663869
		 490 -436.59933513317662 491 -409.32801387680223 492 -381.50653922747205 493 -353.14683356201948
		 494 -324.26753298982578 495 -294.89403259187242 496 -265.05835092748032 497 -234.79879986333822
		 498 -204.15960917459796 499 -173.18958630968507 500 -141.94227097342937;
	setAttr ".ktv[500:749]" 501 -110.47490910725446 502 -78.844823413512074 503 -47.11272113514724
		 504 -15.338684738621101 505 16.417979712647838 506 48.099557545343572 507 79.65061037758403
		 508 111.01783533043405 509 142.15345715819018 510 173.01065297513534 511 203.54730793432637
		 512 233.72504676451118 513 263.50881578589446 514 292.86936101758909 515 321.77874255215323
		 516 350.21406854669408 517 378.15480292936326 518 405.58542776463736 519 432.4922345084122
		 520 458.8659149412789 521 484.80324514880311 522 510.40541423828847 523 535.60645296382529
		 524 560.23369987478372 525 584.24547861245003 526 607.6105358317584 527 630.30151193798213
		 528 652.29247390864202 529 673.56365968480532 530 694.09915556681392 531 713.88753255751021
		 532 732.92179082990447 533 751.19918643500682 534 768.72096063916183 535 785.4919953094294
		 536 801.52041838478192 537 816.81718212168175 538 831.39564215498126 539 845.27109516545443
		 540 858.46045064715054 541 870.98181486807334 542 882.85417134827071 543 894.09708783683959
		 544 904.73046238871007 545 914.77430732190305 546 924.24824433044705 547 933.17346080911045
		 548 941.56770825442641 549 949.44937656416005 550 956.83886563652561 551 963.7530740115576
		 552 970.20989806092575 553 976.2253609511896 554 981.81611913563233 555 986.99730188832496
		 556 991.78385198463411 557 996.18998805305114 558 1000.2293209760066 559 1003.9148690864339
		 560 1007.2590756970401 561 1010.2738282653004 562 1012.9704786285904 563 1015.3598638546184
		 564 1017.4523273448948 565 1019.2577860323925 566 1020.7855620345083 567 1022.0446538114541
		 568 1023.0437319154 569 1023.7909195108314 570 1024.2940276739712 571 1024.5605135248391
		 572 1024.5974867250959 573 1024.4117458022845 574 1024.0097762106943 575 1023.3977702769201
		 576 1022.5816409573786 577 1021.5670349325894 578 1020.3593450732204 579 1018.9637222224603
		 580 1017.3850863304758 581 1015.6281369664598 582 1013.6973632330428 583 1011.5970531075623
		 584 1009.3313022341285 585 1006.9041506734345 586 1004.319130162422 587 1001.5798933720678
		 588 998.68984414015301 589 995.65222984119578 590 992.47014727048634 591 989.14654813769755
		 592 985.68424418851509 593 982.08591197153055 594 978.35409726643729 595 974.49121918842957
		 596 970.49957398256333 597 966.38133852078954 598 962.13857351328966 599 957.77322644479295
		 600 953.28713424558077 601 948.6820257059876 602 943.9595236423711 603 939.12114682169135
		 604 934.16811893295176 605 929.10245490585555 606 923.92427740430446 607 918.6357057752017
		 608 913.23717011742792 609 907.72972603710082 610 902.11415713469182 611 896.39165838829445
		 612 890.56223438581537 613 884.62665209644842 614 878.58534498984704 615 872.43864765336093
		 616 866.18679501383258 617 859.8299214482837 618 853.36851465203858 619 846.80177317803236
		 620 840.12984660253414 621 833.35246194428146 622 826.46923920077847 623 819.47968976470031
		 624 812.38321489528028 625 805.17910432019494 626 797.86696891143322 627 790.44510313877049
		 628 782.91279659237148 629 775.26887748750778 630 767.51205737994178 631 759.640932156914
		 632 751.65398420156089 633 743.54958607679953 634 735.32600615135595 635 726.98129549124781
		 636 718.58442015540822 637 710.28583547593871 638 702.08953164812385 639 693.99465353820847
		 640 686.00082648322223 641 678.10635500235105 642 670.31047725304143 643 662.61212244772503
		 644 655.0101730936492 645 647.50405573730802 646 640.0917142593571 647 632.77226580227057
		 648 625.54442250956185 649 618.40684483768837 650 611.35813965747286 651 604.39738956758538
		 652 597.52224171602745 653 590.73151101149062 654 584.02358364667521 655 577.39678368817272
		 656 570.84937097274997 657 564.37995908087282 658 557.98597187006851 659 551.66578026620368
		 660 545.4173721245902 661 539.23856348193294 662 533.12735623102105 663 527.08143317327483
		 664 521.09890719654334 665 515.17661621249613 666 509.31241009614365 667 503.50371239220914
		 668 497.74785783850967 669 492.04209072050912 670 486.38393018388547 671 480.76979397542567
		 672 475.1969411693583 673 469.66224605250704 674 464.16248924214625 675 458.69435853682654
		 676 453.25445054806164 677 447.83969965086334 678 442.44577392599683 679 437.06999408806598
		 680 431.70725711693001 681 426.35452625020218 682 421.00795325052457 683 415.66401409028902
		 684 410.31812927911284 685 404.96667839149546 686 399.60574944559562 687 394.2314691520852
		 688 388.84003238187768 689 383.42773590374736 690 377.99138993085916 691 372.52692115452271
		 692 367.03150150102942 693 361.50226039298673 694 355.93666255865674 695 350.33256520667544
		 696 344.68827651881594 697 339.00261382975003 698 333.27495949697033 699 327.50531214272894
		 700 321.69433071719448 701 315.84336873622999 702 309.95449613291225 703 304.03050646300699
		 704 298.07490773475797 705 292.09189587845742 706 286.08631078589798 707 280.06386160562306
		 708 274.02987768944001 709 267.99103008897401 710 261.95349382820467 711 255.92525823145763
		 712 249.91278360119099 713 243.92313760951623 714 237.96333158624941 715 232.0402408975566
		 716 226.16005196902205 717 220.33023921253186 718 214.55631416711759 719 208.84404714714645
		 720 203.19827138654273 721 197.62532046230507 722 192.12913926978393 723 186.71404200405217
		 724 181.38398783532367 725 176.14205897970749 726 170.99275044041053 727 165.93836377212904
		 728 160.98161320892177 729 156.12426109044333 730 151.37005941071499 731 146.72010892761389
		 732 142.17620442315123 733 137.73995656184661 734 133.41280940098017 735 129.19545368371323
		 736 125.09039627737309 737 121.09789628870425 738 117.21888819867809 739 113.45420747753465
		 740 109.8046010652226 741 106.27005753952268 742 102.85268481966382 743 99.552152580120747
		 744 96.368945829994814 745 93.303498138491165 746 90.356197298200669 747 87.527390366478869
		 748 84.817388148241974 749 82.225760299850947 750 79.754313620908036;
	setAttr ".ktv[750:799]" 751 77.402395917290406 752 75.170214228700004 753 73.057954157118388
		 754 71.065782246531086 755 69.19384808146836 756 67.442286135685862 757 65.811217398917421
		 758 64.300750806408445 759 62.910984492948749 760 61.642006890603497 761 61.642006890603497
		 762 61.642006890603497 763 61.642006890603497 764 61.642006890603497 765 61.642006890603497
		 766 61.642006890603497 767 61.642006890603497 768 61.642006890603497 769 61.642006890603497
		 770 61.642006890603497 771 61.642006890603497 772 61.642006890603497 773 61.642006890603497
		 774 61.642006890603497 775 61.642006890603497 776 61.642006890603497 777 61.642006890603497
		 778 61.642006890603497 779 61.642006890603497 780 61.642006890603497 781 61.642006890603497
		 782 61.642006890603497 783 61.642006890603497 784 61.642006890603497 785 61.642006890603497
		 786 61.642006890603497 787 61.642006890603497 788 61.642006890603497 789 61.642006890603497
		 790 61.642006890603497 791 61.642006890603497 792 61.642006890603497 793 61.642006890603497
		 794 61.642006890603497 795 61.642006890603497 796 61.642006890603497 797 61.642006890603497
		 798 61.642006890603497 799 61.642006890603497 800 61.642006890603497;
createNode animCurveTL -n "camera11_sampler_translateY";
	rename -uid "CFB79BE1-4F3A-8D34-1AED-FF93522100C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 800 ".ktv";
	setAttr ".ktv[0:249]"  1 690.35481689566132 2 692.21032527334421 3 694.01847045763611
		 4 695.78234135245395 5 697.50502686171433 6 699.18961588933405 7 700.83919733923017
		 8 702.45686011531916 9 704.04569312151807 10 705.60878526174361 11 707.14922543991258
		 12 708.67010255994182 13 710.17450552574803 14 711.66552324124814 15 713.14624461035885
		 16 714.6197585369971 17 716.08915392507947 18 717.55751967852302 19 719.02794470124434
		 20 720.50351789716035 21 721.98732817018777 22 723.48246442424352 23 724.99201556324431
		 24 726.51907049110696 25 728.06671811174829 26 729.63804732908511 27 731.23614704703414
		 28 732.8641061695123 29 734.5250136004363 30 736.22195824372295 31 737.9580290032892
		 32 739.73631478305163 33 741.55990448692717 34 743.43188701883264 35 745.35535128268475
		 36 747.33338618240043 37 749.36908062189627 38 751.46552350508932 39 753.62580373589628
		 40 755.85301021823386 41 758.15023185601899 42 760.52055755316849 43 762.96707621359906
		 44 765.49287674122752 45 768.10104803997069 46 770.79467901374528 47 773.57685856646833
		 48 776.45067560205644 49 779.41921902442652 50 782.4855777374953 51 785.61547457698589
		 52 788.77236363407155 53 791.9559306958447 54 795.16586154939762 55 798.40184198182249
		 56 801.6635577802117 57 804.95069473165745 58 808.26293862325213 59 811.59997524208802
		 60 814.96149037525743 61 818.34716980985252 62 821.7566993329657 63 825.18976473168925
		 64 828.64605179311536 65 832.12524630433643 66 835.62703405244474 67 839.15110082453248
		 68 842.69713240769204 69 846.26481458901571 70 849.85383315559591 71 853.46387389452457
		 72 857.09462259289421 73 860.74576503779713 74 864.41698701632572 75 868.10797431557194
		 76 871.81841272262841 77 875.54798802458731 78 879.29638600854082 79 883.06329246158134
		 80 886.84839317080116 81 890.65137392329257 82 894.47192050614785 83 898.30971870645931
		 84 902.1644543113191 85 906.03581310781976 86 909.92348088305334 87 913.82714342411236
		 88 917.74648651808889 89 921.68119595207531 90 925.63095751316393 91 929.59545698844704
		 92 933.57438016501703 93 937.56741282996597 94 941.57424077038627 95 945.59454977337009
		 96 949.62802562601007 97 953.67435411539816 98 957.73322102862676 99 961.80431215278816
		 100 965.88731327497476 101 969.98191018227863 102 974.08778866179216 103 978.20463450060765
		 104 982.33213348581751 105 986.4699714045139 106 990.617834043789 107 994.77540719073534
		 108 998.94237663244508 109 1003.1184281560105 110 1007.3032475485239 111 1011.4965205970776
		 112 1015.697933088764 113 1019.9071708106751 114 1024.1239195499033 115 1028.3478650935413
		 116 1032.5786932286808 117 1036.8160897424145 118 1041.0597404218342 119 1045.3093310540328
		 120 1049.5645474261023 121 1053.8250753251348 122 1058.0906005382228 123 1062.3608088524588
		 124 1066.6353860549348 125 1070.914017932743 126 1075.196390272976 127 1079.4821888627259
		 128 1083.7710994890849 129 1088.0628079391456 130 1092.357 131 1096.6640661204024
		 132 1100.9944461817727 133 1105.3479001202004 134 1109.7241878717759 135 1114.12306937259
		 136 1118.5443045587322 137 1122.987653366293 138 1127.4528757313626 139 1131.9397315900312
		 140 1136.447980878389 141 1140.9773835325261 142 1145.527699488533 143 1150.0986886824994
		 144 1154.690111050516 145 1159.3017265286728 146 1163.93329505306 147 1168.584576559768
		 148 1173.2553309848868 149 1177.9453182645066 150 1182.6542983347174 151 1187.3820311316099
		 152 1192.128276591274 153 1196.8927946498 154 1201.6753452432781 155 1206.4756883077982
		 156 1211.2935837794512 157 1216.1287915943267 158 1220.9810716885149 159 1225.8501839981063
		 160 1230.7358884591913 161 1235.6379450078596 162 1240.5561135802016 163 1245.4901541123077
		 164 1250.4398265402676 165 1255.4048908001721 166 1260.385106828111 167 1265.3802345601746
		 168 1270.3900339324532 169 1275.4142648810371 170 1280.4526873420164 171 1285.505061251481
		 172 1290.5711465455215 173 1295.650703160228 174 1300.7434910316906 175 1305.8492700959998
		 176 1310.9678002892456 177 1316.0988415475181 178 1321.2421538069075 179 1326.3974970035042
		 180 1331.5646310733985 181 1336.7433159526802 182 1341.9333115774398 183 1347.1343778837675
		 184 1352.3462748077534 185 1357.5687622854878 186 1362.8016002530608 187 1368.0445486465626
		 188 1373.2973674020834 189 1378.5598164557136 190 1383.8316557435433 191 1389.1963399278502
		 192 1394.7305902123246 193 1400.4240663451744 194 1406.2664280746087 195 1412.2473351488352
		 196 1418.3564473160629 197 1424.5834243245001 198 1430.9179259223552 199 1437.3496118578366
		 200 1443.8681418791527 201 1450.4631757345121 202 1457.1243731721231 203 1463.8413939401942
		 204 1470.6038977869337 205 1477.4015444605502 206 1484.2239937092522 207 1491.0609052812483
		 208 1497.9019389247464 209 1504.7367543879552 210 1511.5550114190833 211 1518.3463697663387
		 212 1525.1004891779305 213 1531.8070294020665 214 1538.4556501869558 215 1545.0360112808062
		 216 1551.5377724318264 217 1557.9505933882249 218 1564.26413389821 219 1570.4680537099903
		 220 1576.552012571774 221 1582.5056702317697 222 1588.3186864381862 223 1593.9807209392313
		 224 1599.4814334831137 225 1604.8104838180418 226 1609.9575316922242 227 1614.9122368538692
		 228 1619.6642590511851 229 1624.2032580323807 230 1628.5188935456642 231 1632.6008253392442
		 232 1636.4387131613289 233 1640.0222167601269 234 1643.3409958838465 235 1646.3847102806963
		 236 1649.2511132543063 237 1652.0457524930514 238 1654.7699793222559 239 1657.4251450672448
		 240 1660.0126010533427 241 1662.5336986058744 242 1664.9897890501647 243 1667.3822237115385
		 244 1669.7123539153204 245 1671.9815309868352 246 1674.1911062514077 247 1676.3424310343626
		 248 1678.4368566610249 249 1680.475734456719 250 1682.46041574677;
	setAttr ".ktv[250:499]" 251 1684.3922518565023 252 1686.272594111241 253 1688.1027938363109
		 254 1689.8842023570364 255 1691.6181709987425 256 1693.306051086754 257 1694.9491939463956
		 258 1696.5489509029921 259 1698.1066732818681 260 1699.6237124083486 261 1701.1014196077583
		 262 1702.5411462054221 263 1703.9442435266644 264 1705.3120628968104 265 1706.6459556411844
		 266 1707.9472730851116 267 1709.2173665539165 268 1710.4575873729239 269 1711.6692868674586
		 270 1712.8538163628455 271 1714.012527184409 272 1715.1467706574745 273 1716.2578981073659
		 274 1717.3472608594088 275 1718.4162102389275 276 1719.4660975712468 277 1720.4982741816916
		 278 1721.5140913955868 279 1722.5149005382568 280 1723.5020529350265 281 1724.4768999112207
		 282 1725.4407927921643 283 1726.3950829031819 284 1727.3411215695983 285 1728.2802601167382
		 286 1729.2138498699264 287 1730.1432421544878 288 1731.0697882957472 289 1731.9948396190291
		 290 1732.9197474496584 291 1733.8458631129599 292 1734.7745379342582 293 1735.7071232388785
		 294 1736.644970352145 295 1737.5894305993829 296 1738.5418553059167 297 1739.5035957970713
		 298 1740.4760033981715 299 1741.460429434542 300 1742.4582252315074 301 1743.4707421143928
		 302 1744.4993314085227 303 1745.5453444392222 304 1746.6101325318155 305 1747.695047011628
		 306 1748.801439203984 307 1749.9306604342084 308 1751.0840620276263 309 1752.2629953095618
		 310 1753.4688116053403 311 1754.7028622402861 312 1755.9664985397242 313 1757.2610718289793
		 314 1758.5879334333763 315 1759.9484346782399 316 1761.3439268888949 317 1762.7757613906658
		 318 1764.2452895088777 319 1765.7538625688551 320 1767.302831895923 321 1768.8935488154059
		 322 1770.5273646526289 323 1772.2056307329167 324 1773.9296983815939 325 1775.7009189239852
		 326 1777.5080278545684 327 1779.3386630735686 328 1781.1925295149338 329 1783.0693321126109
		 330 1784.9687758005475 331 1786.8905655126905 332 1788.8344061829875 333 1790.8000027453857
		 334 1792.7870601338323 335 1794.7952832822746 336 1796.8243771246603 337 1798.8740465949361
		 338 1800.9439966270495 339 1803.0339321549479 340 1805.1435581125788 341 1807.272579433889
		 342 1809.420701052826 343 1811.5876279033373 344 1813.7730649193697 345 1815.9767170348712
		 346 1818.1982891837886 347 1820.4374863000692 348 1822.6940133176604 349 1824.9675751705095
		 350 1827.2578767925638 351 1829.5646231177707 352 1831.8875190800773 353 1834.226269613431
		 354 1836.5805796517791 355 1838.9501541290688 356 1841.3346979792473 357 1843.7339161362622
		 358 1846.1475135340606 359 1848.5751951065897 360 1851.0166657877971 361 1853.4716305116299
		 362 1855.9397942120354 363 1858.4208618229609 364 1860.9145382783536 365 1863.4205285121611
		 366 1865.9385374583303 367 1868.4682700508088 368 1871.009431223544 369 1873.5617259104827
		 370 1876.1248590455725 371 1878.6985355627605 372 1881.2824603959943 373 1883.8763384792212
		 374 1886.4798747463881 375 1889.0927741314426 376 1891.7147415683321 377 1894.3454819910035
		 378 1896.9847003334044 379 1899.632101529482 380 1902.2873905131837 381 1904.9502722184566
		 382 1907.6204515792481 383 1910.2976335295057 384 1912.9815230031763 385 1915.6718249342073
		 386 1918.4479426257221 387 1921.3842761911408 388 1924.473025779856 389 1927.70639154126
		 390 1931.0765736247456 391 1934.5757721797052 392 1938.1961873555313 393 1941.9300193016165
		 394 1945.7694681673534 395 1949.7067341021343 396 1953.7340172553518 397 1957.8435177763986
		 398 1962.0274358146673 399 1966.27797151955 400 1970.5873250404395 401 1974.9476965267284
		 402 1979.3512861278091 403 1983.7902939930741 404 1988.2569202719162 405 1992.7433651137276
		 406 1997.2418286679008 407 2001.7445110838287 408 2006.2436125109036 409 2010.731333098518
		 410 2015.1998729960646 411 2019.6414323529357 412 2024.048211318524 413 2028.4124100422223
		 414 2032.7262286734224 415 2036.9818673615173 416 2041.1715262558996 417 2045.2874055059615
		 418 2049.3217052610958 419 2053.2666256706948 420 2057.1143668841514 421 2060.8451775229269
		 422 2064.4380785104622 423 2067.8837472738469 424 2071.1733027156843 425 2074.2983225329067
		 426 2077.2508590078296 427 2080.0234476506025 428 2082.6091125810963 429 2085.0013694367931
		 430 2087.1942140966489 431 2089.1821062854829 432 2090.9599475452001 433 2092.5230254770463
		 434 2093.8669580595792 435 2094.9875780492566 436 2095.8807908354916 437 2096.5423280923387
		 438 2096.9673566822171 439 2097.1498342319846 440 2097.0812997715489 441 2096.748442446069
		 442 2096.127299025316 443 2095.269172069467 444 2094.3120661835619 445 2093.2828016121389
		 446 2092.1584213213519 447 2090.9298857644685 448 2089.6422693391251 449 2088.3389739269787
		 450 2087.0615322254571 451 2085.8494183165712 452 2084.7397715001671 453 2083.7674595313183
		 454 2082.9645860851156 455 2082.360451215352 456 2081.9812999152955 457 2081.8500846371753
		 458 2081.9860726792945 459 2082.4049555583442 460 2083.1179929855275 461 2084.1319120030744
		 462 2085.4483729167878 463 2087.0632833491309 464 2088.966542475795 465 2091.1406752070761
		 466 2093.5601382009154 467 2096.1898862354406 468 2098.9841240315409 469 2101.883890817101
		 470 2104.8147983097379 471 2107.6838048631048 472 2110.3751967035282 473 2112.7459386338501
		 474 2114.6196131119109 475 2115.9782724318957 476 2117.4074764121488 477 2119.01960026712
		 478 2120.8589400115816 479 2122.9600542005974 480 2125.3514859214965 481 2128.0577727312248
		 482 2131.1005856247466 483 2134.4994032872301 484 2138.2718891709037 485 2142.4341611098298
		 486 2147.000793483227 487 2151.9848689259861 488 2157.3978706490684 489 2163.2495564871015
		 490 2169.5477557110635 491 2176.2981372986878 492 2183.5039472197118 493 2191.1657305944491
		 494 2199.2810547419404 495 2207.844251061153 496 2216.8461946307762 497 2226.2741398679291
		 498 2236.1115989843515 499 2246.3384559678257 500 2256.9308549414231;
	setAttr ".ktv[500:749]" 501 2267.8613570474936 502 2279.0997853788349 503 2290.6125868143117
		 504 2302.3638708672788 505 2314.3156604939791 506 2326.4283281361845 507 2338.6610329648238
		 508 2350.9719442394116 509 2363.3195088051102 510 2375.6614158928314 511 2387.9559600629332
		 512 2400.1620412832399 513 2412.2392863051446 514 2424.1491245751581 515 2435.8535392207632
		 516 2447.3175602485421 517 2458.5056687575852 518 2469.3840896034426 519 2479.9220941473213
		 520 2490.0929812396676 521 2500.0906851483555 522 2510.1195419777387 523 2520.1564677002543
		 524 2530.1556675513161 525 2540.1031505187689 526 2549.9872250637018 527 2559.7968009869869
		 528 2569.5203066563204 529 2579.1477600033331 530 2588.6698339729533 531 2598.0782138103032
		 532 2607.3656770808166 533 2616.5261356524297 534 2625.5546421237455 535 2634.447365011742
		 536 2643.2015381666333 537 2651.8153903872649 538 2660.288065949338 539 2668.6195068670645
		 540 2676.8103973065199 541 2684.8620396264655 542 2692.7762685277844 543 2700.5553636907198
		 544 2708.2019692897738 545 2715.7190211954671 546 2723.1094236839458 547 2730.3776868545006
		 548 2737.5259579110138 549 2744.5571806864941 550 2751.476631990859 551 2758.2869823365086
		 552 2764.992378079372 553 2771.5956432192638 554 2778.100885248838 555 2784.5111650108388
		 556 2790.8299706706553 557 2797.0605955282826 558 2803.20625061795 559 2809.270061066467
		 560 2815.2550638606472 561 2821.1642067723415 562 2827.0003482267612 563 2832.7662579324124
		 564 2838.4646181194767 565 2844.0981804417002 566 2849.6691572047084 567 2855.1799349380381
		 568 2860.6332941373048 569 2866.0312652791526 570 2871.3760505621044 571 2876.6698489382698
		 572 2881.9145856329706 573 2887.1123376685246 574 2892.2650458935618 575 2897.3745930202845
		 576 2902.4428065090724 577 2907.4714610016549 578 2912.4622806768348 579 2917.4169417951889
		 580 2922.3370751887019 581 2927.2242686875052 582 2932.0800694846739 583 2936.9059864408491
		 584 2941.7034923311003 585 2946.473782192752 586 2951.2186713591627 587 2955.9393630542454
		 588 2960.6372088760359 589 2965.3135353615626 590 2969.9696459378365 591 2974.606822829985
		 592 2979.2263289308512 593 2983.8294096364721 594 2988.4172946519539 595 2992.9911997722902
		 596 2997.5523286427851 597 3002.1018745037436 598 3006.6410219242034 599 3011.1709485295064
		 600 3015.6928267275803 601 3020.2078254388889 602 3024.7171118350561 603 3029.2218530912824
		 604 3033.7233912736256 605 3038.2222730535868 606 3042.7206451724919 607 3047.2188170376239
		 608 3051.7184908132836 609 3056.2207552906116 610 3060.7268604338906 611 3065.2376722272265
		 612 3069.7549389846363 613 3074.2797461873733 614 3078.8133886696291 615 3083.3571858724517
		 616 3087.9124842356541 617 3092.480659637999 618 3097.0627993947387 619 3101.6608668522999
		 620 3106.2761117283153 621 3110.9100502946067 622 3115.564241954733 623 3120.2402922330634
		 624 3124.9398557940458 625 3129.6646394629952 626 3134.4161245484747 627 3139.1966314955193
		 628 3144.0078191644202 629 3148.8516365936835 630 3153.7301008560539 631 3158.6452995523273
		 632 3163.5993928492762 633 3168.5946148898861 634 3173.633274361162 635 3178.717827600984
		 636 3183.8292689346868 637 3188.9226981164115 638 3193.9964356671326 639 3199.0501475447268
		 640 3204.0831647088507 641 3209.0956168000398 642 3214.0870157430541 643 3219.0570342258848
		 644 3224.0053402570111 645 3228.9312067972237 646 3233.8348410450185 647 3238.715643026972
		 648 3243.5732368581162 649 3248.4072384250076 650 3253.2172551787185 651 3258.0025193452666
		 652 3262.7632012649397 653 3267.4986199320529 654 3272.2083359854823 655 3276.8918987601764
		 656 3281.5488458017371 657 3286.1784008047493 658 3290.7805769696274 659 3295.3546466939019
		 660 3299.9000892813901 661 3304.4164396978108 662 3308.9030244206306 663 3313.3593277839509
		 664 3317.7844377082301 665 3322.1783041507456 666 3326.5400451182963 667 3330.8690066295312
		 668 3335.164510607462 669 3339.4258532158979 670 3343.6520291788652 671 3347.8427570563022
		 672 3351.9970252166368 673 3356.1140052255432 674 3360.1928320569182 675 3364.2326014243035
		 676 3368.2323669273937 677 3372.1908263076634 678 3376.1074925814455 679 3379.9805677944187
		 680 3383.8098939934953 681 3387.5937175137365 682 3391.3307699867719 683 3395.0194663076072
		 684 3398.6588621392366 685 3402.2472712934996 686 3405.7831450421927 687 3409.2648584533517
		 688 3412.6907093663258 689 3416.0589185304498 690 3419.3674066370268 691 3422.6146699904521
		 692 3425.7985171680293 693 3428.9168976982992 694 3431.9677143370795 695 3434.9488376462518
		 696 3437.8581242119226 697 3440.693438687912 698 3443.4526796961891 699 3446.1338094140096
		 700 3448.734886433218 701 3451.2541012023516 702 3453.6898130772024 703 3456.0405877374465
		 704 3458.305233508373 705 3460.4828349909403 706 3462.5727823791085 707 3464.5747021527873
		 708 3466.4888585490489 709 3468.3155622604554 710 3470.0557278269011 711 3471.7101627771754
		 712 3473.2804831394606 713 3474.7684400030707 714 3476.1760598046362 715 3477.5056105959447
		 716 3478.7596662397168 717 3479.9406420161222 718 3481.0514375186062 719 3482.0949155643102
		 720 3483.0740962726986 721 3483.991708337845 722 3484.8508314520086 723 3485.6543907371097
		 724 3486.4052668133945 725 3487.1063485402096 726 3487.7602204136588 727 3488.36963366486
		 728 3488.9371498331984 729 3489.4653035785013 730 3489.9562867352242 731 3490.4124500114872
		 732 3490.8359382371145 733 3491.228790952714 734 3491.5929439031561 735 3491.930278283467
		 736 3492.242422598144 737 3492.5310800187763 738 3492.797797444895 739 3493.0440335835565
		 740 3493.2711626661498 741 3493.4805174480061 742 3493.6732257130907 743 3493.850482792705
		 744 3494.0133614880697 745 3494.1628684746797 746 3494.2999475820484 747 3494.4254829305301
		 748 3494.5403019159303 749 3494.6452060827487 750 3494.7408551164422;
	setAttr ".ktv[750:799]" 751 3494.8279586451413 752 3494.9071434643338 753 3494.9789922717473
		 754 3495.0440456872452 755 3495.1028041296422 756 3495.1557295544462 757 3495.2032470568724
		 758 3495.2457463446985 759 3495.283583085557 760 3495.3170801332012 761 3495.3170801332012
		 762 3495.3170801332012 763 3495.3170801332012 764 3495.3170801332012 765 3495.3170801332012
		 766 3495.3170801332012 767 3495.3170801332012 768 3495.3170801332012 769 3495.3170801332012
		 770 3495.3170801332012 771 3495.3170801332012 772 3495.3170801332012 773 3495.3170801332012
		 774 3495.3170801332012 775 3495.3170801332012 776 3495.3170801332012 777 3495.3170801332012
		 778 3495.3170801332012 779 3495.3170801332012 780 3495.3170801332012 781 3495.3170801332012
		 782 3495.3170801332012 783 3495.3170801332012 784 3495.3170801332012 785 3495.3170801332012
		 786 3495.3170801332012 787 3495.3170801332012 788 3495.3170801332012 789 3495.3170801332012
		 790 3495.3170801332012 791 3495.3170801332012 792 3495.3170801332012 793 3495.3170801332012
		 794 3495.3170801332012 795 3495.3170801332012 796 3495.3170801332012 797 3495.3170801332012
		 798 3495.3170801332012 799 3495.3170801332012 800 3495.3170801332012;
createNode animCurveTL -n "camera11_sampler_translateZ";
	rename -uid "0C0D484E-4E6B-0A76-58B9-719B31FBEE34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 800 ".ktv";
	setAttr ".ktv[0:249]"  1 -3301.2498615624795 2 -3297.612914212883 3 -3293.7916148212094
		 4 -3289.7979863467253 5 -3285.6440517486963 6 -3281.3418339863879 7 -3276.903356019066
		 8 -3272.3406408059973 9 -3267.6657113064471 10 -3262.8905904796807 11 -3258.0273012849652
		 12 -3253.0878666815652 13 -3248.0843096287476 14 -3243.0286530857779 15 -3237.9329200119219
		 16 -3232.8091333664456 17 -3227.6693161086146 18 -3222.5254911976949 19 -3217.3896815929525
		 20 -3212.2739102536534 21 -3207.1902001390631 22 -3202.1505742084473 23 -3197.1670554210727
		 24 -3192.2516667362047 25 -3187.416431113109 26 -3182.6733715110513 27 -3178.0345108892984
		 28 -3173.5118722071152 29 -3169.1174784237678 30 -3164.8633524985225 31 -3160.7615173906452
		 32 -3156.823996059401 33 -3153.0628114640563 34 -3149.4899865638768 35 -3146.1175443181287
		 36 -3142.9575076860774 37 -3140.0218996269891 38 -3137.3227431001301 39 -3134.8720610647651
		 40 -3132.681876480161 41 -3130.764212305583 42 -3129.1310915002978 43 -3127.7945370235702
		 44 -3126.7665718346666 45 -3126.0592188928531 46 -3125.6845011573955 47 -3125.6544415875596
		 48 -3125.9810631426108 49 -3126.6763887818161 50 -3127.7524414644399 51 -3129.0560587987038
		 52 -3130.4262475007122 53 -3131.863284191556 54 -3133.367445492328 55 -3134.9390080241192
		 56 -3136.5782484080214 57 -3138.2854432651261 58 -3140.0608692165251 59 -3141.9048028833104
		 60 -3143.8175208865737 61 -3145.799299847406 62 -3147.8504163868993 63 -3149.9711471261453
		 64 -3152.161768686236 65 -3154.4225576882627 66 -3156.7537907533174 67 -3159.1557445024914
		 68 -3161.6286955568767 69 -3164.1729205375646 70 -3166.7886960656469 71 -3169.4762987622157
		 72 -3172.2360052483623 73 -3175.0680921451785 74 -3177.9728360737558 75 -3180.9505136551861
		 76 -3184.0014015105608 77 -3187.1257762609721 78 -3190.3239145275111 79 -3193.5960929312701
		 80 -3196.94258809334 81 -3200.3636766348131 82 -3203.8596351767806 83 -3207.4307403403345
		 84 -3211.0772687465665 85 -3214.7994970165682 86 -3218.5977017714313 87 -3222.4721596322479
		 88 -3226.4231472201086 89 -3230.4509411561062 90 -3234.5558180613316 91 -3238.7380545568767
		 92 -3242.9979272638334 93 -3247.3357128032931 94 -3251.7516877963476 95 -3256.2461288640889
		 96 -3260.8193126276083 97 -3265.4715157079972 98 -3270.2030147263481 99 -3275.0140863037518
		 100 -3279.9050070613007 101 -3284.8760536200862 102 -3289.9275026012001 103 -3295.0596306257335
		 104 -3300.2727143147786 105 -3305.5670302894268 106 -3310.9428551707706 107 -3316.4004655799008
		 108 -3321.9401381379089 109 -3327.5621494658876 110 -3333.2667761849275 111 -3339.0542949161209
		 112 -3344.9249822805596 113 -3350.8791148993346 114 -3356.9169693935382 115 -3363.0388223842619
		 116 -3369.2449504925976 117 -3375.5356303396366 118 -3381.9111385464707 119 -3388.3717517341915
		 120 -3394.9177465238909 121 -3401.5493995366601 122 -3408.2669873935915 123 -3415.0707867157762
		 124 -3421.9610741243064 125 -3428.9381262402735 126 -3436.0022196847685 127 -3443.1536310788842
		 128 -3450.3926370437121 129 -3457.7195142003434 130 -3465.1345391698696 131 -3472.8620632680395
		 132 -3481.1129455685623 133 -3489.8672243294691 134 -3499.1049378087923 135 -3508.8061242645645
		 136 -3518.9508219548175 137 -3529.5190691375838 138 -3540.4909040708953 139 -3551.8463650127851
		 140 -3563.5654902212837 141 -3575.6283179544243 142 -3588.0148864702396 143 -3600.7052340267605
		 144 -3613.67939888202 145 -3626.9174192940504 146 -3640.3993335208834 147 -3654.1051798205517
		 148 -3668.0149964510874 149 -3682.108821670522 150 -3696.366693736888 151 -3710.7686509082178
		 152 -3725.2947314425437 153 -3739.9249735978979 154 -3754.6394156323126 155 -3769.4180958038191
		 156 -3784.2410523704507 157 -3799.0883235902388 158 -3813.9399477212164 159 -3828.775963021415
		 160 -3843.5764077488666 161 -3858.321320161604 162 -3872.9907385176598 163 -3887.5647010750649
		 164 -3902.0232460918523 165 -3916.346411826054 166 -3930.5142365357024 167 -3944.5067584788294
		 168 -3958.3040159134671 169 -3971.8860470976479 170 -3985.2328902894042 171 -3998.3245837467675
		 172 -4011.1411657277708 173 -4023.6626744904456 174 -4035.8691482928243 175 -4047.7406253929394
		 176 -4059.2571440488227 177 -4070.3987425185069 178 -4081.1454590600238 179 -4091.4773319314054
		 180 -4101.3743993906837 181 -4110.8166996958917 182 -4119.7842711050607 183 -4128.2571518762243
		 184 -4136.2153802674129 185 -4143.63899453666 186 -4150.5080329419961 187 -4156.8025337414565
		 188 -4162.5025351930699 189 -4167.5880755548706 190 -4172.03919308489 191 -4175.7971007040042
		 192 -4178.8292777808047 193 -4181.1551622448997 194 -4182.7941920258954 195 -4183.765805053401
		 196 -4184.0894392570226 197 -4183.7845325663675 198 -4182.8705229110446 199 -4181.3668482206594
		 200 -4179.2929464248209 201 -4176.6682554531362 202 -4173.5122132352117 203 -4169.8442577006563
		 204 -4165.6838267790763 205 -4161.0503584000799 206 -4155.9632904932732 207 -4150.4420609882654
		 208 -4144.5061078146628 209 -4138.1748689020733 210 -4131.4677821801042 211 -4124.4042855783628
		 212 -4117.003817026457 213 -4109.2858144539932 214 -4101.2697157905795 215 -4092.974958965824
		 216 -4084.420981909333 217 -4075.6272225507146 218 -4066.6131188195759 219 -4057.3981086455242
		 220 -4048.0016299581671 221 -4038.4431206871122 222 -4028.7420187619668 223 -4018.9177621123386
		 224 -4008.9897886678345 225 -3998.977536358062 226 -3988.9004431126291 227 -3978.7779468611425
		 228 -3968.6294855332103 229 -3958.4744970584393 230 -3948.3324193664371 231 -3938.2226903868118
		 232 -3928.1647480491702 233 -3918.1780302831194 234 -3908.2819750182675 235 -3898.4960201842214
		 236 -3888.7870727500826 237 -3879.1074751462211 238 -3869.4548184941468 239 -3859.8266939153705
		 240 -3850.2206925314022 241 -3840.6344054637516 242 -3831.0654238339303 243 -3821.5113387634474
		 244 -3811.9697413738136 245 -3802.4382227865394 246 -3792.9143741231346 247 -3783.3957865051102
		 248 -3773.8800510539754 249 -3764.3647588912418 250 -3754.8475011384189;
	setAttr ".ktv[250:499]" 251 -3745.325868917017 252 -3735.7974533485467 253 -3726.2598455545185
		 254 -3716.7106366564417 255 -3707.1474177758278 256 -3697.5677800341864 257 -3687.9693145530277
		 258 -3678.3496124538619 259 -3668.7062648582 260 -3659.0368628875517 261 -3649.3389976634276
		 262 -3639.6102603073377 263 -3629.8482419407924 264 -3620.0505336853021 265 -3610.214726662377
		 266 -3600.3384119935272 267 -3590.4191808002638 268 -3580.454624204096 269 -3570.4423333265349
		 270 -3560.3798992890902 271 -3550.2649132132724 272 -3540.0949662205921 273 -3529.8676494325591
		 274 -3519.5805539706839 275 -3509.2312709564771 276 -3498.8173915114485 277 -3488.3365067571085
		 278 -3477.7862078149674 279 -3467.1640858065357 280 -3456.4677318533236 281 -3445.6947370768412
		 282 -3434.8426925985996 283 -3423.9091895401079 284 -3412.8918190228769 285 -3401.7881721684171
		 286 -3390.5958400982386 287 -3379.3124139338515 288 -3367.9354847967661 289 -3356.4626438084933
		 290 -3344.8914820905429 291 -3333.219590764425 292 -3321.4445609516506 293 -3309.5639837737285
		 294 -3297.5754503521707 295 -3285.4765518084869 296 -3273.2648792641871 297 -3260.9380238407821
		 298 -3248.4935766597819 299 -3235.9291288426966 300 -3223.2422715110365 301 -3210.4305957863121
		 302 -3197.491692790034 303 -3184.4231536437119 304 -3171.2225694688559 305 -3157.8875313869771
		 306 -3144.4156305195856 307 -3130.8044579881912 308 -3117.0516049143039 309 -3103.1546624194352
		 310 -3089.1112216250949 311 -3074.9188736527931 312 -3060.5752096240399 313 -3046.0778206603459
		 314 -3031.4242978832217 315 -3016.6122324141766 316 -3001.639215374722 317 -2986.5028378863672
		 318 -2971.2006910706232 319 -2955.7303660490002 320 -2940.0894539430083 321 -2924.2755458741576
		 322 -2908.2862329639593 323 -2892.1191063339215 324 -2875.7717571055573 325 -2859.2417764003749
		 326 -2842.5037341880275 327 -2825.5330654797745 328 -2808.3286589595377 329 -2790.8894033112397
		 330 -2773.2141872188022 331 -2755.3018993661476 332 -2737.1514284371988 333 -2718.7616631158767
		 334 -2700.1314920861041 335 -2681.2598040318035 336 -2662.1454876368971 337 -2642.7874315853064
		 338 -2623.1845245609529 339 -2603.3356552477608 340 -2583.2397123296514 341 -2562.8955844905472
		 342 -2542.3021604143696 343 -2521.4583287850414 344 -2500.3629782864846 345 -2479.0149976026214
		 346 -2457.4132754173738 347 -2435.5567004146642 348 -2413.4441612784144 349 -2391.0745466925473
		 350 -2368.4467453409848 351 -2345.5596459076487 352 -2322.4121370764615 353 -2299.0031075313445
		 354 -2275.3314459562216 355 -2251.3960410350142 356 -2227.1957814516445 357 -2202.7295558900341
		 358 -2177.9962530341063 359 -2152.9947615677825 360 -2127.723970174985 361 -2102.1827675396362
		 362 -2076.3700423456576 363 -2050.2846832769728 364 -2023.9255790175025 365 -1997.2916182511694
		 366 -1970.381689661896 367 -1943.1946819336044 368 -1915.7294837502147 369 -1887.9849837956531
		 370 -1859.9600707538393 371 -1831.6536333086958 372 -1803.0645601441452 373 -1774.191739944109
		 374 -1745.0340613925102 375 -1715.5904131732702 376 -1685.8596839703116 377 -1655.8407624675567
		 378 -1625.5325373489275 379 -1594.933897298346 380 -1564.0437309997346 381 -1532.8609271370156
		 382 -1501.3843743941109 383 -1469.6129614549411 384 -1437.5455770034321 385 -1405.1811097235038
		 386 -1372.1607622347435 387 -1338.1514939286626 388 -1303.1908286470712 389 -1267.3162902317786
		 390 -1230.5654025245944 391 -1192.9756893673284 392 -1154.5846746017899 393 -1115.4298820697886
		 394 -1075.5488356131343 395 -1034.9790590736366 396 -993.75807629310464 397 -951.92341111334849
		 398 -909.51258737617536 399 -866.5631289233994 400 -823.11255959682785 401 -779.19840323827043
		 402 -734.85818368953653 403 -690.12942479243611 404 -645.04965038877845 405 -599.65638432037338
		 406 -553.98715042903029 407 -508.07947255655915 408 -461.97087454476912 409 -415.69888023546991
		 410 -369.30101347047139 411 -322.81479809158282 412 -276.27775794061381 413 -229.72741685937194
		 414 -183.20129868967138 415 -136.73692727331922 416 -90.371826452125106 417 -44.143520067898862
		 418 1.9104680375501175 419 47.752614022412217 420 93.345394044877594 421 138.75111797229317
		 422 184.00804350015142 423 229.04370449126358 424 273.78731677026468 425 318.16997261501615
		 426 362.12484818779433 427 405.58736471774893 428 448.49535697887495 429 490.78927122055956
		 430 532.41226986782874 431 573.31037303948335 432 613.43267127725051 433 652.73131496445956
		 434 691.16178770620786 435 728.6828442632202 436 765.25678417884978 437 800.849479307308
		 438 835.43040700212816 439 868.97296074492101 440 901.45449417485884 441 932.8568323928489
		 442 963.16687076116807 443 992.39309169805858 444 1020.5575433759574 445 1047.6643040923223
		 446 1074.0847705075441 447 1100.1947297966001 448 1126.0080190062467 449 1151.5391438517579
		 450 1176.8033147416861 451 1201.8164706079681 452 1226.5949757770372 453 1251.1565846957785
		 454 1275.5193293314214 455 1299.7021705113445 456 1323.7248938404521 457 1347.6081395102008
		 458 1371.3730485663998 459 1395.0425342589458 460 1418.6397635743112 461 1442.1891093532333
		 462 1465.7160044387115 463 1489.2466054296412 464 1512.8091387779737 465 1536.4322934916627
		 466 1560.1462409006563 467 1583.9820522683326 468 1607.9728332431569 469 1632.1520527202565
		 470 1656.5540748887629 471 1681.2132966132356 472 1706.1625191643761 473 1731.4324777232705
		 474 1757.0462722711729 475 1782.9425504792441 476 1808.857839608128 477 1834.7350542775293
		 478 1860.5401262329226 479 1886.2384901439291 480 1911.7949103635315 481 1937.1705346127064
		 482 1962.3240117642526 483 1987.2107810932262 484 2011.7825913317333 485 2035.9888303254747
		 486 2059.7744207787591 487 2083.081527866776 488 2105.8492686795516 489 2128.0143154111597
		 490 2149.5112938255352 491 2170.273478449501 492 2190.233597901678 493 2209.3247699336898
		 494 2227.4815458264038 495 2244.641032164739 496 2260.7440469556086 497 2275.7362582540086
		 498 2289.5692018354625 499 2302.2014176395533 500 2313.5988714252117;
	setAttr ".ktv[500:749]" 501 2323.7356084995122 502 2332.5945329947858 503 2340.1665547642874
		 504 2346.4510638723036 505 2351.4553672957395 506 2355.1941386278677 507 2357.6887467710599
		 508 2358.9665504956506 509 2359.0599501489205 510 2358.0058478536757 511 2355.8447494511329
		 512 2352.6201034487349 513 2348.3777672840474 514 2343.1649042576082 515 2337.0304007690675
		 516 2330.0204328943055 517 2322.1876292097804 518 2313.5866150724937 519 2304.2675735851426
		 520 2294.2753213320957 521 2283.7244928835771 522 2272.7231792181647 523 2261.1366173680649
		 524 2248.6157070070913 525 2235.1675427379068 526 2220.8176057690343 527 2205.5957700097524
		 528 2189.537859280636 529 2172.6821421985592 530 2155.0702740611096 531 2136.7461917312689
		 532 2117.7553612802417 533 2098.1440521970462 534 2077.958665321813 535 2057.2451345187396
		 536 2036.0484146562455 537 2014.4120615042661 538 1992.377890593237 539 1969.9858018824323
		 540 1947.2735106548405 541 1924.2765251661051 542 1901.0280923927833 543 1877.5592085674939
		 544 1853.8986665647953 545 1830.0731310105193 546 1806.1080807287981 547 1782.022333626184
		 548 1757.8410610689159 549 1733.5855995664615 550 1709.2677394111988 551 1684.9068366529277
		 552 1660.5156806932821 553 1636.1105035830431 554 1611.7015399984027 555 1587.3016361363843
		 556 1562.9208399765321 557 1538.5687716641662 558 1514.2542598669843 559 1489.9854113063225
		 560 1465.7696745045751 561 1441.6138981044774 562 1417.5243841327924 563 1393.5069365839295
		 564 1369.5669056926765 565 1345.7085685163761 566 1321.937757511228 567 1298.2588968166413
		 568 1274.6740502453788 569 1251.1878922452927 570 1227.8037886763452 571 1204.5245729484145
		 572 1181.3537708651127 573 1158.293760609474 574 1135.3470680480916 575 1112.5160528811903
		 576 1089.802922903187 577 1067.2097488266581 578 1044.7384781012343 579 1022.390946602098
		 580 1000.168889355484 581 978.07395041708946 582 956.10769197728951 583 934.27160276068685
		 584 912.56710578195282 585 890.99666772296473 586 869.55975447389358 587 848.25842046834214
		 588 827.09388400852231 589 806.06732619689171 590 785.17989604346599 591 764.43271531317066
		 592 743.82688314700636 593 723.36348048867717 594 703.04357434641133 595 682.86822191819749
		 596 662.83847460731806 597 642.95538195413951 598 623.21999550916746 599 603.63337267205554
		 600 584.19658052080899 601 564.91069965540487 602 545.77682808027146 603 526.79608515033101
		 604 507.96889434143259 605 489.29903391431844 606 470.78369490552211 607 452.42773615629869
		 608 434.23036352732333 609 416.19339595006568 610 398.31810353956308 611 380.60737923063232
		 612 363.06077652062532 613 345.68061017395178 614 328.46853222739765 615 311.42627771859293
		 616 294.55567270678415 617 277.85864306400703 618 261.33837149395362 619 244.99512506450867
		 620 228.83201920272816 621 212.8514890012363 622 197.05612396417189 623 181.44868226094641
		 624 166.03210643069045 625 150.80954070735203 626 135.78522910610275 627 120.96119036606208
		 628 106.34200471162397 629 91.931820544793993 630 77.735099946319025 631 63.756648929061996
		 632 50.001650828720045 633 36.475703120174643 634 23.184857944782834 635 10.135480254565516
		 636 -2.7204743694809963 637 -15.497770944048145 638 -28.200029824857964 639 -40.826516949968116
		 640 -53.375670252744733 641 -65.847926273514105 642 -78.242186313399131 643 -90.557759381877531
		 644 -102.79394944801925 645 -114.94909336314635 646 -127.02384100260882 647 -139.01685655679486
		 648 -150.92736557877859 649 -162.75458140927805 650 -174.49770497340265 651 -186.15503253617436
		 652 -197.72715471281771 653 -209.21259613112167 654 -220.61048044887843 655 -231.91991389176181
		 656 -243.13998450541914 657 -254.26903728444211 658 -265.30732621408288 659 -276.25333501658588
		 660 -287.106057602487 661 -297.86463272094272 662 -308.52771552211647 663 -319.094351103804
		 664 -329.56266066670287 665 -339.93281928350291 666 -350.20304828342216 667 -360.37212544991968
		 668 -370.43878881091803 669 -380.40173365054329 670 -390.2589712270119 671 -400.01022022709196
		 672 -409.6535157102407 673 -419.1873423133012 674 -428.61012229843266 675 -437.92021071851661
		 676 -447.11589025355238 677 -456.1946539774317 678 -465.15589178431071 679 -473.99602098596631
		 680 -482.71523382892485 681 -491.31011180676308 682 -499.77837953821825 683 -508.11708083194185
		 684 -516.32474420834842 685 -524.39825884825041 686 -532.33486580880844 687 -540.13167641107214
		 688 -547.78567178099433 689 -555.29370483331093 690 -562.65200638288434 691 -569.85813287252836
		 692 -576.90815701078191 693 -583.7985120735766 694 -590.52557328678108 695 -597.08568876704726
		 696 -603.47521752915532 697 -609.69057482551398 698 -615.72828476100403 699 -621.58503971317316
		 700 -627.25776559650762 701 -632.74369146650236 702 -638.04042140700267 703 -643.14600613856499
		 704 -648.05901139100683 705 -652.7785798648099 706 -657.30448361756123 707 -661.6369632115784
		 708 -665.77758604508051 709 -669.72795737282649 710 -673.49091830533428 711 -677.06900184841754
		 712 -680.46640772084379 713 -683.68754322373547 714 -686.7373254806995 715 -689.62110911074933
		 716 -692.34482834709934 717 -694.91399184680904 718 -697.33508409485353 719 -699.61443966034574
		 720 -701.75867279658951 721 -703.77370109263143 722 -705.66615969522172 723 -707.4423015444321
		 724 -709.10824459339642 725 -710.67009643371239 726 -712.13326313877872 727 -713.50350483599959
		 728 -714.78614708621808 729 -715.98645123788492 730 -717.10889897255822 731 -718.15833655515371
		 732 -719.13914931939144 733 -720.05549191360421 734 -720.91129354059399 735 -721.71037633012327
		 736 -722.45598557338576 737 -723.15156647709478 738 -723.80021803752675 739 -724.40485379861047
		 740 -724.96821057766147 741 -725.49295604608585 742 -725.98127661243666 743 -726.43556040435749
		 744 -726.85792061574386 745 -727.25033521063381 746 -727.61465415240593 747 -727.95260627580274
		 748 -728.26580579020879 749 -728.55583648761944 750 -728.82392795804003;
	setAttr ".ktv[750:799]" 751 -729.07148508818284 752 -729.29972028269549 753 -729.50975851736928
		 754 -729.70264163791148 755 -729.87933234334582 756 -730.04071786508166 757 -730.18761335310671
		 758 -730.32076498082995 759 -730.44085277995441 760 -730.54849321635436 761 -730.54849321635436
		 762 -730.54849321635436 763 -730.54849321635436 764 -730.54849321635436 765 -730.54849321635436
		 766 -730.54849321635436 767 -730.54849321635436 768 -730.54849321635436 769 -730.54849321635436
		 770 -730.54849321635436 771 -730.54849321635436 772 -730.54849321635436 773 -730.54849321635436
		 774 -730.54849321635436 775 -730.54849321635436 776 -730.54849321635436 777 -730.54849321635436
		 778 -730.54849321635436 779 -730.54849321635436 780 -730.54849321635436 781 -730.54849321635436
		 782 -730.54849321635436 783 -730.54849321635436 784 -730.54849321635436 785 -730.54849321635436
		 786 -730.54849321635436 787 -730.54849321635436 788 -730.54849321635436 789 -730.54849321635436
		 790 -730.54849321635436 791 -730.54849321635436 792 -730.54849321635436 793 -730.54849321635436
		 794 -730.54849321635436 795 -730.54849321635436 796 -730.54849321635436 797 -730.54849321635436
		 798 -730.54849321635436 799 -730.54849321635436 800 -730.54849321635436;
createNode animCurveTA -n "camera11_sampler_rotateX";
	rename -uid "A01A5FDF-4321-A397-C54A-AA8C61F4C3E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 800 ".ktv";
	setAttr ".ktv[0:249]"  1 -32.95492140038197 2 -32.782330754127365 3 -32.604990650777623
		 4 -32.423210837534683 5 -32.237301061600341 6 -32.04757107017646 7 -31.854330610464991
		 8 -31.657889429667559 9 -31.458557274986187 10 -31.256643893622648 11 -31.052459032778916
		 12 -30.846312439656764 13 -30.638513861458097 14 -30.429373045384683 15 -30.219199738638416
		 16 -30.008303688421194 17 -29.796994641934781 18 -29.585582346381123 19 -29.374376548962044
		 20 -29.16368699687937 21 -28.953823437334929 22 -28.745095617530691 23 -28.537813284668385
		 24 -28.332286185949947 25 -28.128824068577213 26 -27.927736679752002 27 -27.729333766676216
		 28 -27.533925076551675 29 -27.341820356580236 30 -27.153329353963777 31 -26.968761815904148
		 32 -26.78842748960318 33 -26.612636122262742 34 -26.441697461084672 35 -26.275921253270837
		 36 -26.115617246023117 37 -25.961095186543346 38 -25.812664822033351 39 -25.670635899695025
		 40 -25.535318166730196 41 -25.407021370340718 42 -25.286055257728471 43 -25.172729576095282
		 44 -25.067354072643024 45 -24.970238494573547 46 -24.881692589088701 47 -24.80202610339035
		 48 -24.731548784680328 49 -24.670570380160502 50 -24.619400637032726 51 -24.573388373713623
		 52 -24.527716371042754 53 -24.482445319856293 54 -24.437635910990632 55 -24.393348835281898
		 56 -24.349644783566418 57 -24.306584446680418 58 -24.264228515460143 59 -24.222637680741865
		 60 -24.18187263336182 61 -24.141994064156261 62 -24.103062663961452 63 -24.065139123613644
		 64 -24.028284133949064 65 -23.992558385803989 66 -23.958022570014684 67 -23.924737377417362
		 68 -23.892763498848272 69 -23.862161625143735 70 -23.832992447139954 71 -23.805316655673177
		 72 -23.779194941579675 73 -23.75468799569569 74 -23.731856508857462 75 -23.710761171901268
		 76 -23.691462675663377 77 -23.674021710979922 78 -23.658498968687319 79 -23.644955139621679
		 80 -23.633450914619395 81 -23.624046984516674 82 -23.616804040149617 83 -23.611782772354605
		 84 -23.609043871967977 85 -23.608648029825954 86 -23.610655936764655 87 -23.615128283620297
		 88 -23.622125761229746 89 -23.631709060427976 90 -23.643938872054132 91 -23.658875886938343
		 92 -23.676580795923599 93 -23.697114289842975 94 -23.720537059533076 95 -23.746909795830419
		 96 -23.77629318957085 97 -23.808747931590982 98 -23.844334712726916 99 -23.88311422381496
		 100 -23.925147155691317 101 -23.970494199192242 102 -24.019216045153989 103 -24.071373384412819
		 104 -24.127026907804982 105 -24.186237306166735 106 -24.249065270334437 107 -24.315571491144137
		 108 -24.385816659432198 109 -24.459861466034862 110 -24.537766601788295 111 -24.619592757528952
		 112 -24.705400624092885 113 -24.795250892316503 114 -24.88920425303591 115 -24.987321397087406
		 116 -25.089663015307405 117 -25.196289798531907 118 -25.30726243759732 119 -25.422641623339846
		 120 -25.542488046595746 121 -25.666862398201211 122 -25.795825368992666 123 -25.929437649806204
		 124 -26.067759931478186 125 -26.210852904844661 126 -26.358777260742141 127 -26.511593690006727
		 128 -26.669362883474726 129 -26.832145531982341 130 -27.000002326365834 131 -27.177792867247351
		 132 -27.370048108821649 133 -27.576335772283663 134 -27.796223578828645 135 -28.029279249651417
		 136 -28.27507050594734 137 -28.533165068911355 138 -28.803130659738589 139 -29.0845349996241
		 140 -29.376945809762923 141 -29.679930811350303 142 -29.993057725581078 143 -30.315894273650493
		 144 -30.648008176753692 145 -30.988967156085511 146 -31.338338932841296 147 -31.695691228216042
		 148 -32.060591763404787 149 -32.432608259602624 150 -32.811308438004644 151 -33.196260019805891
		 152 -33.587030726201554 153 -33.983188278386685 154 -34.38430039755621 155 -34.789934804905386
		 156 -35.199659221629346 157 -35.613041368922929 158 -36.029648967981394 159 -36.449049739999865
		 160 -36.870811406173239 161 -37.294501687696815 162 -37.71968830576548 163 -38.145938981574425
		 164 -38.572821436318698 165 -38.999903391193278 166 -39.426752567393571 167 -39.852936686114376
		 168 -40.278023468550849 169 -40.701580635898068 170 -41.123175909351218 171 -41.542377010105078
		 172 -41.958751659354945 173 -42.371867578295969 174 -42.781292488123242 175 -43.186594110031699
		 176 -43.587340165216382 177 -43.98309837487264 178 -44.373436460195109 179 -44.757922142379478
		 180 -45.136123142620555 181 -45.507607182113063 182 -45.871941982052654 183 -46.228695263634172
		 184 -46.577434748052042 185 -46.917728156502534 186 -47.249143210180577 187 -47.571247630280403
		 188 -47.883609137997162 189 -48.185795454526854 190 -48.477374301062689 191 -48.762053842683201
		 192 -49.04376891428219 193 -49.322427241786414 194 -49.597936551139497 195 -49.870204568250728
		 196 -50.139139019061098 197 -50.404647629488075 198 -50.666638125469859 199 -50.92501823293059
		 200 -51.179695677800929 201 -51.430578186006422 202 -51.677573483478938 203 -51.920589296144598
		 204 -52.159533349932076 205 -52.39431337077167 206 -52.624837084589629 207 -52.851012217316431
		 208 -53.072746494878992 209 -53.289947643206645 210 -53.502523388227658 211 -53.710381455870525
		 212 -53.913429572063905 213 -54.111575462736887 214 -54.30472685381617 215 -54.492791471232074
		 216 -54.675677040911182 217 -54.853291288784753 218 -55.025541940778496 219 -55.192336722823057
		 220 -55.353583360845661 221 -55.509189580775306 222 -55.659063108540551 223 -55.803111670068468
		 224 -55.941242991289613 225 -56.07336479813123 226 -56.199384816523086 227 -56.319210772391926
		 228 -56.432750391668101 229 -56.539911400278122 230 -56.640601524152743 231 -56.734728489218064
		 232 -56.822200021404051 233 -56.90292384663892 234 -56.976807690851544 235 -57.043759279969805
		 236 -57.106148207967856 237 -57.166421797147983 238 -57.224604365935036 239 -57.28072023275228
		 240 -57.334793716024308 241 -57.386849134175527 242 -57.43691080562833 243 -57.485003048807393
		 244 -57.531150182136969 245 -57.575376524040927 246 -57.61770639294236 247 -57.658164107266614
		 248 -57.696773985436167 249 -57.733560345876761 250 -57.768547507009998;
	setAttr ".ktv[250:499]" 251 -57.801759787261382 252 -57.833221505054127 253 -57.862956978813436
		 254 -57.890990526961204 255 -57.917346467923316 256 -57.9420491201221 257 -57.965122801983689
		 258 -57.986591831928948 259 -58.006480528383939 260 -58.02481320977224 261 -58.041614194518068
		 262 -58.056907801044026 263 -58.070718347775404 264 -58.083070153135068 265 -58.093987535548223
		 266 -58.103494813437528 267 -58.111616305227479 268 -58.118376329343 269 -58.123799204206271
		 270 -58.127909248242332 271 -58.130730779873851 272 -58.132288117526443 273 -58.132605579623288
		 274 -58.1317074845878 275 -58.129618150845211 276 -58.126361896817222 277 -58.121963040930737
		 278 -58.116445901608792 279 -58.109834797272875 280 -58.102154046348879 281 -58.093427967260965
		 282 -58.08368087843224 283 -58.072937098288286 284 -58.061220945251137 285 -58.048556737744995
		 286 -58.034968794193034 287 -58.020481433023434 288 -58.005118972654827 289 -57.988905731514286
		 290 -57.971866028023349 291 -57.954024180608435 292 -57.935404507691935 293 -57.916031327699017
		 294 -57.895928959052391 295 -57.875121720177034 296 -57.85363392949548 297 -57.83148990543318
		 298 -57.808713966412782 299 -57.785330430859261 300 -57.761363617196245 301 -57.736837843846494
		 302 -57.71177742923561 303 -57.686206691786865 304 -57.660149949924111 305 -57.633631522072612
		 306 -57.606675726652384 307 -57.579306882092247 308 -57.551549306813023 309 -57.523427319239559
		 310 -57.494965237795789 311 -57.466187380906064 312 -57.43711806699293 313 -57.407781614482104
		 314 -57.378202341795763 315 -57.348404567359651 316 -57.318412609595811 317 -57.288250786930199
		 318 -57.257943417785711 319 -57.227514820584766 320 -57.19698931375396 321 -57.166391215715521
		 322 -57.13574484489375 323 -57.105074519713007 324 -57.074404558597777 325 -57.043759279969805
		 326 -57.012092139592077 327 -56.978359139474925 328 -56.942588417415905 329 -56.904808111214848
		 330 -56.865046358670519 331 -56.823331297581731 332 -56.779691065747116 333 -56.734153800965821
		 334 -56.686747641036348 335 -56.637500723757782 336 -56.58644118692888 337 -56.533597168348031
		 338 -56.478996805815001 339 -56.422668237127745 340 -56.364639600086029 341 -56.304939032487596
		 342 -56.243594672131415 343 -56.180634656817276 344 -56.116087124343188 345 -56.049980212508025
		 346 -55.982342059110856 347 -55.913200801950602 348 -55.84258457882585 349 -55.770521527535514
		 350 -55.697039785878211 351 -55.622167491653151 352 -55.545932782658873 353 -55.468363796694277
		 354 -55.389488671558375 355 -55.30933554504977 356 -55.227932554967381 357 -55.145307839109719
		 358 -55.061489535276195 359 -54.976505781265395 360 -54.8903847148759 361 -54.803154473907036
		 362 -54.714843196157105 363 -54.625479019425086 364 -54.535090081510099 365 -54.443704520210602
		 366 -54.351350473325645 367 -54.258056078654072 368 -54.16384947399456 369 -54.068758797146046
		 370 -53.97281218590738 371 -53.876037778077226 372 -53.778463711454528 373 -53.680118123838128
		 374 -53.581029153026812 375 -53.481224936819522 376 -53.380733613014698 377 -53.279583319411714
		 378 -53.177802193809192 379 -53.075418374005899 380 -52.972459997800563 381 -52.86895520299214
		 382 -52.764932127379517 383 -52.660418908761407 384 -52.555443684936783 385 -52.45003459370426
		 386 -52.343190689886207 387 -52.233942643694689 388 -52.122366016013267 389 -52.008536367725426
		 390 -51.892529259714955 391 -51.774420252865291 392 -51.654284908059822 393 -51.532198786182541
		 394 -51.408237448116743 395 -51.282476454746032 396 -51.154991366954064 397 -51.025857745624329
		 398 -50.895151151640555 399 -50.762947145886159 400 -50.629321289244778 401 -50.49434914259998
		 402 -50.35810626683535 403 -50.220668222834455 404 -50.082110571480946 405 -49.942508873658277
		 406 -49.801938690250154 407 -49.660475582139952 408 -49.518195110211444 409 -49.375172835348216
		 410 -49.231484318433665 411 -49.087205120351506 412 -48.942410801985368 413 -48.797176924218739
		 414 -48.651579047935172 415 -48.50569273401824 416 -48.359593543351572 417 -48.213357036818742
		 418 -48.06705877530333 419 -47.920774319688917 420 -47.774579230859054 421 -47.626521252190997
		 422 -47.475003679358025 423 -47.320659855523871 424 -47.164151842899493 425 -47.006165387339649
		 426 -46.847404780181151 427 -46.68858725067372 428 -46.530437121069255 429 -46.373679920417295
		 430 -46.219035616078472 431 -46.06721179027187 432 -45.918897170593027 433 -45.774753151510836
		 434 -45.635407300247188 435 -45.501443697867096 436 -45.373395503027126 437 -45.251734284291175
		 438 -45.136857137055365 439 -45.029071916245613 440 -44.928570334833985 441 -44.835382121251953
		 442 -44.749264977685819 443 -44.670685708335597 444 -44.601123426500465 445 -44.54067134732496
		 446 -44.486726042217839 447 -44.436815812417628 448 -44.391075335486278 449 -44.349554003484677
		 450 -44.31221976575754 451 -44.278963619256693 452 -44.249602324526215 453 -44.223890301495388
		 454 -44.201516595488094 455 -44.182114234898293 456 -44.165263555125534 457 -44.150495709696251
		 458 -44.137293791372514 459 -44.125099194423171 460 -44.113305244964316 461 -44.101259546715738
		 462 -44.088259894222567 463 -44.07354884966422 464 -44.056307178999539 465 -44.035642074493055
		 466 -44.010574729540927 467 -43.980023830576101 468 -43.942781541814249 469 -43.897489595648125
		 470 -43.842604907314076 471 -43.776360479135718 472 -43.696722300083977 473 -43.601328577401198
		 474 -43.48745227759057 475 -43.356290899964613 476 -43.221775266234218 477 -43.086616778413003
		 478 -42.952008323446506 479 -42.818951289447881 480 -42.688329195097971 481 -42.560972901742346
		 482 -42.437671735370643 483 -42.319192355878641 484 -42.206289980603735 485 -42.099701060281582
		 486 -42.000162774168665 487 -41.90839870664152 488 -41.825120312744154 489 -41.751020224137342
		 490 -41.686766518279477 491 -41.632994222339541 492 -41.590295740812323 493 -41.559210285584179
		 494 -41.540212720348059 495 -41.533702332058922 496 -41.539992122149208 497 -41.559299250422313
		 498 -41.591737276608541 499 -41.637310514885833 500 -41.695911638413527;
	setAttr ".ktv[500:749]" 501 -41.767320680131377 502 -41.851211353946212 503 -41.947152497940856
		 504 -42.054618904804833 505 -42.173000771181407 506 -42.301615022199577 507 -42.439717364595204
		 508 -42.586511857900923 509 -42.741174460847937 510 -42.902846059808986 511 -43.070656432211848
		 512 -43.243730151958125 513 -43.421192928095074 514 -43.602193138043056 515 -43.785885047599606
		 516 -43.97149688112259 517 -44.158206624360574 518 -44.345208604002636 519 -44.531789463054331
		 520 -44.717345681103431 521 -44.903501886910433 522 -45.091972780167119 523 -45.284349693515452
		 524 -45.484855571889042 525 -45.69355209917898 526 -45.910301513693554 527 -46.134927036561642
		 528 -46.367186961500089 529 -46.606822628372989 530 -46.853539861357646 531 -47.107020646543347
		 532 -47.366929526278938 533 -47.632919786030961 534 -47.904639200113273 535 -48.181735164173986
		 536 -48.463859106213611 537 -48.750670127395374 538 -49.041838041287171 539 -49.337044641607442
		 540 -49.635986586370393 541 -49.938375352275486 542 -50.243937890535868 543 -50.552416653451978
		 544 -50.863569312404465 545 -51.177168243834345 546 -51.49298867246646 547 -51.8108815404631
		 548 -52.130602510533897 549 -52.451946761333033 550 -52.774825816689891 551 -53.0990414690827
		 552 -53.424473826437612 553 -53.750948762876611 554 -54.078364501863234 555 -54.406577135402244
		 556 -54.735473573173188 557 -55.064940303852488 558 -55.394868741335465 559 -55.725154734870344
		 560 -56.055698124760653 561 -56.386402340753456 562 -56.717174040117193 563 -57.047922782401848
		 564 -57.378560737943594 565 -57.709011577888788 566 -58.03917431958088 567 -58.368964548996097
		 568 -58.698328182083173 569 -59.0271723720805 570 -59.35542027885716 571 -59.683000521648161
		 572 -60.009830117640533 573 -60.335840552738411 574 -60.660959727691399 575 -60.985116524293915
		 576 -61.308240751988535 577 -61.630263078954528 578 -61.95111497063035 579 -62.270728652597199
		 580 -62.589037082046922 581 -62.905973926877344 582 -63.221473552014537 583 -63.535471012606877
		 584 -63.847902053783315 585 -64.158687229609541 586 -64.467790292120497 587 -64.775137774433531
		 588 -65.080668425222427 589 -65.384321808400628 590 -65.686038335359356 591 -65.985759301556868
		 592 -66.283426927409181 593 -66.578984403462371 594 -66.872375939858173 595 -67.163546820129
		 596 -67.452443459388277 597 -67.739013467003502 598 -68.023205713866076 599 -68.304970404392265
		 600 -68.584259153412233 601 -68.861025068126366 602 -69.135222835322338 603 -69.406808814074225
		 604 -69.675751428314683 605 -69.941973529351372 606 -70.205494377696894 607 -70.466226626734866
		 608 -70.724166228054969 609 -70.979274998841134 610 -71.231525794607876 611 -71.480872099643136
		 612 -71.72731813949747 613 -71.970833180983576 614 -72.211400051793433 615 -72.449004911097575
		 616 -72.683637436025919 617 -72.915291016283959 618 -73.143947095016472 619 -73.369633258719844
		 620 -73.592343815108393 621 -73.81208907843623 622 -74.028884235597218 623 -74.242749611051281
		 624 -74.45371094293931 625 -74.66179967039821 626 -74.867041227223595 627 -75.069501053303938
		 628 -75.26921984755856 629 -75.466255145682808 630 -75.660671863405994 631 -75.852542662447107
		 632 -76.041948325263007 633 -76.228978136400144 634 -76.413730267378497 635 -76.596314778258616
		 636 -76.775507402331542 637 -76.948461883502446 638 -77.115033124850015 639 -77.275171871041763
		 640 -77.428826435378198 641 -77.575977797349751 642 -77.716596325378958 643 -77.850666437306757
		 644 -77.978181920872089 645 -78.099137015215675 646 -78.213559384570615 647 -78.321467268228432
		 648 -78.422895558561564 649 -78.517890171558307 650 -78.6065081836621 651 -78.688811808403671
		 652 -78.764890792047922 653 -78.834831211238225 654 -78.898734548121283 655 -78.95671291812161
		 656 -79.008888713843334 657 -79.055391316740796 658 -79.096367505235307 659 -79.131965312055797
		 660 -79.162343289823681 661 -79.187667851109282 662 -79.208111131673235 663 -79.223852362440368
		 664 -79.235075096408565 665 -79.241969649629041 666 -79.244727896247838 667 -79.243545552170247
		 668 -79.238620698369317 669 -79.230153090170276 670 -79.21834437243534 671 -79.2033944448021
		 672 -79.185504844081493 673 -79.164875875718579 674 -79.141706647830532 675 -79.116194631280237
		 676 -79.088535266215629 677 -79.058924022359548 678 -79.027547184685162 679 -78.99459797598395
		 680 -78.960252168494392 681 -78.924695191539556 682 -78.888104393920159 683 -78.850656007814379
		 684 -78.812515183815677 685 -78.773849841541605 686 -78.73482166987381 687 -78.6955880968288
		 688 -78.656302129202601 689 -78.617112166180746 690 -78.578164435328944 691 -78.539592432999711
		 692 -78.501531551378434 693 -78.464109076214783 694 -78.427446087340002 695 -78.391656968684785
		 696 -78.356848859810171 697 -78.323121055800371 698 -78.290564367503691 699 -78.259260459738172
		 700 -78.229281190825802 701 -78.200687982153212 702 -78.173531250745384 703 -78.147849940373277
		 704 -78.123671186862182 705 -78.101010150524203 706 -78.079870042817916 707 -78.060243260254808
		 708 -78.042108104361503 709 -78.025435324878927 710 -78.010183672139718 711 -77.996307154810793
		 712 -77.98374806614342 713 -77.972443985712118 714 -77.962327560987973 715 -77.953327803793528
		 716 -77.945370725601009 717 -77.938383160039692 718 -77.932289546331972 719 -77.927015984772055
		 720 -77.922489766482059 721 -77.918641922907739 722 -77.915404709477102 723 -77.912714279687066
		 724 -77.910510359164647 725 -77.908736286582311 726 -77.907339843752936 727 -77.906272101362191
		 728 -77.905488293292692 729 -77.90494741990058 730 -77.904612416555267 731 -77.904449518169557
		 732 -77.904428479935206 733 -77.904522276014035 734 -77.904706908341154 735 -77.904961251401772
		 736 -77.905266686976248 737 -77.905607164615986 738 -77.905968838917786 739 -77.9063399250863
		 740 -77.906710520426543 741 -77.907072503050912 742 -77.907419075289411 743 -77.907745079318204
		 744 -77.908046518167268 745 -77.908320508973134 746 -77.908565155440058 747 -77.908779428625252
		 748 -77.908963055772617 749 -77.909116455660978 750 -77.909240474561742;
	setAttr ".ktv[750:799]" 751 -77.909336571958704 752 -77.909406536735787 753 -77.909452467242062
		 754 -77.90947670120417 755 -77.909481751274754 756 -77.909470245901787 757 -77.909444875220132
		 758 -77.909408341685904 759 -77.909363315193829 760 -77.909312392436092 761 -77.909312392436092
		 762 -77.909312392436092 763 -77.909312392436092 764 -77.909312392436092 765 -77.909312392436092
		 766 -77.909312392436092 767 -77.909312392436092 768 -77.909312392436092 769 -77.909312392436092
		 770 -77.909312392436092 771 -77.909312392436092 772 -77.909312392436092 773 -77.909312392436092
		 774 -77.909312392436092 775 -77.909312392436092 776 -77.909312392436092 777 -77.909312392436092
		 778 -77.909312392436092 779 -77.909312392436092 780 -77.909312392436092 781 -77.909312392436092
		 782 -77.909312392436092 783 -77.909312392436092 784 -77.909312392436092 785 -77.909312392436092
		 786 -77.909312392436092 787 -77.909312392436092 788 -77.909312392436092 789 -77.909312392436092
		 790 -77.909312392436092 791 -77.909312392436092 792 -77.909312392436092 793 -77.909312392436092
		 794 -77.909312392436092 795 -77.909312392436092 796 -77.909312392436092 797 -77.909312392436092
		 798 -77.909312392436092 799 -77.909312392436092 800 -77.909312392436092;
createNode animCurveTA -n "camera11_sampler_rotateY";
	rename -uid "9ADC90E1-453B-568F-78C6-F7A1470795C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 800 ".ktv";
	setAttr ".ktv[0:249]"  1 -81.000000537310527 2 -80.729070051914263 3 -80.439516548095128
		 4 -80.132554570532875 5 -79.809398663907245 6 -79.471263372898022 7 -79.119363242184932
		 8 -78.754912816447742 9 -78.379126640366209 10 -77.993219258620002 11 -77.598405215889002
		 12 -77.195899056852895 13 -76.786915326191448 14 -76.372668568584402 15 -75.954373328711497
		 16 -75.533244151252532 17 -75.110495580887203 18 -74.687342162295337 19 -74.264998440156589
		 20 -73.844678959150784 21 -73.427598263957634 22 -73.014970899256923 23 -72.608011409728377
		 24 -72.207934340051793 25 -71.815954234906883 26 -71.433285638973373 27 -71.061143096931076
		 28 -70.700741153459731 29 -70.35329435323905 30 -70.020017240948832 31 -69.702124361268801
		 32 -69.400830258878727 33 -69.117349478458351 34 -68.852896564687427 35 -68.60868606224571
		 36 -68.385932515812954 37 -68.185850470068914 38 -68.009654469693317 39 -67.858559059365973
		 40 -67.733778783766596 41 -67.63652818757491 42 -67.568021815470701 43 -67.529474212133721
		 44 -67.522099922243726 45 -67.54711349048047 46 -67.605729461523694 47 -67.699162380053139
		 48 -67.828626790748572 49 -67.99533723828975 50 -68.200508267356412 51 -68.437181444130644
		 52 -68.697176186907143 53 -68.979873818534344 54 -69.284655661861024 55 -69.610903039735632
		 56 -69.957997275006818 57 -70.325319690523187 58 -70.712251609133304 59 -71.118174353685788
		 60 -71.542469247029175 61 -71.984517612012127 62 -72.443700771483194 63 -72.919400048290967
		 64 -73.41099676528404 65 -73.917872245310988 66 -74.439407811220477 67 -74.974984785860997
		 68 -75.523984492081226 69 -76.085788252729685 70 -76.659777390655009 71 -77.245333228705775
		 72 -77.841837089730561 73 -78.448670296578001 74 -79.065214172096645 75 -79.690850039135086
		 76 -80.324959220541956 77 -80.966923039165778 78 -81.616122817855199 79 -82.271939879458785
		 80 -82.93375554682514 81 -83.600951142802842 82 -84.272907990240498 83 -84.949007411986699
		 84 -85.628630730890023 85 -86.311159269799091 86 -86.995974351562438 87 -87.682457299028698
		 88 -88.369989435046492 89 -89.057952082464297 90 -89.745726564130862 91 -90.432694202894595
		 92 -91.118236321604286 93 -91.801734243108399 94 -92.482569290255483 95 -93.160122785894274
		 96 -93.833776052873318 97 -94.502910414041125 98 -95.166907192246299 99 -95.825147710337561
		 100 -96.477013291163388 101 -97.121885257572373 102 -97.759144932413136 103 -98.388173638534283
		 104 -99.00835269878435 105 -99.619063436012013 106 -100.21968717306572 107 -100.80960523279424
		 108 -101.38819893804603 109 -101.95484961166976 110 -102.50893857651401 111 -103.04984715542733
		 112 -103.57695667125834 113 -104.08964844685563 114 -104.58730380506778 115 -105.06930406874342
		 116 -105.53503056073107 117 -105.98386460387938 118 -106.41518752103691 119 -106.82838063505227
		 120 -107.22282526877402 121 -107.59790274505082 122 -107.95299438673116 123 -108.28748151666368
		 124 -108.60074545769707 125 -108.89216753267985 126 -109.16112906446047 127 -109.40701137588771
		 128 -109.6291957898101 129 -109.82706362907621 130 -109.99999621653467 131 -110.14237217412111
		 132 -110.249649227044 133 -110.32282735306093 134 -110.36290652992962 135 -110.37088673540769
		 136 -110.3477679472529 137 -110.29455014322281 138 -110.21223330107519 139 -110.10181739856765
		 140 -109.9643024134578 141 -109.80068832350349 142 -109.61197510646222 143 -109.39916274009173
		 144 -109.16325120214968 145 -108.90524047039378 146 -108.62613052258155 147 -108.32692133647087
		 148 -108.0086128898192 149 -107.67220516038439 150 -107.31869812592404 151 -106.9490917641958
		 152 -106.56438605295733 153 -106.16558096996633 154 -105.75367649298045 155 -105.32967259975739
		 156 -104.89456926805477 157 -104.44936647563033 158 -103.99506420024163 159 -103.53266241964647
		 160 -103.06316111160241 161 -102.5875602538672 162 -102.10685982419844 163 -101.62205980035388
		 164 -101.13416016009108 165 -100.64416088116785 166 -100.15306194134169 167 -99.661863318370436
		 168 -99.171564990011632 169 -98.683166934022978 170 -98.197669128162119 171 -97.716071550186911
		 172 -97.239374177854756 173 -96.768576988923513 174 -96.304679961150768 175 -95.848683072294207
		 176 -95.401586300111475 177 -94.964389622360272 178 -94.538093016798257 179 -94.123696461183101
		 180 -93.722199933272492 181 -93.334603410824002 182 -92.96190687159546 183 -92.605110293344438
		 184 -92.265213653828596 185 -91.943216930805633 186 -91.640120102033279 187 -91.35692314526905
		 188 -91.094626038270775 189 -90.854228758795998 190 -90.636731284602433 191 -90.437153727422768
		 192 -90.249606836312807 193 -90.073726545014992 194 -89.909148787271604 195 -89.755509496825084
		 196 -89.612444607417856 197 -89.479590052792261 198 -89.356581766690695 199 -89.243055682855498
		 200 -89.138647735029181 201 -89.042993856953984 202 -88.955729982372389 203 -88.876492045026765
		 204 -88.804915978659452 205 -88.740637717012916 206 -88.683293193829442 207 -88.63251834285154
		 208 -88.587949097821493 209 -88.549221392481741 210 -88.515971160574665 211 -88.487834335842606
		 212 -88.464446852028018 213 -88.445444642873255 214 -88.430463642120685 215 -88.419139783512733
		 216 -88.411109000791754 217 -88.406007227700201 218 -88.4034703979803 219 -88.403134445374619
		 220 -88.404635303625469 221 -88.407608906475218 222 -88.411691187666349 223 -88.416518080941046
		 224 -88.421725520041861 225 -88.426949438711148 226 -88.431825770691333 227 -88.435990449724699
		 228 -88.439079409553727 229 -88.440728583920702 230 -88.440573906568133 231 -88.438251311238361
		 232 -88.433396731673724 233 -88.425646101616636 234 -88.414635354809505 235 -88.400000424994715
		 236 -88.384644013355185 237 -88.371665335416765 238 -88.360995096436341 239 -88.352564001670757
		 240 -88.346302756376843 241 -88.342142065811487 242 -88.340012635231474 243 -88.339845169893707
		 244 -88.341570375054999 245 -88.345118955972254 246 -88.350421617902228 247 -88.357409066101837
		 248 -88.366012005827912 249 -88.376161142337352 250 -88.387787180886917;
	setAttr ".ktv[250:499]" 251 -88.400820826733465 252 -88.415192785133883 253 -88.430833761345013
		 254 -88.447674460623716 255 -88.465645588226792 256 -88.484677849411128 257 -88.504701949433567
		 258 -88.52564859355094 259 -88.547448487020148 260 -88.570032335097935 261 -88.593330843041286
		 262 -88.617274716106905 263 -88.641794659551735 264 -88.666821378632605 265 -88.692285578606345
		 266 -88.718117964729842 267 -88.744249242259869 268 -88.770610116453383 269 -88.797131292567116
		 270 -88.823743475858009 271 -88.850377371582837 272 -88.876963684998501 273 -88.903433121361829
		 274 -88.929716385929694 275 -88.955744183958871 276 -88.981447220706286 277 -89.006756201428772
		 278 -89.031601831383156 279 -89.05591481582627 280 -89.079625860014971 281 -89.102665669206175
		 282 -89.124964948656626 283 -89.146454403623267 284 -89.1670647393629 285 -89.186726661132354
		 286 -89.205370874188489 287 -89.222928083788148 288 -89.239328995188245 289 -89.254504313645526
		 290 -89.268384744416892 291 -89.2809009927592 292 -89.291983763929281 293 -89.301563763183992
		 294 -89.309571695780178 295 -89.315938266974698 296 -89.320594182024365 297 -89.323470146186068
		 298 -89.324496864716579 299 -89.32360504287287 300 -89.320725385911672 301 -89.315788599089927
		 302 -89.308725387664396 303 -89.299466456892006 304 -89.287942512029545 305 -89.2740842583339
		 306 -89.257822401061887 307 -89.239087645470377 308 -89.217810696816201 309 -89.193922260356231
		 310 -89.167353041347297 311 -89.138033745046243 312 -89.105895076709942 313 -89.070867741595222
		 314 -89.032882444958943 315 -88.99186989205792 316 -88.947760788149026 317 -88.900485838489132
		 318 -88.849975748335069 319 -88.796161222943624 320 -88.738972967571726 321 -88.678341687476205
		 322 -88.614198087913891 323 -88.546472874141614 324 -88.475096751416316 325 -88.400000424994715
		 326 -88.3205296033655 327 -88.236114619102381 328 -88.146813113590028 329 -88.052682728213028
		 330 -87.953781104356068 331 -87.850165883403761 332 -87.741894706740709 333 -87.629025215751597
		 334 -87.511615051820982 335 -87.38972185633358 336 -87.26340327067399 337 -87.132716936226814
		 338 -86.99772049437675 339 -86.858471586508344 340 -86.715027854006323 341 -86.567446938255216
		 342 -86.415786480639753 343 -86.260104122544519 344 -86.100457505354143 345 -85.93690427045324
		 346 -85.769502059226483 347 -85.598308513058498 348 -85.423381273333888 349 -85.244777981437338
		 350 -85.062556278753419 351 -84.876773806666776 352 -84.68748820656208 353 -84.49475711982393
		 354 -84.298638187836957 355 -84.099189051985832 356 -83.89646735365514 357 -83.690530734229526
		 358 -83.481436835093618 359 -83.269243297632059 360 -83.054007763229478 361 -82.835787873270547
		 362 -82.61464126913981 363 -82.39062559222198 364 -82.163798483901658 365 -81.934217585563445
		 366 -81.701940538592041 367 -81.467024984372031 368 -81.229528564288003 369 -80.989508919724713
		 370 -80.747023692066719 371 -80.50213052269865 372 -80.254887053005106 373 -80.005350924370774
		 374 -79.753579778180296 375 -79.499631255818286 376 -79.24356299866929 377 -78.985432648118149
		 378 -78.725297845549278 379 -78.46321623234742 380 -78.199245449897163 381 -77.933443139583204
		 382 -77.665866942790075 383 -77.396574500902474 384 -77.125623455305075 385 -76.853071447382405
		 386 -76.580998423140215 387 -76.31126906537655 388 -76.043618120664462 389 -75.777780335576907
		 390 -75.513490456687094 391 -75.250483230568051 392 -74.988493403792774 393 -74.727255722934444
		 394 -74.466504934566046 395 -74.205975785260662 396 -73.945403021591389 397 -73.68452139013128
		 398 -73.423065637453377 399 -73.160770510130789 400 -72.897370754736556 401 -72.632601117843748
		 402 -72.36619634602549 403 -72.097891185854763 404 -71.827420383904666 405 -71.554518686748267
		 406 -71.278920840958691 407 -71.00036159310892 408 -70.718575689772038 409 -70.433297877521156
		 410 -70.144262902929299 411 -69.851205512569564 412 -69.553860453015034 413 -69.251962470838706
		 414 -68.945246312613719 415 -68.6334467249131 416 -68.316298454309944 417 -67.993536247377293
		 418 -67.664894850688228 419 -67.330109010815832 420 -66.988913474333145 421 -66.644341986316846
		 422 -66.298794623741287 423 -65.951054861894619 424 -65.599906316798965 425 -65.244134557997853
		 426 -64.88252836023743 427 -64.513882306689482 428 -64.136999061358836 429 -63.750690425976011
		 430 -63.353781465319329 431 -62.94511329068137 432 -62.523542932384224 433 -62.087951367641637
		 434 -61.637240685043771 435 -61.170343982761224 436 -60.686222047610464 437 -60.183869633666873
		 438 -59.662322114259631 439 -59.120651124814458 440 -58.557973449607886 441 -57.973445259048979
		 442 -57.366269548653989 443 -56.735515792773512 444 -56.080309400176198 445 -55.400203250940997
		 446 -54.695990873299941 447 -53.968787005412388 448 -53.218794814517047 449 -52.446316139960636
		 450 -51.651749424688084 451 -50.835587542146733 452 -49.998430074277742 453 -49.140936432922274
		 454 -48.263874602535694 455 -47.368087849752783 456 -46.454496139712411 457 -45.524091194100848
		 458 -44.57794821828886 459 -43.617166521717188 460 -42.642932925941039 461 -41.656476864284798
		 462 -40.659074441758001 463 -39.652060132102818 464 -38.636771227593748 465 -37.614613635062689
		 466 -36.587021803490316 467 -35.55548415197898 468 -34.521505417065292 469 -33.486675646440311
		 470 -32.452657530642654 471 -31.421226123703448 472 -30.394332044921452 473 -29.37412402957192
		 474 -28.363126348583883 475 -27.362362602585748 476 -26.366620317787834 477 -25.375401593667384
		 478 -24.388816553589717 479 -23.407020386130327 480 -22.430145129087148 481 -21.458348998285611
		 482 -20.49176196710297 483 -19.530495961608775 484 -18.574656111100296 485 -17.62429786670592
		 486 -16.679501476654753 487 -15.740326480385113 488 -14.806836263380051 489 -13.879097035472256
		 490 -12.957188960865885 491 -12.041211507803947 492 -11.131289140540447 493 -10.227575877569805
		 494 -9.3302582788358208 495 -8.4395564818308184 496 -7.5557230130702404 497 -6.6790392549237065
		 498 -5.8098133572777115 499 -4.948356681545274 500 -4.0949996441086771;
	setAttr ".ktv[500:749]" 501 -3.2500795353619432 502 -2.413867009155112 503 -1.5866616615603721
		 504 -0.76870967914282673 505 0.039784974167714565 506 0.83866644986637651 507 1.6278309395069763
		 508 2.4072121300285665 509 3.176852777118818 510 3.9367866558126274 511 4.6871214151707523
		 512 5.4280093449909632 513 6.159632017993351 514 6.8822565215427787 515 7.5961222088331875
		 516 8.3015280496455812 517 8.9987670218784022 518 9.6881816821156637 519 10.370082962940701
		 520 11.044820657760138 521 11.714697578556716 522 12.381830108270963 523 13.045625402674997
		 524 13.70435405078142 525 14.357645838304162 526 15.005256657401388 527 15.646979537395092
		 528 16.282568404452142 529 16.911868326032103 530 17.534749594411025 531 18.151127053851202
		 532 18.760962092961137 533 19.364263022574406 534 19.961084002585842 535 20.551522750369244
		 536 21.135717300761506 537 21.713842096184482 538 22.286103995205231 539 22.85273608429479
		 540 23.413995961167547 541 23.970159559299645 542 24.521517604478085 543 25.068371959008044
		 544 25.61103236205912 545 26.149813580340677 546 26.68501414448215 547 27.217037959437096
		 548 27.746106748175578 549 28.272489397799418 550 28.796623441872708 551 29.318746019929431
		 552 29.839201897371957 553 30.35823038945172 554 30.876168707707379 555 31.393270466275986
		 556 31.909822524440003 557 32.42609640383148 558 32.942357711238657 559 33.458866282795022
		 560 33.975876367282453 561 34.493636838232419 562 35.012391426239354 563 35.532378964392251
		 564 36.053833640986419 565 36.576999772994711 566 37.10207514168679 567 37.629276578828701
		 568 38.158863233275859 569 38.691026401119537 570 39.225977431505633 571 39.763931546445193
		 572 40.30508013999691 573 40.849633942360128 574 41.397793729769155 575 41.949758064112217
		 576 42.505723443467012 577 43.065884393236693 578 43.630433536104015 579 44.19956167142341
		 580 44.773457838343461 581 45.352309361651727 582 45.936301880164507 583 46.525619357468692
		 584 47.120444074802748 585 47.720925678072433 586 48.327294141790482 587 48.939704645239516
		 588 49.558332471909097 589 50.183350996661574 590 50.814931568637881 591 51.453243372441008
		 592 52.098453267006093 593 52.750725601542875 594 53.410222007929924 595 54.077101168929318
		 596 54.751518561592171 597 55.433626175229605 598 56.123572203339677 599 56.821500708900096
		 600 57.527551262464975 601 58.241858552544379 602 58.964551967787109 603 59.695755150546162
		 604 60.435614149848483 605 61.184135948031461 606 61.941585358495175 607 62.707910999048046
		 608 63.483285948426911 609 64.267768780833165 610 65.061433690730865 611 65.864273314831379
		 612 66.676422853452777 613 67.497884757902057 614 68.328682117566828 615 69.168824737584643
		 616 70.018308306780312 617 70.877113527753195 618 71.745144272102991 619 72.622446993125507
		 620 73.508908397873782 621 74.404439137554306 622 75.308930058134649 623 76.222251123858101
		 624 77.14425028507921 625 78.07475228078691 626 79.013501837231445 627 79.960372212072031
		 628 80.915066713239554 629 81.877304473739969 630 82.846774424703341 631 83.823133479754759
		 632 84.806004517167864 633 85.794974118528586 634 86.789590015615147 635 87.789372638469459
		 636 88.798346061765557 637 89.82581421076749 638 90.871632902747024 639 91.935220126715038
		 640 93.015844005218028 641 94.11286614914394 642 95.225440010331226 643 96.352677919079724
		 644 97.493618134449562 645 98.647135900326461 646 99.812259070262385 647 100.98776653005412
		 648 102.17243427496186 649 103.36498821803197 650 104.56411173604877 651 105.7683612601171
		 652 106.97650608707164 653 108.18708791325972 654 109.39870474219877 655 110.60995735825928
		 656 111.81945905842423 657 113.02576655652645 658 114.22767708372582 659 115.42383867965549
		 660 116.61300534971652 661 117.79400554014794 662 118.96568003286927 663 120.12698390416948
		 664 121.27684748306204 665 122.41450767632404 666 123.53907097832543 667 124.64979171486594
		 668 125.74600806848366 669 126.82714246041274 670 127.89263231097348 671 128.94218760979237
		 672 129.9754228081722 673 130.99208576745482 674 131.99199990390713 675 132.97506086935289
		 676 133.94123287912308 677 134.89047051646429 678 135.82299578007144 679 136.73878631635867
		 680 137.63827268743788 681 138.5215689559916 682 139.3889615683029 683 140.24071700008329
		 684 141.07729873794858 685 141.89904401773822 686 142.7063630998243 687 143.49968561466287
		 688 144.27945592353615 689 145.04612847495682 690 145.80011192183701 691 146.54196326733066
		 692 147.27209413967455 693 147.99095301783404 694 148.69897536365343 695 149.39657916130665
		 696 150.08416062119971 697 150.76209012641729 698 151.43070851465146 699 152.09032380011493
		 700 152.7412084460299 701 153.38359729675676 702 154.01768626773998 703 154.64363187021618
		 704 155.26155161622756 705 155.87152530956027 706 156.47359718281157 707 157.06775082154689
		 708 157.65402799097188 709 158.23235440603079 710 158.80271390995304 711 159.36492442978482
		 712 159.91894840225498 713 160.46468536448302 714 161.00203024317258 715 161.53087651655042
		 716 162.05116154246318 717 162.56268926118244 718 163.06541527744415 719 163.55924830395008
		 720 164.04415340241582 721 164.51994247388808 722 164.98660788569634 723 165.44408562123883
		 724 165.89231824672902 725 166.33129931229604 726 166.76088282066286 727 167.18108618001889
		 728 167.59187304297143 729 167.99326810651638 730 168.38511549411356 731 168.76746336343177
		 732 169.14028858001456 733 169.50357055164295 734 169.85729089373396 735 170.20148231038942
		 736 170.536019971559 737 170.8609540176362 738 171.1762717856063 739 171.48196182870109
		 740 171.77801376711946 741 172.06447319078052 742 172.34120908079618 743 172.60828366890371
		 744 172.86568919471122 745 173.11341861183323 746 173.35146551230315 747 173.57982406115042
		 748 173.79848893935124 749 174.00751245539871 750 174.20676460820675;
	setAttr ".ktv[750:799]" 751 174.39631204153773 752 174.57615058968003 753 174.74627648617093
		 754 174.90668631653205 755 175.05737697558121 756 175.19834562868755 757 175.32958967648767
		 758 175.45110672263579 759 175.56289454430089 760 175.66495106516552 761 175.66495106516552
		 762 175.66495106516552 763 175.66495106516552 764 175.66495106516552 765 175.66495106516552
		 766 175.66495106516552 767 175.66495106516552 768 175.66495106516552 769 175.66495106516552
		 770 175.66495106516552 771 175.66495106516552 772 175.66495106516552 773 175.66495106516552
		 774 175.66495106516552 775 175.66495106516552 776 175.66495106516552 777 175.66495106516552
		 778 175.66495106516552 779 175.66495106516552 780 175.66495106516552 781 175.66495106516552
		 782 175.66495106516552 783 175.66495106516552 784 175.66495106516552 785 175.66495106516552
		 786 175.66495106516552 787 175.66495106516552 788 175.66495106516552 789 175.66495106516552
		 790 175.66495106516552 791 175.66495106516552 792 175.66495106516552 793 175.66495106516552
		 794 175.66495106516552 795 175.66495106516552 796 175.66495106516552 797 175.66495106516552
		 798 175.66495106516552 799 175.66495106516552 800 175.66495106516552;
createNode animCurveTA -n "camera11_sampler_rotateZ";
	rename -uid "37F63F94-4B7F-9FD7-CA0C-FEB03111921E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 800 ".ktv";
	setAttr ".ktv[0:249]"  1 2.0331548223494798e-14 2 1.9742355410061493e-14
		 3 1.9149738806929467e-14 4 0 5 1.7977026262209109e-14 6 -1.7405889181683044e-14 7 0
		 8 0 9 1.5789501440148807e-14 10 -1.5289110593326113e-14 11 0 12 -7.1757494241508685e-15
		 13 6.9574094156205705e-15 14 0 15 -6.552589125513014e-15 16 -6.3657379312970312e-15
		 17 0 18 0 19 -5.8641032374037375e-15 20 5.7154428870144785e-15 21 0 22 -5.443884124262223e-15
		 23 0 24 0 25 0 26 4.9944538725937942e-15 27 0 28 0 29 0 30 0 31 0 32 4.5200409299882647e-15
		 33 0 34 -4.4080860763219361e-15 35 0 36 0 37 0 38 8.4939288606161869e-15 39 4.2194252320215185e-15
		 40 0 41 0 42 0 43 -4.160762858952719e-15 44 0 45 0 46 0 47 0 48 0 49 -4.2443382432681878e-15
		 50 0 51 -4.3270367577627132e-15 52 8.7546921205192849e-15 53 -4.433497840930076e-15
		 54 0 55 4.5645986802474699e-15 56 0 57 0 58 4.8144620542477148e-15 59 0 60 5.0229598154976749e-15
		 61 0 62 -5.2720549939089951e-15 63 -5.4143242064151778e-15 64 0 65 0 66 0 67 -6.1343650352209146e-15
		 68 0 69 0 70 -6.8922878257358528e-15 71 -7.2030973824147264e-15 72 7.550778775946246e-15
		 73 0 74 0 75 -8.886249658085861e-15 76 -9.4625587070272565e-15 77 0 78 0 79 0 80 1.2927315499185481e-14
		 81 2.8537327868749864e-14 82 -1.5936200313139105e-14 83 -1.8062648979261081e-14 84 -2.0864088712113727e-14
		 85 0 86 3.0345259698788559e-14 87 0 88 5.5906675570082883e-14 89 0 90 3.5834053469966831e-13
		 91 -2.0355549961366507e-13 92 0 93 5.0888874903416268e-14 94 2.5444437451708134e-14
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0
		 138 0 139 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0
		 152 0 153 0 154 0 155 0 156 0 157 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0
		 166 0 167 0 168 0 169 2.5444437451708134e-14 170 2.5444437451708134e-14 171 0 172 0
		 173 2.5444437451708134e-14 174 2.5444437451708134e-14 175 2.5444437451708134e-14
		 176 0 177 0 178 0 179 0 180 5.0888874903416268e-14 181 5.0888874903416268e-14 182 5.0888874903416268e-14
		 183 5.0888874903416268e-14 184 7.6333312355124402e-14 185 -7.6333312355124402e-14
		 186 1.0177774980683254e-13 187 0 188 1.526666247102488e-13 189 0 190 -2.7988881196878945e-13
		 191 0 192 -7.1244424864782776e-13 193 0 194 0 195 0 196 4.702134272298032e-13 197 -3.5017559984954215e-13
		 198 0 199 0 200 -2.1157339634551731e-13 201 0 202 0 203 1.6220983378022536e-13 204 0
		 205 0 206 0 207 -1.332739353301939e-13 208 1.2906815749483285e-13 209 -1.2562346397939466e-13
		 210 1.2280943083073844e-13 211 -1.2052483501888848e-13 212 0 213 0 214 -1.16120376745585e-13
		 215 1.1528880378355491e-13 216 1.1470624413641613e-13 217 0 218 1.1415757264324715e-13
		 219 -2.2826712420367832e-13 220 -1.1424090681386601e-13 221 0 222 0 223 -1.150979735738836e-13
		 224 0 225 0 226 -1.1622121460581928e-13 227 -1.16530613834446e-13 228 2.3352232615846395e-13
		 229 0 230 1.1687303504177552e-13 231 0 232 0 233 0 234 0 235 1.139100594186723e-13
		 236 0 237 1.1192839966787101e-13 238 -1.1119992096771849e-13 239 0 240 -1.1021223147877378e-13
		 241 0 242 0 243 0 244 1.098978248535823e-13 245 0 246 0 247 -1.1095722061807313e-13
		 248 0 249 2.244764090627539e-13 250 0;
	setAttr ".ktv[250:499]" 251 -1.1396848171769733e-13 252 0 253 -1.1614775920704726e-13
		 254 -1.1740749693487055e-13 255 -1.1878229782503091e-13 256 -1.2027383454416441e-13
		 257 0 258 0 259 0 260 0 261 1.2956185679084111e-13 262 0 263 0 264 0 265 -1.3936390048102252e-13
		 266 0 267 1.4512987453974269e-13 268 0 269 1.5150925929920004e-13 270 0 271 0 272 0
		 273 3.323891843970622e-13 274 -1.7027538856329483e-13 275 -1.7451896961076863e-13
		 276 0 277 1.8348112276825801e-13 278 3.7637625162943026e-13 279 -1.9303407068226944e-13
		 280 0 281 2.0309020105053825e-13 282 2.0826530742184825e-13 283 0 284 0 285 0 286 -2.2933743040800682e-13
		 287 2.345187655423669e-13 288 2.3957494373996593e-13 289 0 290 -4.9817799894114476e-13
		 291 2.5342427423582137e-13 292 0 293 -2.6092127442578857e-13 294 -2.6394742075214708e-13
		 295 0 296 0 297 0 298 -2.6977903132157792e-13 299 2.6942334611770635e-13 300 2.6828122969101567e-13
		 301 -2.6634559260726892e-13 302 0 303 0 304 0 305 2.5104461122750642e-13 306 2.4554426905078186e-13
		 307 2.394989587109385e-13 308 -2.3298454685177839e-13 309 0 310 -2.1886679864146379e-13
		 311 0 312 0 313 -1.9614037222568739e-13 314 -1.8843729235485459e-13 315 1.807720665910604e-13
		 316 -1.7319503192321147e-13 317 0 318 0 319 0 320 1.4452273274767231e-13 321 0 322 1.3151239515915037e-13
		 323 0 324 1.1951832047650491e-13 325 1.139100594186723e-13 326 1.085213878878412e-13
		 327 1.0332936036859698e-13 328 9.8351730549345325e-14 329 -9.3599256057316268e-14
		 330 0 331 0 332 8.0722340293467431e-14 333 7.6881618852668691e-14 334 0 335 -6.9837543362019278e-14
		 336 0 337 -6.3582297370072714e-14 338 -6.0725785008142943e-14 339 -5.803662302095113e-14
		 340 5.5504956252268725e-14 341 0 342 -5.0876229292875173e-14 343 -4.8761204636975422e-14
		 344 0 345 -4.4888232556563969e-14 346 0 347 0 348 0 349 3.836660655882958e-14 350 0
		 351 0 352 -3.4351685637809825e-14 353 0 354 3.2015762212673074e-14 355 -3.0937256960840042e-14
		 356 -2.9913410429729927e-14 357 0 358 5.6032618382438881e-14 359 0 360 -2.6299986053334903e-14
		 361 5.1005772699796173e-14 362 0 363 -2.4018948320062479e-14 364 0 365 -4.5336122801297704e-14
		 366 2.2037801195615834e-14 367 0 368 -2.0859309006761968e-14 369 -2.0308069759649614e-14
		 370 0 371 0 372 0 373 0 374 3.5760262973224503e-14 375 0 376 1.7041630643106944e-14
		 377 0 378 -1.6267727370621118e-14 379 -1.5903011726008186e-14 380 0 381 -1.5214485153917964e-14
		 382 -2.9778744710891653e-14 383 0 384 -1.42744724078386e-14 385 0 386 0 387 0 388 0
		 389 1.2945749121203022e-14 390 1.271448608262638e-14 391 1.2492663919304475e-14 392 -1.2279516381964273e-14
		 393 1.2074348860110592e-14 394 0 395 1.1685487466791496e-14 396 -1.1500696867537799e-14
		 397 0 398 0 399 1.0979272775588031e-14 400 1.0815116352707876e-14 401 0 402 1.04992292493874e-14
		 403 0 404 -1.0197999687765651e-14 405 1.0052253570176789e-14 406 0 407 0 408 -9.6319620942712898e-15
		 409 9.496913752367243e-15 410 0 411 -9.2334695157536081e-15 412 0 413 8.9780488575716095e-15
		 414 8.853073446691546e-15 415 0 416 0 417 0 418 -8.3693749513779385e-15 419 0 420 -8.1362996634796001e-15
		 421 0.00064267150518173665 422 0.0022806701613241999 423 0.0045253074057957279 424 0.0070478559888127778
		 425 0.00957719290038349 426 0.011897052410487182 427 0.013843266782454193 428 0.015300532673726747
		 429 0.016198620431664951 430 0.016508737025619447 431 0.016239226780575093 432 0.015430660702022692
		 433 0.014151620093316145 434 0.01249305814910741 435 0.010563785646044172 436 0.0084847457834428697
		 437 0.0063841606300054652 438 0.0043925727049832115 439 0.0026376008763424569 440 0.0012393761505639959
		 441 0.00030546172705279214 442 -7.4794616871400263e-05 443 0.00016445701685383261
		 444 0.0010978692475655716 445 0.0027959533976143255 446 0.0053201279056320711 447 0.0087265288237488945
		 448 0.013041473059593432 449 0.018267228300494619 450 0.024382363163801594 451 0.03134282653041217
		 452 0.039083065061132877 453 0.047519812983512912 454 0.056552676684425728 455 0.066067937038534072
		 456 0.075941177971009188 457 0.086040137920339169 458 0.096226782048985715 459 0.1063621516952636
		 460 0.11630592281311326 461 0.12592019967281795 462 0.13507101325729715 463 0.14362931129096493
		 464 0.15147413748317778 465 0.15849105966538785 466 0.16457429305754506 467 0.16962628816057104
		 468 0.17355908042100332 469 0.17629230471149562 470 0.17775367948471765 471 0.1778780257323177
		 472 0.17660616240265983 473 0.17388501989709076 474 0.16966604171897112 475 0.16415402520683589
		 476 0.15825263770621623 477 0.15215251714088709 478 0.14594338196693413 479 0.13969457323878637
		 480 0.13346158468278416 481 0.12728910894267317 482 0.12121345001499276 483 0.11526379229921647
		 484 0.10946308102494573 485 0.10382899795495201 486 0.098374102195096791 487 0.093106610583215788
		 488 0.088030716265887918 489 0.083147041423421483 490 0.078453014201458879 491 0.073943288364202608
		 492 0.069610176573375565 493 0.065444110260881649 494 0.061434129326787996 495 0.057568400708281134
		 496 0.053834760105879634 497 0.050221266010047921 498 0.046716730077232517 499 0.043311330139454395
		 500 0.039996952868521653;
	setAttr ".ktv[500:749]" 501 0.036767628885435916 502 0.033620153045375231 503 0.030553783246227945
		 504 0.027570696602902445 505 0.024675866744293003 506 0.021876915425950751 507 0.019183853781342283
		 508 0.016608686183073429 509 0.014165168398160255 510 0.011868010849879033 511 0.0097326014484169429
		 512 0.0077744093826157389 513 0.0060084612791358591 514 0.0044489159739651788 515 0.0031085003510475011
		 516 0.0019949657462107243 517 0.001119768245991707 518 0.00049422177560538687 519 0.00012211343449893087
		 520 0 521 0 522 0 523 0 524 0 525 0 526 8.2320836616349205e-16 527 8.2573912309988942e-16
		 528 0 529 0 530 0 531 1.6735566568049157e-15 532 1.6795121509952172e-15 533 0 534 -1.6919199236838744e-15
		 535 0 536 -1.7049726639967572e-15 537 -1.7117366675890351e-15 538 1.7186581463325978e-15
		 539 0 540 0 541 1.7403719463849559e-15 542 0 543 0 544 0 545 -1.7716110337161883e-15
		 546 0 547 0 548 0 549 0 550 -1.8146909744010334e-15 551 0 552 0 553 0 554 1.852868816510452e-15
		 555 3.7259958110963803e-15 556 -1.8733805879604948e-15 557 -3.7680556535494488e-15
		 558 1.8949512476601833e-15 559 0 560 -1.9176766348939063e-15 561 0 562 1.9416642474277688e-15
		 563 0 564 -1.9670345420612725e-15 565 3.9605602843290183e-15 566 3.9878459070554625e-15
		 567 -4.0159645790888292e-15 568 4.0449597969674753e-15 569 0 570 -4.1057541369551114e-15
		 571 0 572 4.1706122376427122e-15 573 4.2046984181474274e-15 574 0 575 4.2764836127282721e-15
		 576 0 577 0 578 0 579 0 580 0 581 0 582 -4.5733261114771172e-15 583 0 584 -4.6741282194940211e-15
		 585 0 586 4.7836910536165376e-15 587 0 588 -4.9031669233209468e-15 589 0 590 -5.0338985775225274e-15
		 591 0 592 -5.1774719506748513e-15 593 -5.2546493356531299e-15 594 0 595 -5.4211284962651618e-15
		 596 -5.5110464742668462e-15 597 -5.6058790689076821e-15 598 0 599 0 600 0 601 0 602 0
		 603 0 604 -6.4461821177331157e-15 605 -6.5987119917423744e-15 606 0 607 0 608 0 609 0
		 610 -7.543182525371641e-15 611 0 612 0 613 8.3104492228254971e-15 614 1.7225633613008887e-14
		 615 0 616 0 617 0 618 1.0153591858131024e-14 619 -1.064916948744192e-14 620 1.1204412409801489e-14
		 621 1.1830431508688367e-14 622 -1.2541264126679789e-14 623 1.3354904978210639e-14
		 624 -1.4294805834259908e-14 625 -3.0784226080335378e-14 626 0 627 0 628 2.0143044675494775e-14
		 629 0 630 0 631 -2.9559620696226169e-14 632 3.5133298190902026e-14 633 0 634 -5.679266885340711e-14
		 635 0 636 0 637 1.0461969444777642e-12 638 0 639 -7.6333312355124402e-14 640 0 641 2.5444437451708134e-14
		 642 2.5444437451708134e-14 643 5.0888874903416268e-14 644 -2.5444437451708134e-14
		 645 -2.5444437451708134e-14 646 0 647 0 648 0 649 0 650 0 651 0 652 0 653 0 654 0
		 655 0 656 0 657 0 658 0 659 0 660 0 661 0 662 0 663 0 664 0 665 0 666 0 667 0 668 0
		 669 0 670 0 671 0 672 0 673 0 674 0 675 0 676 0 677 0 678 0 679 0 680 0 681 0 682 0
		 683 0 684 0 685 0 686 0 687 0 688 0 689 0 690 0 691 0 692 0 693 0 694 0 695 0 696 0
		 697 0 698 0 699 0 700 0 701 0 702 0 703 0 704 0 705 0 706 0 707 0 708 0 709 0 710 0
		 711 0 712 0 713 0 714 0 715 0 716 0 717 0 718 0 719 0 720 0 721 0 722 0 723 0 724 0
		 725 0 726 0 727 0 728 0 729 0 730 0 731 0 732 0 733 0 734 0 735 0 736 0 737 0 738 0
		 739 0 740 0 741 0 742 0 743 0 744 0 745 0 746 0 747 0 748 0 749 0 750 0;
	setAttr ".ktv[750:799]" 751 0 752 0 753 0 754 0 755 0 756 0 757 0 758 0 759 0
		 760 0 761 0 762 0 763 0 764 0 765 0 766 0 767 0 768 0 769 0 770 0 771 0 772 0 773 0
		 774 0 775 0 776 0 777 0 778 0 779 0 780 0 781 0 782 0 783 0 784 0 785 0 786 0 787 0
		 788 0 789 0 790 0 791 0 792 0 793 0 794 0 795 0 796 0 797 0 798 0 799 0 800 0;
createNode timeEditorAnimSource -n "anim_camera11sampler_AnimSource";
	rename -uid "E685BB31-47BA-D41C-7DD8-EB881877DAEE";
	setAttr -s 6 ".an";
	setAttr ".an[0].asv" 865.83433568636724;
	setAttr ".an[0].at" -type "string" "camera11_sampler.translateX";
	setAttr ".an[1].asv" 690.35481689566132;
	setAttr ".an[1].at" -type "string" "camera11_sampler.translateY";
	setAttr ".an[2].asv" -3301.2498615624795;
	setAttr ".an[2].at" -type "string" "camera11_sampler.translateZ";
	setAttr ".an[3].asv" -0.57517188317260581;
	setAttr ".an[3].at" -type "string" "camera11_sampler.rotateX";
	setAttr ".an[4].asv" -1.4137167034932447;
	setAttr ".an[4].at" -type "string" "camera11_sampler.rotateY";
	setAttr ".an[5].asv" 3.5485245852798815e-16;
	setAttr ".an[5].at" -type "string" "camera11_sampler.rotateZ";
	setAttr ".s" 1;
	setAttr ".d" 799;
	setAttr ".ics" 1;
	setAttr ".icd" 799;
	setAttr ".iad" 799;
createNode timeEditorClip -n "anim_camera11sampler";
	rename -uid "5185D546-4943-EBE5-EB0F-BF9AD76D2D8A";
	setAttr ".clp[0].cid" 2;
	setAttr ".clp[0].cn" -type "string" "anim_camera11sampler";
	setAttr ".clp[0].cst" 1;
	setAttr ".clp[0].cpd" 800;
	setAttr ".clp[0].cscl" 1;
	setAttr ".clp[0].tw" yes;
	setAttr ".clp[0].twt" 0;
	setAttr ".clp[0].clam" 2;
	setAttr ".clp[0].cc" -type "float3" 1 0.56840003 0.36974999 ;
	setAttr ".clp[0].clt" -1960750858174.9099;
	setAttr ".ofm" 0;
	setAttr ".let" 343;
	setAttr ".grc" yes;
	setAttr ".gc" -type "float3" 1 1 1 ;
	setAttr ".gss" 1;
	setAttr ".gtc" -type "float3" 0 0 1 ;
	setAttr ".gec" -type "float3" 1 0 0 ;
createNode timeEditorClipEvaluator -n "anim_camera11sampler_ClipEvaluator";
	rename -uid "97C4C64B-4C5D-4112-9B30-919F529B8B98";
	setAttr -s 6 ".a";
	setAttr ".a[0].av" 865.83433568636724;
	setAttr ".a[0].as" -1;
	setAttr ".a[0].src" -type "string" "";
	setAttr ".a[1].av" 690.35481689566132;
	setAttr ".a[1].as" -1;
	setAttr ".a[1].src" -type "string" "";
	setAttr ".a[2].av" -3301.2498615624795;
	setAttr ".a[2].as" -1;
	setAttr ".a[2].src" -type "string" "";
	setAttr ".a[3].av" -0.57517188317260581;
	setAttr ".a[3].as" -1;
	setAttr ".a[3].src" -type "string" "";
	setAttr ".a[4].av" -1.4137167034932447;
	setAttr ".a[4].as" -1;
	setAttr ".a[4].src" -type "string" "";
	setAttr ".a[5].av" 3.5485245852798815e-16;
	setAttr ".a[5].as" -1;
	setAttr ".a[5].src" -type "string" "";
	setAttr ".o" -type "animationTRS" ;
	setAttr -s 6 ".tas";
createNode animCurveTU -n "anim_camera11sampler_timeWarp";
	rename -uid "21B7D971-4261-63A7-3082-E3ADCB90B5ED";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 61 26.592334494773468 167 193.45348283320948
		 206 216.44740444410667 237 236.53335212649736 265 290.31354263075724 293 318.40354833412437
		 326 360.92466755593335 361 392.92492289101807 380 425.27606292757531 480 594.7101869120163
		 739 621.01440721145707;
	setAttr -s 13 ".kit[0:12]"  2 18 18 1 1 1 18 18 
		18 18 1 18 3;
	setAttr -s 13 ".kot[0:12]"  10 18 18 1 1 1 18 18 
		18 18 1 18 3;
	setAttr -s 13 ".ktl[11:12]" no yes;
	setAttr -s 13 ".kix[3:12]"  3.5856202052092643 2.0406679273850892 1.0296833312449358 
		0.93333333333333357 0.93333333333333357 1.0999999999999996 1.1666666666666661 1.0333333333333332 
		3.3333333333333339 8.6333333333333329;
	setAttr -s 13 ".kiy[3:12]"  120.32152660425326 29.636934737241276 27.419901511985028 
		40.935098103813502 32.411663900080846 36.164784711433711 41.709237740879047 35.402808187589478 
		30.468208841051094 0;
	setAttr -s 13 ".kox[3:12]"  1.115008010715246 1.5534800897861427 1.6227819227179323 
		0.93333333333333357 1.0999999999999996 1.1666666666666661 0.63333333333333286 5.8666666666666654 
		8.6333333333333329 8.6333333333333329;
	setAttr -s 13 ".koy[3:12]"  37.415971415687345 22.561432234221225 43.213788675841464 
		40.935098103813502 38.19946102509526 38.356589845459993 22.642157630762906 200.99658841986226 
		78.912660898322315 0;
	setAttr ".pre" 1;
	setAttr ".pst" 1;
createNode animCurveTL -n "camera12_translateX";
	rename -uid "25B77907-44B6-A70B-B5B3-B6B771122032";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 -5304.6289999999999 130 -3927.3879999999999
		 240 -2462.2516280089403 360 -1408.7434016344052 378 -676.41544570114661 381 -538.17748535648877
		 384 -375.30884832444423 386 -251.49439848067007 388 -117.21170686397033 389 -47.318070171986776
		 390 23.579834756795492 393 235.67125724852207 395 370.70710389097218 398 556.87122292436379
		 401 715.78358486995376 403 800.65096153917227 406 896.08025522860498 410 973.91609726173067
		 415 1016.738208668268 419 1024.5942281101131 442 971.05230489548046 760 525.74153931908199;
	setAttr -s 22 ".kit[0:21]"  9 9 9 9 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 1 18;
	setAttr -s 22 ".kot[0:21]"  9 9 9 9 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18;
	setAttr -s 22 ".kix[20:21]"  0.13333333333333286 1;
	setAttr -s 22 ".kiy[20:21]"  -7.220505360471634 0;
	setAttr -s 22 ".kox[20:21]"  10.666666666666666 1;
	setAttr -s 22 ".koy[20:21]"  -577.64042883772356 0;
createNode animCurveTL -n "camera12_translateY";
	rename -uid "067B38FC-45B5-3E33-0079-6E849103A8E8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1206.925 130 1206.925 240 1886.925 360 2087.4161550671456
		 379 2131.5021365974212 384 2185.1516338186066 398 2528.7786648800443 408 2737.1074865710048
		 423 2914.6159566821148 442 2963.518446264572 760 2455.9506344092733;
	setAttr -s 11 ".kit[4:10]"  2 2 2 2 2 1 1;
	setAttr -s 11 ".kot[4:10]"  18 18 18 18 18 1 1;
	setAttr -s 11 ".kix[9:10]"  0.13333333333333286 1;
	setAttr -s 11 ".kiy[9:10]"  -24.710616430149457 0;
	setAttr -s 11 ".kox[9:10]"  10.666666666666666 1;
	setAttr -s 11 ".koy[9:10]"  -1976.8493144120071 0;
createNode animCurveTL -n "camera12_translateZ";
	rename -uid "A8AC89CC-49BF-3A0B-569D-9EAB61E58103";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 -2583.9099999999999 130 -1891.1310000000001
		 240 277.45883926851354 360 1169.7072472617945 372 1635.2793264103832 381 2061.6574415566374
		 386 2267.6292818260599 391 2358.5040230493664 397 2278.6137680908291 402 2087.6961083141159
		 416 1328.8651812450564 423 1035.028873964357 430 833.49732005889837 435 740.53242908863194
		 442 673.30029495149677 760 96.50872764313668;
	setAttr -s 16 ".kit[0:15]"  9 9 9 9 2 2 2 2 
		2 2 2 2 2 2 1 1;
	setAttr -s 16 ".kot[0:15]"  9 9 9 9 18 18 18 18 
		18 18 18 18 18 18 1 1;
	setAttr -s 16 ".kix[14:15]"  0.033333333333333215 1;
	setAttr -s 16 ".kiy[14:15]"  -1.9786029327746064 0;
	setAttr -s 16 ".kox[14:15]"  10.666666666666666 0.018372717364723387;
	setAttr -s 16 ".koy[14:15]"  -633.1529384878238 -0.99983120738284426;
createNode animCurveTA -n "camera12_rotateX";
	rename -uid "AFAFED0A-4FDA-114B-F8FE-D99C81150848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -38.000000000000014 130 -38.000000000000014
		 240 -58.999995461736376 360 -44.322328349475654 373 -43.78317021647991 384 -41.582446232765633
		 389 -41.946495004706335 420 -60.458683266817282 433 -65.860521018084242 444 -67.542924945601143
		 760 -76.031985817045481;
	setAttr -s 11 ".kit[4:10]"  2 2 2 2 2 2 1;
	setAttr -s 11 ".kot[4:10]"  18 18 18 18 18 18 18;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTA -n "camera12_rotateY";
	rename -uid "1125BD6F-4441-6111-E930-0E9F9233A8FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 -89.999999999999986 130 -89.999999999999986
		 240 -86.000000778037389 360 -51.877936333988742 368 -40.383186254508594 372 -33.353561586068288
		 378 -22.248196857614086 382 -14.71445465421499 386 -7.1603961713592836 389 -1.5919815169716176
		 390 0.22102729601475526 391 2.0050632528295629 393 5.4758025203801362 399 15.176210179931269
		 405 23.8476364022399 412 32.502015169638511 424 44.760139877325649 435 52.202680353438261
		 488 63.004359325372164 760 79.322024998431175;
	setAttr -s 20 ".kit[0:19]"  9 9 9 9 2 2 2 2 
		2 2 2 2 2 2 2 2 2 2 2 1;
	setAttr -s 20 ".kot[0:19]"  9 9 9 9 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[19]"  1;
	setAttr -s 20 ".kiy[19]"  0;
createNode animCurveTA -n "camera12_rotateZ";
	rename -uid "A4B4D832-4318-D7C5-DDE1-6FB1305C3E63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 130 0 240 0 360 0.022571698996781953
		 361 0.032892000090205174 362 0.045098225832676871 363 0.058935501309066066 368 0.13748589417115706
		 370 0.1625677952000352 372 0.17655817919501632 373 0.17787792150134066 374 0.17483055792286836
		 381 0.097945642883125836 384 0.068678861944790212 387 0.044645218547212075 388 0.037450549317476989
		 390 0.024035241130618907 391 0.017925913637610622 392 0.012399227710220133 393 0.0076538619394810898
		 394 0.0039018207079379403 395 0.0013304019505582922 396 0.00010025465651833909 397 0
		 403 -1.6898320567131407e-15 492 0 760 0;
	setAttr -s 27 ".kit[0:26]"  9 9 9 9 9 9 2 2 
		2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 
		2 1;
	setAttr -s 27 ".kot[0:26]"  9 9 9 9 9 9 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 27 ".kix[26]"  1;
	setAttr -s 27 ".kiy[26]"  0;
createNode timeEditorClip -n "Baked";
	rename -uid "35D8EC62-49CD-17F6-DED4-538C78C2B337";
	setAttr ".clp[0].cid" 3;
	setAttr ".clp[0].cn" -type "string" "Baked";
	setAttr ".clp[0].cst" 1;
	setAttr ".clp[0].cpd" 800;
	setAttr ".clp[0].cscl" 1;
	setAttr ".clp[0].cc" -type "float3" 1 0.39199999 0.255 ;
	setAttr ".ofm" 0;
	setAttr ".let" 343;
	setAttr ".grc" yes;
	setAttr ".gc" -type "float3" 1 1 1 ;
	setAttr ".gss" 1;
	setAttr ".gtc" -type "float3" 0 0 1 ;
	setAttr ".gec" -type "float3" 1 0 0 ;
createNode timeEditorAnimSource -n "Baked_AnimSource";
	rename -uid "F9E7F365-41EB-956E-8D0A-4E9D3A65350C";
	setAttr -s 6 ".an";
	setAttr ".an[0].asv" -486.90283555415039;
	setAttr ".an[0].at" -type "string" "camera11_sampler.translateX";
	setAttr ".an[1].asv" 2157.9592877851828;
	setAttr ".an[1].at" -type "string" "camera11_sampler.translateY";
	setAttr ".an[2].asv" 2108.077489975336;
	setAttr ".an[2].at" -type "string" "camera11_sampler.translateZ";
	setAttr ".an[3].asv" -0.7298504208765132;
	setAttr ".an[3].at" -type "string" "camera11_sampler.rotateX";
	setAttr ".an[4].asv" -0.25681568135145527;
	setAttr ".an[4].at" -type "string" "camera11_sampler.rotateY";
	setAttr ".an[5].asv" 0.0015278120976944659;
	setAttr ".an[5].at" -type "string" "camera11_sampler.rotateZ";
	setAttr ".s" 1;
	setAttr ".d" 800;
	setAttr ".ics" 1;
	setAttr ".icd" 800;
	setAttr ".iad" 800;
createNode animCurveTL -n "camera11_sampler_translateX_Baked";
	rename -uid "00F66E0A-4C32-11CE-63F8-78BA5A0500DD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 801 ".ktv";
	setAttr ".ktv[0:249]"  1 865.83433568636724 2 865.83433568636724 3 865.83422930446363
		 4 865.83254636923982 5 865.82485864191574 6 865.80315466553691 7 865.75550231735087
		 8 865.66600282991499 9 865.51514655118956 10 865.2807072192619 11 864.9393233269559
		 12 864.46893228331032 13 863.85226607257164 14 863.08161094185334 15 862.1650589518996
		 16 861.13455981820391 17 860.05600365770908 18 859.03942788775612 19 858.03155559664424
		 20 856.94123837715256 21 855.76659863030648 22 854.50583502640472 23 853.15721155324081
		 24 851.71932226087426 25 850.19157148857482 26 848.57265182033245 27 846.8611830711593
		 28 845.05630321799083 29 843.15820677280442 30 841.16573418773783 31 839.07795351989455
		 32 836.89573037665195 33 834.61796252638464 34 832.24437463658865 35 829.77572906140699
		 36 827.21054935893221 37 824.55020600882654 38 821.79302556300149 39 818.94014121901932
		 40 815.98970825052766 41 812.9425808456125 42 809.79638057848751 43 806.55127565226553
		 44 803.20481610333468 45 799.75500638530252 46 796.2001310401248 47 792.53593630723117
		 48 788.7586248223239 49 784.86383151274947 50 780.8457553814718 51 776.69681983050964
		 52 772.40897558519805 53 767.97271642554279 54 763.37684514705882 55 758.60833330484559
		 56 753.65215585708074 57 748.49110328483221 58 743.10557498902847 59 737.4733331437335
		 60 731.56924981445968 61 725.3649979088965 62 718.82873636199236 63 711.95327843571442
		 64 704.73442069833948 65 697.14046674894905 66 689.13762442583538 67 680.68880812121654
		 68 671.75420038817401 69 662.29244963926953 70 652.25971544727076 71 641.60829211064572
		 72 630.28938464919906 73 618.25172231862234 74 605.44001922323775 75 591.79921600509908
		 76 577.26928308213576 77 561.79000691769431 78 545.2975935327072 79 527.78421286470723
		 80 509.75734064242869 81 491.42030664395202 82 472.76077417453257 83 453.77720891253813
		 84 434.46790491736158 85 414.83129361701083 86 394.86561621564073 87 374.56923819098751
		 88 353.94049017791701 89 332.97763715110904 90 311.67910501313941 91 290.04324957970925
		 92 268.06847157833437 93 245.75332601221504 94 223.09634897929314 95 200.09614448677019
		 96 176.75148925272808 97 153.06125216748433 98 129.02433118342589 99 104.63984257190157
		 100 79.90705951980388 101 54.825377730584286 102 29.394325108807084 103 3.6136773831167224
		 104 -22.516590333091848 105 -48.996300270857105 106 -75.825107564680962 107 -103.00237428101696
		 108 -130.52720281687843 109 -158.3984378325413 110 -186.61466425665506 111 -215.17421002203753
		 112 -244.07504331888106 113 -273.31482026900915 114 -302.89087979012652 115 -332.80025021049056
		 116 -363.03960993391166 117 -393.60523551963149 118 -424.49304460290972 119 -455.69855856239877
		 120 -487.21696785582316 121 -519.04301912366179 122 -551.17102735267758 123 -583.59488396584993
		 124 -616.30807195152545 125 -649.30144782847765 126 -682.63114797090122 127 -716.40883254383425
		 128 -750.62514800641611 129 -785.26271054692472 130 -820.30367840099996 131 -855.72972558533411
		 132 -891.52203908901708 133 -927.66132316713674 134 -964.12789227575831 135 -1000.9016064987737
		 136 -1037.9618788066541 137 -1075.2877564633566 138 -1112.8579154963459 139 -1150.6505982297697
		 140 -1188.643736081061 141 -1226.8149251649872 142 -1265.1413848789821 143 -1303.6000801767452
		 144 -1342.1676514936244 145 -1380.8204407659382 146 -1419.5345856824538 147 -1458.2858874364806
		 148 -1497.0500175344009 149 -1535.8023244354902 150 -1574.5180602535763 151 -1613.1721916131619
		 152 -1651.7396194527844 153 -1690.1949886558959 154 -1728.512908934699 155 -1766.667789808361
		 156 -1804.6339848550913 157 -1842.3857572496759 158 -1879.8972644853486 159 -1917.1426700222416
		 160 -1954.0960544020809 161 -1990.7314707110963 162 -2027.0230190846169 163 -2062.9447720496742
		 164 -2098.4372990133938 165 -2134.0779206512502 166 -2170.5832686680455 167 -2207.8103479338711
		 168 -2245.5676955997733 169 -2283.3688815990176 170 -2320.6726515805444 171 -2357.2359530316853
		 172 -2392.8486229821792 173 -2427.3375489382088 174 -2460.569920376885 175 -2492.4550739794154
		 176 -2522.9447303436746 177 -2552.0265809651451 178 -2579.724671438631 179 -2606.0979049574262
		 180 -2631.2264421107611 181 -2655.203470142791 182 -2678.1447080743624 183 -2700.158458704565
		 184 -2721.3665603097706 185 -2741.8772509953405 186 -2761.8027313383668 187 -2781.2381789229876
		 188 -2800.2804000248343 189 -2819.0052446043751 190 -2837.4925460314457 191 -2855.7988654885289
		 192 -2873.9865829084101 193 -2892.0971135084887 194 -2910.1747758457418 195 -2928.2515935161168
		 196 -2946.35371771377 197 -2964.5077349182616 198 -2982.7255191266395 199 -3001.0277635928323
		 200 -3019.4171915609822 201 -3037.9075771016223 202 -3056.4967437209075 203 -3075.19101198717
		 204 -3093.9861762657679 205 -3112.8812081693859 206 -3131.8713419875917 207 -3150.9492759702266
		 208 -3170.0689640271912 209 -3189.1881076894751 210 -3208.3180272728428 211 -3227.4637401996738
		 212 -3246.6404647206182 213 -3265.8563721298246 214 -3285.1303872791159 215 -3304.4750500698515
		 216 -3323.9123109477105 217 -3343.4602488149153 218 -3363.1417224735173 219 -3382.9812099004525
		 220 -3402.9986447403498 221 -3423.2219896979323 222 -3443.6642434807518 223 -3464.3465406509267
		 224 -3485.2720379213647 225 -3506.4366275434818 226 -3527.8265186805629 227 -3549.4012482202779
		 228 -3571.1063669075766 229 -3592.868648876396 230 -3614.5917202691035 231 -3636.1592480482391
		 232 -3657.4457708624527 233 -3678.3166850463494 234 -3698.6320318548219 235 -3718.2283674545333
		 236 -3737.534771228432 237 -3757.0348270990521 238 -3776.7653017752959 239 -3797.2777503095385
		 240 -3819.2287183939825 241 -3842.7186138623861 242 -3867.855437206425 243 -3894.7546005450959
		 244 -3923.5381952142197 245 -3954.334444979153 246 -3987.2738044881471 247 -4022.4857178687753
		 248 -4060.09158018055 249 -4100.1948196818221 250 -4142.8648868539785;
	setAttr ".ktv[250:499]" 251 -4188.1161436825005 252 -4235.8788489213175 253 -4285.9624146794886
		 254 -4338.0143402439953 255 -4391.4859995115921 256 -4445.6139713325065 257 -4499.4459157918955
		 258 -4551.9166070921083 259 -4601.9727383733207 260 -4648.7142535801404 261 -4691.5038581145782
		 262 -4730.0087690045902 263 -4764.1791668355118 264 -4794.1805765003155 265 -4820.3154850181654
		 266 -4842.9543506361151 267 -4863.1173096255388 268 -4881.6611000472876 269 -4898.7270331312293
		 270 -4914.4475418162474 271 -4928.9467174767788 272 -4942.3406763585062 273 -4954.7376297818728
		 274 -4966.2380679573662 275 -4976.9349782942691 276 -4986.9140991869554 277 -4996.2541863110528
		 278 -5005.0272451208866 279 -5013.2987313039912 280 -5021.127696597151 281 -5028.5668864004656
		 282 -5035.6627468569959 283 -5042.4553503776469 284 -5048.97806478245 285 -5055.257715677305
		 286 -5061.3141694499182 287 -5067.1598389150804 288 -5072.7991302446726 289 -5078.2278004677501
		 290 -5083.4321695500294 291 -5088.3882019187395 292 -5093.0604408767995 293 -5097.4007656585327
		 294 -5101.3469526697945 295 -5104.7821131746769 296 -5107.5983992581132 297 -5109.736988843646
		 298 -5111.1591668529427 299 -5111.573958377403 300 -5110.0441840342764 301 -5106.044925393624
		 302 -5099.6473771644005 303 -5090.8647501374953 304 -5079.7327498366894 305 -5066.2981205631413
		 306 -5050.6254660056402 307 -5032.7964162741664 308 -5012.8996097451882 309 -4991.0409083254935
		 310 -4967.337438999898 311 -4941.9108367544677 312 -4914.8980350009006 313 -4886.4398223996232
		 314 -4856.6815880321856 315 -4825.7788483135346 316 -4793.8853900711829 317 -4761.1589689864159
		 318 -4727.7615654970077 319 -4693.8510381993428 320 -4659.5847052575 321 -4625.1204082872209
		 322 -4590.611935206407 323 -4556.2061028076505 324 -4522.0472299325511 325 -4488.2743475881471
		 326 -4455.0198212909727 327 -4422.4089075834454 328 -4390.6182042353239 329 -4359.7375751911495
		 330 -4329.7499236659569 331 -4300.6300656385383 332 -4272.3460049681398 333 -4244.8603538683838
		 334 -4218.131472563924 335 -4192.1141709551885 336 -4166.76062269453 337 -4142.021080685563
		 338 -4117.8445943827401 339 -4094.1795897652519 340 -4070.9748855108792 341 -4048.1815802512606
		 342 -4025.7504000646095 343 -4003.6334133191308 344 -3981.7848640883444 345 -3960.1620872895619
		 346 -3938.727565009769 347 -3917.4458041068388 348 -3896.2854109775117 349 -3875.2201890697938
		 350 -3854.2298958629112 351 -3833.3016883430805 352 -3812.4301360936706 353 -3791.6182949976892
		 354 -3770.8753652917012 355 -3750.1744632665864 356 -3729.4513959651158 357 -3708.629034240817
		 358 -3687.6243603618686 359 -3666.344519400368 360 -3644.6838626201279 361 -3622.5205111369878
		 362 -3599.712238284651 363 -3574.8064766440289 364 -3546.1518791968251 365 -3513.2586791941389
		 366 -3475.6811667028705 367 -3433.0832815328449 368 -3385.3500055565046 369 -3332.6558351683948
		 370 -3275.4535521319076 371 -3214.3898314247908 372 -3150.1913659876318 373 -3083.6107507766865
		 374 -3014.0444572343849 375 -2940.5181578915594 376 -2865.1592742231223 377 -2789.4292926696853
		 378 -2714.18908387074 379 -2640.4591057509151 380 -2568.9653620162399 381 -2500.1612223154966
		 382 -2431.9900466549007 383 -2362.4255928319558 384 -2291.8639751581291 385 -2220.7285761944563
		 386 -2149.459300702511 387 -2078.5128315747575 388 -2008.3789432774588 389 -1939.5654377681644
		 390 -1872.5831525682647 391 -1807.942412275896 392 -1746.1776010955766 393 -1687.8162193978831
		 394 -1633.3700870500186 395 -1583.4044208992239 396 -1538.1699270249976 397 -1494.7681421961395
		 398 -1451.5965141236588 399 -1408.7434016344052 400 -1366.2008687791567 401 -1323.9622195132397
		 402 -1282.0151711753556 403 -1240.3488838592377 404 -1198.947923011207 405 -1157.7980032244402
		 406 -1116.8821248486406 407 -1076.1841045963026 408 -1035.6904973649839 409 -995.38985737591292
		 410 -955.28061911404973 411 -915.37544725701218 412 -875.71500705705 413 -836.39421337154818
		 414 -797.59593325388994 415 -758.54701695470033 416 -718.26876221547593 417 -676.41544570114661
		 418 -632.65632729209096 419 -586.6757460687553 420 -538.17748535648877 421 -486.90283555415039
		 422 -432.65141003443824 423 -375.30884832444423 424 -314.87611523150525 425 -251.49439848067007
		 426 -185.45853710477627 427 -117.21170686397033 428 -47.318070171986776 429 23.579834756795492
		 430 94.809597183086822 431 165.71077616002506 432 235.67125724852207 433 304.15439185454437
		 434 370.70710389097218 435 434.96485422064086 436 496.89145688053998 437 556.87122292436379
		 438 613.70123206100834 439 666.8018202148354 440 715.78358486995376 441 760.42200320658765
		 442 800.65096153917227 443 836.54224940205188 444 868.27014934259569 445 896.08025522860498
		 446 920.25226367956725 447 941.08673275823469 448 958.87819630115791 449 973.91609726173067
		 450 986.47381770576942 451 996.8068887721912 452 1005.1517974333361 453 1011.728171734367
		 454 1016.738208668268 455 1020.3677614676104 456 1022.7872492278863 457 1024.153242508055
		 458 1024.5942281101131 459 1024.2851310919705 460 1023.3011611336448 461 1021.7654177749807
		 462 1019.776744300982 463 1017.4235807038405 464 1014.7861577196497 465 1011.9359274911175
		 466 1008.9371355425984 467 1005.8462342930623 468 1002.713168514712 469 999.58192148973092
		 470 996.49064179257266 471 993.47228441905997 472 990.5550735797807 473 987.76291617462709
		 474 985.11576698627789 475 982.6300224847555 476 980.31919201132064 477 978.1935735870286
		 478 976.2610933585845 479 974.52746082278372 480 972.99633449356975 481 971.66949762653405
		 482 970.44403320394565 483 969.21649969568364 484 967.98712366752125 485 966.75629438097462
		 486 965.52430673750837 487 964.29128204446408 488 963.05756177041917 489 961.8234832843176
		 490 960.58917032084321 491 959.35486349635994 492 958.12088324146634 493 956.88746577652068
		 494 955.65471994512041 495 954.42292487628663 496 953.19236552297434 497 951.96317544571127
		 498 950.73552070130813 499 949.50965941443735 500 948.28583488774962;
	setAttr ".ktv[500:749]" 501 947.06413606582396 502 945.84475280831055 503 944.62791661372773
		 504 943.41383431004022 505 942.2025885897483 506 940.99435558730272 507 939.78933128798542
		 508 938.58769061948681 509 937.38949211022418 510 936.19492266128691 511 935.00419660543275
		 512 933.81751272091662 513 932.63496112896985 514 931.45663940963254 515 930.28266795289619
		 516 929.11316561558226 517 927.94820118803875 518 926.78788840707273 519 925.63240687056566
		 520 924.48192895817454 521 923.33660270772668 522 922.19647335975003 523 921.06163638505564
		 524 919.93219560974353 525 918.80825426742786 526 917.68989134613548 527 916.57717494989117
		 528 915.47021707939348 529 914.36912460927215 530 913.27400431858973 531 912.18492212634226
		 532 911.10193171438323 533 910.0251256357659 534 908.9545888366863 535 907.89040921166668
		 536 906.83264110448647 537 905.78132692794077 538 904.73655289394401 539 903.69840163194829
		 540 902.66695139975388 541 901.64227646194684 542 900.62441046719732 543 899.61340107614694
		 544 898.60929816776377 545 897.61215112299419 546 896.62200518096699 547 895.63890064500617
		 548 894.66287224664165 549 893.69397566622536 550 892.73225874969876 551 891.77777078415738
		 552 890.83055759482852 553 889.89065476437679 554 888.958081426734 555 888.0328741644704
		 556 887.11506517115333 557 886.20468986316939 558 885.30177935287031 559 884.4063624673413
		 560 883.51845496393969 561 882.63807882623667 562 881.76525795461464 563 880.9000146407468
		 564 880.04236959091031 565 879.1923432422808 566 878.34995278097585 567 877.51520656245111
		 568 876.68811733344933 569 875.86869659364186 570 875.05695703845709 571 874.25290998556318
		 572 873.45656276546617 573 872.66792529711029 574 871.88699941503501 575 871.11378667570352
		 576 870.34829248348785 577 869.59051596218205 578 868.84045898263059 579 868.09812221923119
		 580 867.3635038298371 581 866.63659945868062 582 865.917407050566 583 865.20591476429013
		 584 864.50211761590629 585 863.80600970193507 586 863.11758525977962 587 862.43683463932348
		 588 861.7637497219481 589 861.09831988917131 590 860.44053339046684 591 859.79037873062634
		 592 859.14784293950061 593 858.51291041465004 594 857.8855587197794 595 857.26577151203742
		 596 856.65352623879687 597 856.04879960178368 598 855.4515730723781 599 854.86182052086713
		 600 854.27951922347813 601 853.7046457469836 602 853.13717361468912 603 852.5770823337582
		 604 852.02434869142928 605 851.47894505384443 606 850.94084434300555 607 850.41002145404104
		 608 849.88644490561649 609 849.37008940324563 610 848.86092189367275 611 848.35891274923188
		 612 847.86403019157433 613 847.37624310587364 614 846.89551824736463 615 846.42182181677526
		 616 845.9551192228206 617 845.49537608372714 618 845.04255595691711 619 844.59662318277697
		 620 844.15753723707155 621 843.72526405834776 622 843.29976190387981 623 842.88099410619157
		 624 842.46891915818162 625 842.06349781684116 626 841.66468885262987 627 841.27245047744088
		 628 840.88674320763835 629 840.50751988757725 630 840.13474282142374 631 839.76836472905666
		 632 839.40834491013152 633 839.05463970426433 634 838.70720066392846 635 838.36598459360141
		 636 838.03094496145172 637 837.70203477142309 638 837.37920657135783 639 837.06241246108027
		 640 836.75160698196828 641 836.44673848436901 642 836.14776065749038 643 835.8546238946625
		 644 835.56727818065599 645 835.28567309947164 646 835.00975784208129 647 834.73948266153968
		 648 834.47479598837629 649 834.2156458828606 650 833.96198149252348 651 833.71374871123692
		 652 833.47089743655295 653 833.23337300621165 654 833.00112248860285 655 832.77409483774068
		 656 832.55223420394248 657 832.3354858820469 658 832.12379486584337 659 831.91710876830712
		 660 831.71537054799637 661 831.51852433784552 662 831.32651691373383 663 831.13928895150991
		 664 830.95678524030416 665 830.77895031662638 666 830.60572700952935 667 830.43705790555566
		 668 830.27288681706398 669 830.11315440307703 670 829.95780402270998 671 829.8067773553463
		 672 829.66001586814775 673 829.51746375110031 674 829.379059137083 675 829.24474435690047
		 676 829.11446155386841 677 828.98815122293422 678 828.86575368076183 679 828.74720907116307
		 680 828.63245883792763 681 828.52144279621234 682 828.41410060405974 683 828.31037176751158
		 684 828.2101971145255 685 828.11351586313435 686 828.02026709418737 687 827.93039122593268
		 688 827.8438256099472 689 827.76051041431333 690 827.6803856896978 691 827.6033884320077
		 692 827.52945846866385 693 827.45853405134369 694 827.39055480210675 695 827.32545730330617
		 696 827.26318098741058 697 827.20366372652063 698 827.14684477995797 699 827.09266038136548
		 700 827.04105110416469 701 826.99195155766597 702 826.94530217151942 703 826.90104036328955
		 704 826.85910348690936 705 826.81942883597947 706 826.7819551205331 707 826.74661952341228
		 708 826.71335917647036 709 826.68211116352916 710 826.65281399721414 711 826.62540467406882
		 712 826.59982015090782 713 826.57599734742587 714 826.55387462301496 715 826.53339030516338
		 716 826.5144782684788 717 826.49707825740836 718 826.48112704234347 719 826.46656137037905
		 720 826.45331796976029 721 826.4413350217385 722 826.43054921392445 723 826.42089721812692
		 724 826.41231716673315 725 826.40474423002456 726 826.39811651658488 727 826.39237065041425
		 728 826.38744472176938 729 826.38327533870915 730 826.37979762811517 731 826.37695113614041
		 732 826.37467245486494 733 826.37289669792335 734 826.37156340078172 735 826.37060767210903
		 736 826.36996609386472 737 826.36957819669476 738 826.36937761095669 739 826.36930534107319
		 740 826.36929354190704 741 826.36929354190704 742 826.36929354190704 743 826.36929354190704
		 744 826.36929354190704 745 826.36929354190704 746 826.36929354190704 747 826.36929354190704
		 748 826.36929354190704 749 826.36929354190704 750 826.36929354190704;
	setAttr ".ktv[750:800]" 751 826.36929354190704 752 826.36929354190704 753 826.36929354190704
		 754 826.36929354190704 755 826.36929354190704 756 826.36929354190704 757 826.36929354190704
		 758 826.36929354190704 759 826.36929354190704 760 826.36929354190704 761 826.36929354190704
		 762 826.36929354190704 763 826.36929354190704 764 826.36929354190704 765 826.36929354190704
		 766 826.36929354190704 767 826.36929354190704 768 826.36929354190704 769 826.36929354190704
		 770 826.36929354190704 771 826.36929354190704 772 826.36929354190704 773 826.36929354190704
		 774 826.36929354190704 775 826.36929354190704 776 826.36929354190704 777 826.36929354190704
		 778 826.36929354190704 779 826.36929354190704 780 826.36929354190704 781 826.36929354190704
		 782 826.36929354190704 783 826.36929354190704 784 826.36929354190704 785 826.36929354190704
		 786 826.36929354190704 787 826.36929354190704 788 826.36929354190704 789 826.36929354190704
		 790 826.36929354190704 791 826.36929354190704 792 826.36929354190704 793 826.36929354190704
		 794 826.36929354190704 795 826.36929354190704 796 826.36929354190704 797 826.36929354190704
		 798 826.36929354190704 799 826.36929354190704 800 826.36929354190704 801 826.36929354190704;
	setAttr -s 801 ".kot";
	setAttr ".kot[0:499]"  18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr ".kot[500:800]"  18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 801 ".ktl";
	setAttr ".ktl[0:499]" no yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes;
createNode animCurveTL -n "camera11_sampler_translateY_Baked";
	rename -uid "B3A57FCB-445E-552E-3C69-32BDEE42D3B7";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 801 ".ktv";
	setAttr ".ktv[0:249]"  1 690.35481689566132 2 690.35481689566132 3 690.35484644048313
		 4 690.35531383401019 5 690.35744892590128 6 690.36347678573134 7 690.37671153213762
		 8 690.40156929322666 9 690.44346969947264 10 690.5085879531581 11 690.60341624574369
		 12 690.73408854171817 13 690.90541081084314 14 691.1195405101214 15 691.37425209713024
		 16 691.66070297117119 17 691.96063586841524 18 692.2435468799805 19 692.52426026808416
		 20 692.82811027374578 21 693.15565819903236 22 693.50744664423655 23 693.88400210863585
		 24 694.28576991480372 25 694.71299630311159 26 695.16610246720904 27 695.64552735088205
		 28 696.15158271342057 29 696.68432047524641 30 697.24412548322266 31 697.83132654644021
		 32 698.44581076333031 33 699.08794875524677 34 699.75790802415941 35 700.45560100307671
		 36 701.18149034187661 37 701.93533899304248 38 702.71765803163146 39 703.52826873534445
		 40 704.3677243259807 41 705.23591461764795 42 706.13352401833879 43 707.06061100658167
		 44 708.0178775291281 45 709.0059139257786 46 710.02524159786378 47 711.07700596638028
		 48 712.1622402220421 49 713.2821171469551 50 714.43816234429528 51 715.63233805199866
		 52 716.86672260322723 53 718.14375241052119 54 719.4662796307548 55 720.83760650392696
		 56 722.26152604430365 57 723.74236826800291 58 725.28505079463719 59 726.89513971648989
		 60 728.57891125633876 61 730.34342828090882 62 732.19661718221687 63 734.13931004291419
		 64 736.17147560653018 65 738.30080975754083 66 740.53552316471485 67 742.88463576984861
		 68 745.35783869613533 69 747.96519993864706 70 750.71739894330642 71 753.62606489627206
		 72 756.70309464301261 73 759.96099317452922 74 763.41325229076404 75 767.07330778810399
		 76 770.95581694265377 77 775.07548206505157 78 779.44788497997149 79 784.07706394685943
		 80 788.85916615293343 81 793.75140305521631 82 798.75526726660632 83 803.86994118696509
		 84 809.09442622620793 85 814.42766355554568 86 819.86839401930263 87 825.41528981695012
		 88 831.06687865741867 89 836.8215375561623 90 842.67757077368822 91 848.63312069010624
		 92 854.68621422724675 93 860.83478900433488 94 867.07664315532838 95 873.40945124017685
		 96 879.8308110463712 97 886.33820317860659 98 892.92897637646615 99 899.60040610215333
		 100 906.34967500164043 101 913.17386406930018 102 920.06994290173589 103 927.03482206792569
		 104 934.06533139978819 105 941.15821796071964 106 948.31013549404793 107 955.51768725150123
		 108 962.77741655337707 109 970.0858075099934 110 977.43927450288254 111 984.83417990633359
		 112 992.26685352677111 113 999.73358491430258 114 1007.230629732593 115 1014.754193979254
		 116 1022.300464637829 117 1029.8656162597174 118 1037.4458108783326 119 1045.0371944765607
		 120 1052.6358910921349 121 1060.2380350417404 122 1067.8397717648484 123 1075.4372557474039
		 124 1083.0266458711371 125 1090.6033417430449 126 1098.1854208786376 127 1105.8116389838074
		 128 1113.4805002113401 129 1121.1879041649195 130 1128.9297362270663 131 1136.7018527425189
		 132 1144.5000721656936 133 1152.3201754408228 134 1160.157951772698 135 1168.0091689484689
		 136 1175.8695568341584 137 1183.7348617890227 138 1191.6008345241323 139 1199.4631883520065
		 140 1207.3176674913282 141 1215.1600284938743 142 1222.9860007321845 143 1230.7913680693368
		 144 1238.5719071243122 145 1246.3234075259481 146 1254.0417127752585 147 1261.7226407760327
		 148 1269.3620955491815 149 1276.9559500699149 150 1284.5001697108098 151 1291.9906952642177
		 152 1299.4235638751804 153 1306.7947912092307 154 1314.1004926151365 155 1321.3367758694769
		 156 1328.4998244392136 157 1335.58586314268 158 1342.5911402868956 159 1349.5119930118094
		 160 1356.3447789237753 161 1363.0859014631837 162 1369.7318442472861 163 1376.2791266536535
		 164 1382.7188308683201 165 1389.1462254126632 166 1395.6791316993747 167 1402.2946632521132
		 168 1408.9620792403834 169 1415.5989532763117 170 1422.1143577097409 171 1428.4701211914264
		 172 1434.6337457043669 173 1440.579050313007 174 1446.2866547597571 175 1451.7442232324127
		 176 1456.9464397225672 177 1461.8938562140254 178 1466.5929225190648 179 1471.0557125094697
		 180 1475.297593716725 181 1479.3358329088699 182 1483.191253948997 183 1486.8831400913671
		 184 1490.4328650392777 185 1493.8592806270028 186 1497.1817647448627 187 1500.4166566996182
		 188 1503.5804830809927 189 1506.686109596335 190 1509.7470352351584 191 1512.7727351385909
		 192 1515.7736586927076 193 1518.7566473049719 194 1521.7290321856776 195 1524.6960337345636
		 196 1527.6618659772043 197 1530.630820157827 198 1533.6046694789454 199 1536.586704112128
		 200 1539.5771397609101 201 1542.5780922427302 202 1545.5889495399044 203 1548.610562097899
		 204 1551.6419820814951 205 1554.6828123343298 206 1557.7320205311876 207 1560.788144757352
		 208 1563.8435694258035 209 1566.8912649602253 210 1569.9328463015904 211 1572.9687948223905
		 212 1576.0012787018331 213 1579.0311871802428 214 1582.0611705005415 215 1585.0926904917446
		 216 1588.1287147312332 217 1591.1714270673092 218 1594.2236968757632 219 1597.2885258029544
		 220 1600.3679827657202 221 1603.4653568389913 222 1606.5812214815439 223 1609.7174127787127
		 224 1612.8725868659421 225 1616.0441083955657 226 1619.2277046044292 227 1622.4146371296081
		 228 1625.5939651496403 229 1628.7518089745663 230 1631.8706667944361 231 1634.9299990000281
		 232 1637.9080883201959 233 1640.7820082435358 234 1643.5282608380692 235 1646.1203374606266
		 236 1648.6139307175292 237 1651.0746243485455 238 1653.5073971306626 239 1655.9773286382008
		 240 1658.5554669455971 241 1661.2421529714823 242 1664.0371795927706 243 1666.9396643608882
		 244 1669.9478915158493 245 1673.0589179262115 246 1676.2686000000549 247 1679.5710452234346
		 248 1682.9582676461191 249 1686.4196136931953 250 1689.9413731689804;
	setAttr ".ktv[250:499]" 251 1693.5060769008292 252 1697.0918983580123 253 1700.6723387900131
		 254 1704.2163642136743 255 1707.6887431987032 256 1711.0523666346915 257 1714.2705616231347
		 258 1717.3109244114751 259 1720.1488682495581 260 1722.7696787052362 261 1725.168650480382
		 262 1727.3499277207895 263 1729.3234567872285 264 1731.1026183428701 265 1732.7021284515147
		 266 1734.1367213457622 267 1735.462322729541 268 1736.7302729041933 269 1737.9465831372077
		 270 1739.1166987020263 271 1740.2455803173598 272 1741.3378111887455 273 1742.3977512249694
		 274 1743.4296576753163 275 1744.4377765878014 276 1745.4264143134992 277 1746.3999952372355
		 278 1747.36310800418 279 1748.3205457943359 280 1749.2773428231653 281 1750.2388116645106
		 282 1751.2105793396172 283 1752.198631674959 284 1753.2093991989507 285 1754.2497178011322
		 286 1755.3269028043935 287 1756.4488304062113 288 1757.6240086340351 289 1758.8616642119589
		 290 1760.171838858492 291 1761.5655024696109 292 1763.054687013424 293 1764.6526423682842
		 294 1766.3740191801876 295 1768.2116357884213 296 1770.1499580168486 297 1772.1923089031127
		 298 1774.3421992901779 299 1776.5981350708587 300 1778.9349915243995 301 1781.3408294698693
		 302 1783.8139140068363 303 1786.3514883025246 304 1788.9505359624313 305 1791.6078444476557
		 306 1794.3199466930987 307 1797.0831255241076 308 1799.8934949138757 309 1802.74691536981
		 310 1805.6390395195808 311 1808.5653699403374 312 1811.5211684797478 313 1814.5015522243395
		 314 1817.501484860441 315 1820.5157358542322 316 1823.5389766559988 317 1826.5657371376612
		 318 1829.5904035878741 319 1832.6072930607388 320 1835.6106222004275 321 1838.5945070179912
		 322 1841.5529994884996 323 1844.4801184048542 324 1847.3698155931763 325 1850.2160046880019
		 326 1853.0125770697955 327 1855.7534111108012 328 1858.4274319354706 329 1861.0301860511288
		 330 1863.56564637272 331 1866.0379987703486 332 1868.4516206407732 333 1870.8110651976808
		 334 1873.1210408366096 335 1875.3864034162445 336 1877.6121400903035 337 1879.8033602532269
		 338 1881.9652821073048 339 1884.1032284142161 340 1886.2226103422272 341 1888.3289123989734
		 342 1890.4277105349011 343 1892.524656147358 344 1894.6254693147623 345 1896.7359299330058
		 346 1898.861862304218 347 1901.0091605128662 348 1903.1837725176824 349 1905.3916942759711
		 350 1907.6389646054606 351 1909.9316598147823 352 1912.275893125123 353 1914.6719672986765
		 354 1917.1722230535279 355 1919.8540683872011 356 1922.7597356580316 357 1925.8964728493102
		 358 1929.2765405532546 359 1932.9124081911095 360 1936.8165404589536 361 1941.0011317077438
		 362 1945.4777966491877 363 1950.5210863492096 364 1956.4607502939557 365 1963.358614984907
		 366 1971.2092074143827 367 1979.9049061490248 368 1989.2263263219563 369 1998.8708908811984
		 370 2008.513673542097 371 2017.8704915563189 372 2026.7348607171295 373 2034.9831613131496
		 374 2042.5600426973542 375 2049.4581878311492 376 2055.7004041139967 377 2061.3066897972935
		 378 2066.2920652102148 379 2070.7068144066548 380 2074.603825046971 381 2078.0344418585628
		 382 2081.1486132624996 383 2084.0507187988082 384 2086.7202988902122 385 2089.136552120809
		 386 2091.2785203352296 387 2093.1249560002052 388 2094.6538313995347 389 2095.8422267699684
		 390 2096.6658645614712 391 2097.1055551641084 392 2097.1036473103159 393 2096.6357961194785
		 394 2095.6442514593973 395 2094.3414414313802 396 2092.8715138548796 397 2091.1780991194805
		 398 2089.3174932944521 399 2087.4161550671456 400 2085.6092692812599 401 2084.0231366217727
		 402 2082.7910712430767 403 2082.0339512971277 404 2081.8705079085835 405 2082.4026899587684
		 406 2083.7146148166207 407 2085.8628147134559 408 2088.8665928030036 409 2092.6918197539553
		 410 2097.227705064975 411 2102.2599606081908 412 2107.4204111060849 413 2112.1015581515007
		 414 2115.375679241226 415 2118.0190306545646 416 2121.4139370798353 417 2125.8328766444943
		 418 2131.5021365974212 419 2138.6233999110768 420 2147.3842597460916 421 2157.9592877851828
		 422 2170.5053104694857 423 2185.1516338186066 424 2201.9857719857682 425 2221.0360823469969
		 426 2242.2540001605221 427 2265.499962731968 428 2290.5373660615269 429 2317.0376344471861
		 430 2344.5931874066332 431 2372.7338406706231 432 2400.950338788808 433 2428.7219353078726
		 434 2455.5330632190758 435 2480.8818418400697 436 2504.8054722089573 437 2528.7786648800443
		 438 2552.5991641480414 439 2576.0624111795078 440 2598.9924776279495 441 2621.2467034450797
		 442 2642.7198704528714 443 2663.3461648986977 444 2683.0940539710582 445 2701.9588509501541
		 446 2719.9541516781965 447 2737.1074865710048 448 2753.4489180315136 449 2769.0161733837203
		 450 2783.844841302152 451 2797.9696636339336 452 2811.423333893938 453 2824.236338119626
		 454 2836.4365861204424 455 2848.049728639814 456 2859.0983685701631 457 2869.6042414815643
		 458 2879.5864758385019 459 2889.0627313034838 460 2898.0495923002304 461 2906.5624458419306
		 462 2914.6159566821148 463 2922.2237488162737 464 2929.399038864688 465 2936.1543756917408
		 466 2942.5020382349512 467 2948.4535223954936 468 2954.0207976507381 469 2959.2149409470649
		 470 2964.0469668503492 471 2968.5276545136899 472 2972.6675746478695 473 2976.4770857359913
		 474 2979.9663224718533 475 2983.1451912238954 476 2986.0235299476817 477 2988.6107840407208
		 478 2990.916252397793 479 2992.9490429613338 480 2994.7179988456487 481 2996.2316811774758
		 482 2997.6147086476526 483 2998.9859976833609 484 3000.3456110512061 485 3001.6937093760039
		 486 3003.0303982694454 487 3004.3556839754347 488 3005.6697071835088 489 3006.9726074440186
		 490 3008.2643933812578 491 3009.5451537109789 492 3010.8150240285545 493 3012.0740931373393
		 494 3013.3223627763186 495 3014.5599575942456 496 3015.7870013838374 497 3017.003521811786
		 498 3018.2095657101127 499 3019.4052545908694 500 3020.5906943066179;
	setAttr ".ktv[500:749]" 501 3021.765884646119 502 3022.9309013111424 503 3024.0858546778536
		 504 3025.2308358308801 505 3026.3658328736583 506 3027.4909344652156 507 3028.6062517257205
		 508 3029.7118779533353 509 3030.8078174318548 510 3031.8941244782513 511 3032.9708658872019
		 512 3034.0381037635734 513 3035.0958197517707 514 3036.1441025041809 515 3037.1830776422403
		 516 3038.2128655330703 517 3039.2335117914772 518 3040.2450142192624 519 3041.2474242201552
		 520 3042.2407935885226 521 3043.225162850571 522 3044.2005326919111 523 3045.1669840620079
		 524 3046.1246092817159 525 3047.0734960134532 526 3048.0136840061286 527 3048.9451705555089
		 528 3049.8680217787546 529 3050.7823055726431 530 3051.6880854345004 531 3052.585382493894
		 532 3053.4742154802825 533 3054.3546497179013 534 3055.2267528209009 535 3056.0905860773846
		 536 3056.9461858300983 537 3057.7935599385837 538 3058.6327612450063 539 3059.4638434870062
		 540 3060.2868604516225 541 3061.1018533849156 542 3061.9088188393753 543 3062.7078105422802
		 544 3063.4988943163598 545 3064.2821333595039 546 3065.0575911798064 547 3065.8253030768424
		 548 3066.5852686838575 549 3067.33753433427 550 3068.0821525362908 551 3068.8191720909126
		 552 3069.5486419631488 553 3070.2705950273739 554 3070.985037795776 555 3071.6920178603514
		 556 3072.3915873183141 557 3073.0837935852155 558 3073.7686851974031 559 3074.4463081537128
		 560 3075.1166702414193 561 3075.7798022832853 562 3076.4357519984442 563 3077.0845664049707
		 564 3077.7262918487045 565 3078.3609730666985 566 3078.9886531561201 567 3079.6093416638287
		 568 3080.2230702151001 569 3080.8298850401807 570 3081.4298298776557 571 3082.0229479289706
		 572 3082.6092838158634 573 3083.1888787717376 574 3083.7617666794963 575 3084.3279592842264
		 576 3084.8874963077888 577 3085.4404227626437 578 3085.9867803354005 579 3086.526610309355
		 580 3087.0599545535665 581 3087.5868555438342 582 3088.1073502452809 583 3088.6214569609615
		 584 3089.1292090160941 585 3089.6306467053769 586 3090.1258091409591 587 3090.6147371776474
		 588 3091.0974695415521 589 3091.5740457548113 590 3092.0445051763263 591 3092.5088859822908
		 592 3092.9672106916919 593 3093.4195068355898 594 3093.865818754477 595 3094.3061855858505
		 596 3094.7406500419202 597 3095.1692545362534 598 3095.5920373028434 599 3096.009041181343
		 600 3096.4203058391327 601 3096.8258707091436 602 3097.2257749158871 603 3097.6200392877809
		 604 3098.0086981430477 605 3098.3917918983575 606 3098.7693599165082 607 3099.1414395354909
		 608 3099.508071938491 609 3099.8692933660568 610 3100.225144897162 611 3100.5756646355849
		 612 3100.9208916267385 613 3101.2608639071882 614 3101.5956204675322 615 3101.9251957524561
		 616 3102.2496200008482 617 3102.5689318253512 618 3102.8831710490072 619 3103.1923764739649
		 620 3103.4965898090945 621 3103.7958478317437 622 3104.0901921990762 623 3104.3796606264282
		 624 3104.6642937591828 625 3104.9441302715359 626 3105.2192098150695 627 3105.4895720418376
		 628 3105.7552546431421 629 3106.0163002311601 630 3106.2727445511368 631 3106.5246258068587
		 632 3106.7719774054526 633 3107.0148385961743 634 3107.2532515878038 635 3107.4872546651404
		 636 3107.7168880938225 637 3107.9421921560465 638 3108.1632071531585 639 3108.379973408074
		 640 3108.5925292974152 641 3108.8009171632702 642 3109.0051754353976 643 3109.2053445430738
		 644 3109.4014649470309 645 3109.5935771410136 646 3109.7817216532044 647 3109.9659380611961
		 648 3110.1462669653306 649 3110.3227490039658 650 3110.4954238675923 651 3110.6643332599042
		 652 3110.8295159643212 653 3110.9910132854361 654 3111.1488633254567 655 3111.303104773413
		 656 3111.4537797888129 657 3111.6009295767376 658 3111.7445953756692 659 3111.8848164816882
		 660 3112.0216351887639 661 3112.1550928374568 662 3112.2852288260251 663 3112.4120865409518
		 664 3112.5357064383934 665 3112.6561290089194 666 3112.7733957664195 667 3112.8875482595226
		 668 3112.9986270822974 669 3113.1066748412745 670 3113.211732198838 671 3113.313840840261
		 672 3113.4130424843343 673 3113.5093769037221 674 3113.6028878620009 675 3113.6936161863327
		 676 3113.7816027353551 677 3113.8668893886847 678 3113.9495180567569 679 3114.0295306802659
		 680 3114.1069682393691 681 3114.1818727333107 682 3114.2542861898191 683 3114.3242506644783
		 684 3114.3918072495594 685 3114.4569980541942 686 3114.5198652133913 687 3114.5804498966563
		 688 3114.6387952792898 689 3114.6949425789976 690 3114.7489330363655 691 3114.8008098960327
		 692 3114.850614442586 693 3114.8983889724245 694 3114.9441748111467 695 3114.988015285986
		 696 3115.0299517608755 697 3115.0700266089402 698 3115.1082812295058 699 3115.1447590210819
		 700 3115.1795004244163 701 3115.2125498608043 702 3115.2439478009451 703 3115.2737367121717
		 704 3115.3019590752087 705 3115.3286573835244 706 3115.353873151179 707 3115.377648895148
		 708 3115.4000271432792 709 3115.4210504336916 710 3115.4407603225877 711 3115.4591993668205
		 712 3115.4764101318046 713 3115.4924351909694 714 3115.5073161335536 715 3115.5210945557128
		 716 3115.5338150351363 717 3115.5455181887628 718 3115.5562466224264 719 3115.5660429468167
		 720 3115.5749497696775 721 3115.5830087177733 722 3115.5902624177138 723 3115.5967534991191
		 724 3115.6025236025425 725 3115.6076163544785 726 3115.6120734000237 727 3115.6159373779233
		 728 3115.6192499367744 729 3115.6220537183713 730 3115.6243923575062 731 3115.6263065146168
		 732 3115.6278388345554 733 3115.6290329546509 734 3115.6299295373906 735 3115.6305722210536
		 736 3115.6310036524324 737 3115.6312644949362 738 3115.6313993792974 739 3115.6314479773432
		 740 3115.6314559117186 741 3115.6314559117186 742 3115.6314559117186 743 3115.6314559117186
		 744 3115.6314559117186 745 3115.6314559117186 746 3115.6314559117186 747 3115.6314559117186
		 748 3115.6314559117186 749 3115.6314559117186 750 3115.6314559117186;
	setAttr ".ktv[750:800]" 751 3115.6314559117186 752 3115.6314559117186 753 3115.6314559117186
		 754 3115.6314559117186 755 3115.6314559117186 756 3115.6314559117186 757 3115.6314559117186
		 758 3115.6314559117186 759 3115.6314559117186 760 3115.6314559117186 761 3115.6314559117186
		 762 3115.6314559117186 763 3115.6314559117186 764 3115.6314559117186 765 3115.6314559117186
		 766 3115.6314559117186 767 3115.6314559117186 768 3115.6314559117186 769 3115.6314559117186
		 770 3115.6314559117186 771 3115.6314559117186 772 3115.6314559117186 773 3115.6314559117186
		 774 3115.6314559117186 775 3115.6314559117186 776 3115.6314559117186 777 3115.6314559117186
		 778 3115.6314559117186 779 3115.6314559117186 780 3115.6314559117186 781 3115.6314559117186
		 782 3115.6314559117186 783 3115.6314559117186 784 3115.6314559117186 785 3115.6314559117186
		 786 3115.6314559117186 787 3115.6314559117186 788 3115.6314559117186 789 3115.6314559117186
		 790 3115.6314559117186 791 3115.6314559117186 792 3115.6314559117186 793 3115.6314559117186
		 794 3115.6314559117186 795 3115.6314559117186 796 3115.6314559117186 797 3115.6314559117186
		 798 3115.6314559117186 799 3115.6314559117186 800 3115.6314559117186 801 3115.6314559117186;
	setAttr -s 801 ".kot";
	setAttr ".kot[0:499]"  18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr ".kot[500:800]"  18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 801 ".ktl";
	setAttr ".ktl[0:499]" no yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes;
createNode animCurveTL -n "camera11_sampler_translateZ_Baked";
	rename -uid "2642C2A3-4A48-6729-FF55-7A840FBACF0C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 801 ".ktv";
	setAttr ".ktv[0:249]"  1 -3301.2498615624795 2 -3301.2498615624795 3 -3301.2498047470926
		 4 -3301.2489058575561 5 -3301.2447989285156 6 -3301.2332008599851 7 -3301.207725974994
		 8 -3301.1598525445675 9 -3301.0790989604584 10 -3300.9534812047227 11 -3300.77032936258
		 12 -3300.5175498385902 13 -3300.1854427227859 14 -3299.7691801785472 15 -3299.2720648805571
		 16 -3298.7097306957617 17 -3298.1154053348773 18 -3297.5452344986261 19 -3296.9694578153717
		 20 -3296.3384555017701 21 -3295.6493636417922 22 -3294.8992432178843 23 -3294.0850948509101
		 24 -3293.2036055056528 25 -3292.2506826410595 26 -3291.2229146877708 27 -3290.1169660908718
		 28 -3288.9289970204959 29 -3287.6541631998689 30 -3286.2889115868165 31 -3284.8294756399955
		 32 -3283.270362619528 33 -3281.6079710386848 34 -3279.8379018824594 35 -3277.9547633293946
		 36 -3275.955309787445 37 -3273.8335676112088 38 -3271.5864796942565 39 -3269.2082994107791
		 40 -3266.6961313938737 41 -3264.0444980908906 42 -3261.2510147517332 43 -3258.310858008801
		 44 -3255.2217136867052 45 -3251.980828584668 46 -3248.5851857892758 47 -3245.0341926456222
		 48 -3241.326821972692 49 -3237.4625876133878 50 -3233.442383623666 51 -3229.2687943416036
		 52 -3224.9448606004116 53 -3220.4750192963111 54 -3215.8653209126996 55 -3211.1235701027226
		 56 -3206.259481763148 57 -3201.2848586577852 58 -3196.2137976085378 59 -3191.062907948909
		 60 -3185.8515769085511 61 -3180.6022397251186 62 -3175.3407042834115 63 -3170.1174918690208
		 64 -3164.9863425941658 65 -3159.9820313307837 66 -3155.141355116752 67 -3150.5042747791795
		 68 -3146.1133797480102 69 -3142.0127378963311 70 -3138.2488132105045 71 -3134.8717848244651
		 72 -3131.9328783010737 73 -3129.4857070681419 74 -3127.58773244133 75 -3126.2962139127776
		 76 -3125.6795042951508 77 -3125.7632880658916 78 -3126.6848251507249 79 -3128.3994702285172
		 80 -3130.4646996316137 81 -3132.6978598290384 82 -3135.1139739452155 83 -3137.7180811693324
		 84 -3140.5151742362955 85 -3143.5100903519701 86 -3146.707620862675 87 -3150.1123982225645
		 88 -3153.7289493506646 89 -3157.5617005577692 90 -3161.6148999381639 91 -3165.8926913808873
		 92 -3170.3990721556752 93 -3175.1378561599272 94 -3180.1127257789235 95 -3185.327203212149
		 96 -3190.7846113514747 97 -3196.488099777393 98 -3202.4406621096232 99 -3208.6450723270759
		 100 -3215.1039026097887 101 -3221.8195325580191 102 -3228.7941456723383 103 -3236.0296880464443
		 104 -3243.5278835191007 105 -3251.2902315025394 106 -3259.3180175010475 107 -3267.6122701897962
		 108 -3276.1737714971086 109 -3285.0030565219358 110 -3294.1004125516383 111 -3303.4658790171929
		 112 -3313.0992131420544 113 -3322.9999054093382 114 -3333.167177871856 115 -3343.599986260524
		 116 -3354.2970071410928 117 -3365.2566204985264 118 -3376.4769250102172 119 -3387.9557253400781
		 120 -3399.6905554459795 121 -3411.6786409802999 122 -3423.916904444739 123 -3436.4019688954436
		 124 -3449.1301641099135 125 -3462.0815141282228 126 -3475.7069396951133 127 -3490.8255494280756
		 128 -3507.3642991595211 129 -3525.1951852020943 130 -3544.1929497229676 131 -3564.2340196186979
		 132 -3585.195558370965 133 -3606.9555117279656 134 -3629.3960333955561 135 -3652.4015750012759
		 136 -3675.8567344728322 137 -3699.6510972351243 138 -3723.6779891337314 139 -3747.8310028964679
		 140 -3772.0095123740443 141 -3796.1171219701619 142 -3820.057960829718 143 -3843.7438731054713
		 144 -3867.088692559938 145 -3890.0102425109571 146 -3912.4332133003222 147 -3934.2827847754506
		 148 -3955.4934691744561 149 -3975.9995984660513 150 -3995.7451342391323 151 -4014.6740825734491
		 152 -4032.7401724534029 153 -4049.8971979988423 154 -4066.1087091133363 155 -4081.339054113193
		 156 -4095.5602648807248 157 -4108.7488949135186 158 -4120.8844005939463 159 -4131.9546203334285
		 160 -4141.9497751409872 161 -4150.8644392277129 162 -4158.7001636624664 163 -4165.4620069852826
		 164 -4171.1613462229088 165 -4175.7658406021856 166 -4179.2705395285366 167 -4181.7588070313404
		 168 -4183.3164144931634 169 -4184.024264673365 170 -4183.9775522081936 171 -4183.2926529286196
		 172 -4182.0696714626993 173 -4180.4062058360196 174 -4178.3902806652541 175 -4176.1000308938401
		 176 -4173.602807821143 177 -4170.9562218188912 178 -4168.2068969374668 179 -4165.3897945690996
		 180 -4162.5315068073669 181 -4159.6519671921242 182 -4156.7606241390631 183 -4153.8655656037481
		 184 -4150.9664393147532 185 -4148.0630911570979 186 -4145.1499293803918 187 -4142.2228722037262
		 188 -4139.273576796355 189 -4136.2970327084367 190 -4133.283852372525 191 -4130.229392300942
		 192 -4127.1247069143683 193 -4123.9654821777958 194 -4120.744627438723 195 -4117.4574288609383
		 196 -4114.0997024352091 197 -4110.6659601059519 198 -4107.1544688979175 199 -4103.5598131976049
		 200 -4099.8816567710519 201 -4096.1155077357316 202 -4092.2615093664572 203 -4088.3166487307722
		 204 -4084.2809529870433 205 -4080.1531318336633 206 -4075.9328602447522 207 -4071.6204347640341
		 208 -4067.2247809782812 209 -4062.7550305586255 210 -4058.2073831137332 211 -4053.5799335164029
		 212 -4048.8673189718697 213 -4044.0662295689158 214 -4039.1696194871488 215 -4034.1721582486884
		 216 -4029.0650577302317 217 -4023.84024492769 218 -4018.4874514095063 219 -4012.995083367518
		 220 -4007.3520389985547 221 -4001.5434705210255 222 -3995.5580017178354 223 -3989.380101506792
		 224 -3982.998353025594 225 -3976.4019259571442 226 -3969.5813901281358 227 -3962.5343669046397
		 228 -3955.2617815494104 229 -3947.7699022513516 230 -3940.0723589715681 231 -3932.1897708424231
		 232 -3924.1468713659779 233 -3915.9730115241287 234 -3907.700947289446 235 -3899.3670956024689
		 236 -3890.9700415475963 237 -3882.4958843280524 238 -3873.9560182695277 239 -3865.1045777664754
		 240 -3855.6583559715846 241 -3845.5742951036073 242 -3834.8046967312193 243 -3823.2966849505706
		 244 -3810.9916861732227 245 -3797.8253189092575 246 -3783.7266316024566 247 -3768.6185967568626
		 248 -3752.4187505518885 249 -3735.0411640475972 250 -3716.3996634717573;
	setAttr ".ktv[250:499]" 251 -3696.4141129399413 252 -3675.0202673710728 253 -3652.1841742775364
		 254 -3627.9217277957928 255 -3602.3230862584956 256 -3575.5748258486246 257 -3547.975079237106
		 258 -3519.9278394272806 259 -3491.9113015100206 260 -3464.4243258704828 261 -3437.9262403175289
		 262 -3412.7884781386701 263 -3389.2724317348534 264 -3367.5302627021829 265 -3347.6220359279291
		 266 -3329.5387964957754 267 -3312.6869267042694 268 -3296.4836929975668 269 -3280.8978529398096
		 270 -3265.895395952949 271 -3251.4397002915266 272 -3237.4916158979363 273 -3224.0094528184504
		 274 -3210.9489893788623 275 -3198.2635313610103 276 -3185.9039783887802 277 -3173.8188812223671
		 278 -3161.9545119592117 279 -3150.2549184857867 280 -3138.6619688816095 281 -3127.1153554947468
		 282 -3115.5526039754882 283 -3103.9090287807435 284 -3092.1175952510121 285 -3080.1089882330039
		 286 -3067.8114595051452 287 -3055.1506198750412 288 -3042.0492667144517 289 -3028.4271151605399
		 290 -3014.2005268225421 291 -2999.2821765994822 292 -2983.5806475668151 293 -2966.9999780900985
		 294 -2949.4391501294181 295 -2931.0243416076187 296 -2911.9572566444017 297 -2892.2464249048539
		 298 -2871.901688536409 299 -2850.9245858283243 300 -2829.2767521038677 301 -2806.951461141764
		 302 -2783.9639156976582 303 -2760.3296160311525 304 -2736.0659442387341 305 -2711.1924579063361
		 306 -2685.730746984505 307 -2659.7045071720495 308 -2633.1398581197759 309 -2606.0650712413226
		 310 -2578.5107853778331 311 -2550.5101812494936 312 -2522.0986928848479 313 -2493.3143099054068
		 314 -2464.1975732895726 315 -2434.7913535085772 316 -2405.1411837438886 317 -2375.2950376204617
		 318 -2345.3032931961779 319 -2315.2188744498681 320 -2285.0971321214251 321 -2254.9956760118016
		 322 -2224.9744719231903 323 -2195.0957965207576 324 -2165.4240221233927 325 -2136.0255706643829
		 326 -2106.9688373020635 327 -2078.3240716086016 328 -2050.215419734825 329 -2022.6996412200926
		 330 -1995.7447667992062 331 -1969.3156426801402 332 -1943.374119644762 333 -1917.8791470898448
		 334 -1892.7869570318719 335 -1868.0511394363252 336 -1843.6227874434469 337 -1819.4505738988337
		 338 -1795.4808757395449 339 -1771.6577949632347 340 -1747.9232650676113 341 -1724.217022879058
		 342 -1700.476754439562 343 -1676.6380884182342 344 -1652.6345827870659 345 -1628.3977210404337
		 346 -1603.8568336181856 347 -1578.9391821344677 348 -1553.5698722087552 349 -1527.6717617636573
		 350 -1501.1653995068102 351 -1473.9688670410555 352 -1445.9977464195574 353 -1417.1912487456541
		 354 -1387.2521507472104 355 -1355.7696526404457 356 -1322.4901001137889 357 -1287.3149180287326
		 358 -1250.1203575440074 359 -1210.7790650545057 360 -1169.1609396574231 361 -1125.1342698055732
		 362 -1078.5670023767475 363 -1026.6225787344615 364 -965.97822000025883 365 -896.04860794752938
		 366 -816.84673790329839 367 -729.28175839820062 368 -635.25166426495775 369 -537.40215502873605
		 370 -438.60252530193424 371 -341.39745463253348 372 -247.67955264011619 373 -158.63400303873775
		 374 -74.855401608212475 375 3.482777614041225 376 76.464031676030288 377 144.47646458387069
		 378 208.02507845525906 379 267.32640893524257 380 322.62082944278035 381 374.1741520349874
		 382 423.9450135044051 383 473.64009860258 384 523.14246949922881 385 572.3313767204238
		 386 621.08474481624944 387 669.27904368503118 388 716.78656756675093 389 763.4787970660376
		 390 809.22944505131113 391 853.91511184429362 392 897.41261333695559 393 939.60526461536642
		 394 980.39454064909273 395 1019.7391466257312 396 1057.6641838094802 397 1095.0577903723056
		 398 1132.4060887440996 399 1169.7072472617945 400 1206.9960462870329 401 1244.3102386885625
		 402 1281.7006114628562 403 1319.2222349270889 404 1356.9453696769301 405 1394.9478245905727
		 406 1433.3238621534385 407 1472.1829858593924 408 1511.649017808465 409 1551.870515431888
		 410 1593.016346971945 411 1635.2793264103832 412 1678.8759864876968 413 1724.0388914649623
		 414 1770.9661290284489 415 1819.0644803171851 416 1867.6701481398459 417 1916.5501570413805
		 418 1965.4213494123935 419 2013.9332286635063 420 2061.6574415566374 421 2108.077489975336
		 422 2152.5896910168312 423 2194.5124529075288 424 2233.1095342793546 425 2267.6292818260599
		 426 2297.35757150992 427 2321.6772060630374 428 2340.1217223936774 429 2352.4098407562838
		 430 2358.5040230493664 431 2358.3779344016993 432 2352.3754074084291 433 2340.8891847748605
		 434 2324.3662632585379 435 2303.36705638067 436 2278.6137680908291 437 2250.398897741904
		 438 2216.8603975647025 439 2178.1874685293201 440 2134.9169226318154 441 2087.6961083141159
		 442 2037.2351543226378 443 1984.242561031182 444 1929.3823915132973 445 1873.2608088883378
		 446 1816.4048130750682 447 1759.2697733263403 448 1702.2563991647737 449 1645.6888626753459
		 450 1589.8534384586574 451 1534.9906971586761 452 1481.3028967664136 453 1428.9614156855521
		 454 1378.1096266713555 455 1328.8651812450564 456 1281.3270016428892 457 1235.5692513844115
		 458 1191.6517490739268 459 1149.6177990686078 460 1109.4948523410706 461 1071.2975503118955
		 462 1035.028873964357 463 1000.6809809915343 464 968.23709842859182 465 937.67233980943172
		 466 908.95536346901383 467 882.04974860546213 468 856.91191835385996 469 833.49732005889837
		 470 811.75772490404006 471 791.64301704661989 472 773.10186431986813 473 756.08234166363059
		 474 740.53242908863194 475 726.40048473709294 476 713.63575386967386 477 702.18841655425115
		 478 692.01004600982685 479 683.05376649445157 480 675.27435007988345 481 668.62829748677962
		 482 662.56520324697863 483 656.56227412687167 484 650.61902549525053 485 644.73504829366698
		 486 638.90989378430982 487 633.14303434621854 488 627.43406180188902 489 621.78257102892906
		 490 616.18804805476168 491 610.65004592056971 492 605.16817925456007 493 599.74200371841209
		 494 594.37102491662256 495 589.05484037234908 496 583.79307078835052 497 578.58523130766912
		 498 573.43088460322667 499 568.32964193060229 500 563.28112355984501;
	setAttr ".ktv[500:749]" 501 558.2848382175888 502 553.34038113148267 503 548.44737921688284
		 504 543.60544954920624 505 538.81413583042979 506 534.07302294812689 507 529.38170841717181
		 508 524.73978158617876 509 520.14672971625714 510 515.60226225745077 511 511.10613922017779
		 512 506.65810032446961 513 502.25776413905265 514 497.90462081501403 515 493.5981677258028
		 516 489.33791507161806 517 485.12336557256486 518 480.95421263825352 519 476.83024569763467
		 520 472.7512445771581 521 468.71695021303344 522 464.72690376368382 523 460.78069079690778
		 524 456.87791321290791 525 453.0181850969845 526 449.20111603307674 527 445.42634560842157
		 528 441.69356820455971 529 438.00247132761064 530 434.35275441270682 531 430.74405029942591
		 532 427.17597418425981 533 423.6482180439458 534 420.16045977899358 535 416.7123976656074
		 536 413.30366150024855 537 409.93387701359404 538 406.60277230851403 539 403.31007282152325
		 540 400.05549967908644 541 396.83877550536607 542 393.65953474531227 543 390.51744147762173
		 544 387.41216922350287 545 384.34339834556101 546 381.31080472914613 547 378.31406199048746
		 548 375.3528438326864 549 372.42688800169168 550 369.53591558123793 551 366.67965936633198
		 552 363.8578489625425 553 361.07018827480363 554 358.31633725491201 555 355.59602261876307
		 556 352.90896521990288 557 350.25490185639165 558 347.63356309324985 559 345.04467839668513
		 560 342.48793004500033 561 339.96303750433952 562 337.4697393234843 563 335.00777520313989
		 564 332.57688601064672 565 330.17681743843553 566 327.80731006047608 567 325.46806177028282
		 568 323.15880708408679 569 320.87929212656218 570 318.62927143122789 571 316.40850067296486
		 572 314.21672945749782 573 312.05371940865058 574 309.91920410019856 575 307.81290343449399
		 576 305.73458267029275 577 303.68399637926575 578 301.6609110584389 579 299.66509433379315
		 580 297.69631139262754 581 295.75432501166227 582 293.83890523792951 583 291.94977169983628
		 584 290.0866922473333 585 288.24944513480267 586 286.43781291555899 587 284.65157180283148
		 588 282.89050589706841 589 281.15439654884096 590 279.44302592947594 591 277.75618051099639
		 592 276.09362308328895 593 274.45512026653864 594 272.84044406097826 595 271.24938559192998
		 596 269.68172339109884 597 268.13723748446614 598 266.61572339410799 599 265.11696053454318
		 600 263.64074026746295 601 262.18685534717793 602 260.7550908510317 603 259.34522611961421
		 604 257.95705957831035 605 256.5903882297996 606 255.24501342469645 607 253.92074432597573
		 608 252.61737704279022 609 251.334725925312 610 250.07258881973831 611 248.83077485831197
		 612 247.60909057045609 613 246.40734681482724 614 245.22535185350159 615 244.06290561865464
		 616 242.91979968939643 617 241.79584847884425 618 240.6908643955544 619 239.60466418040738
		 620 238.53705512799965 621 237.48786261838237 622 236.45689569778853 623 235.44397802725837
		 624 234.44892381539705 625 233.47155498657673 626 232.51169087314759 627 231.56915164273764
		 628 230.643765132374 629 229.73534288629685 630 228.84372120261065 631 227.96870600403639
		 632 227.11012128315613 633 226.26779629741941 634 225.44155081614744 635 224.63121898636069
		 636 223.83662885735166 637 223.05760919701976 638 222.29398948301034 639 221.5455998937214
		 640 220.81227809371507 641 220.09384883378306 642 219.39015112704487 643 218.70101785237182
		 644 218.02628254291972 645 217.36577937644279 646 216.71934316553191 647 216.08681273338186
		 648 215.46802412800974 649 214.86281400270096 650 214.2710229870666 651 213.69248553075681
		 652 213.12704679898172 653 212.57454156799054 654 212.03480474095247 655 211.50768277588284
		 656 210.99301332171896 657 210.49063791016812 658 210.00039856915376 659 209.52214455184904
		 660 209.05571547437171 661 208.60095479185526 662 208.15771314896043 663 207.72582816996811
		 664 207.30514801762394 665 206.89552127911406 666 206.49679359482755 667 206.10881101474712
		 668 205.73142334881683 669 205.36447407575798 670 205.00781377528054 671 204.66129003794637
		 672 204.32475081666749 673 203.99805112856711 674 203.68103290900609 675 203.37354849646425
		 676 203.07545055188885 677 202.78658869735872 678 202.50681286269688 679 202.23597327660448
		 680 201.97392380832119 681 201.72051525606176 682 201.47559869092902 683 201.23902544838796
		 684 201.01065046788511 685 200.79032558678972 686 200.57790288202457 687 200.37323800834375
		 688 200.17618015015344 689 199.98658540029191 690 199.80431005754014 691 199.62920393016321
		 692 199.46112370911715 693 199.2999229253949 694 199.14545863139602 695 198.99758136325062
		 696 198.85614850764361 697 198.72101426477829 698 198.59203632711228 699 198.46906584656753
		 700 198.35196413731023 701 198.2405792784005 702 198.13477283860914 703 198.03439982245607
		 704 197.93931534732144 705 197.84937463764257 706 197.76443635897562 707 197.68435593244277
		 708 197.60898886977631 709 197.53819076810575 710 197.47182064383659 711 197.40973424935606
		 712 197.35178740775311 713 197.29783600820326 714 197.2477393398888 715 197.20135674881524
		 716 197.15853761930867 717 197.11914473794681 718 197.0830342599366 719 197.05006238175847
		 720 197.02008532471842 721 196.99296269399125 722 196.96855079579589 723 196.94670596398009
		 724 196.92728789474992 725 196.91014963122336 726 196.89515091124406 727 196.8821481522904
		 728 196.8710011242832 729 196.86156627259228 730 196.85369671626577 731 196.84725559578649
		 732 196.8420993844905 733 196.83808122461284 734 196.83506427533166 735 196.83290168757594
		 736 196.83144995239519 737 196.83057223741045 738 196.83011836220908 739 196.82995483368128
		 740 196.82992813514693 741 196.82992813514693 742 196.82992813514693 743 196.82992813514693
		 744 196.82992813514693 745 196.82992813514693 746 196.82992813514693 747 196.82992813514693
		 748 196.82992813514693 749 196.82992813514693 750 196.82992813514693;
	setAttr ".ktv[750:800]" 751 196.82992813514693 752 196.82992813514693 753 196.82992813514693
		 754 196.82992813514693 755 196.82992813514693 756 196.82992813514693 757 196.82992813514693
		 758 196.82992813514693 759 196.82992813514693 760 196.82992813514693 761 196.82992813514693
		 762 196.82992813514693 763 196.82992813514693 764 196.82992813514693 765 196.82992813514693
		 766 196.82992813514693 767 196.82992813514693 768 196.82992813514693 769 196.82992813514693
		 770 196.82992813514693 771 196.82992813514693 772 196.82992813514693 773 196.82992813514693
		 774 196.82992813514693 775 196.82992813514693 776 196.82992813514693 777 196.82992813514693
		 778 196.82992813514693 779 196.82992813514693 780 196.82992813514693 781 196.82992813514693
		 782 196.82992813514693 783 196.82992813514693 784 196.82992813514693 785 196.82992813514693
		 786 196.82992813514693 787 196.82992813514693 788 196.82992813514693 789 196.82992813514693
		 790 196.82992813514693 791 196.82992813514693 792 196.82992813514693 793 196.82992813514693
		 794 196.82992813514693 795 196.82992813514693 796 196.82992813514693 797 196.82992813514693
		 798 196.82992813514693 799 196.82992813514693 800 196.82992813514693 801 196.82992813514693;
	setAttr -s 801 ".kot";
	setAttr ".kot[0:499]"  18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr ".kot[500:800]"  18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 801 ".ktl";
	setAttr ".ktl[0:499]" no yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes;
createNode animCurveTA -n "camera11_sampler_rotateX_Baked";
	rename -uid "76416131-4322-D4D1-51BB-8F86A1776418";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 801 ".ktv";
	setAttr ".ktv[0:249]"  1 -32.95492140038197 2 -32.95492140038197 3 -32.954918688423128
		 4 -32.954875783075579 5 -32.954679763889601 6 -32.954126248741325 7 -32.952910615768246
		 8 -32.950626531265499 9 -32.946774553875088 10 -32.940784254802317 11 -32.9320535877198
		 12 -32.920009670817407 13 -32.904196233593119 14 -32.884392814288475 15 -32.860771426907782
		 16 -32.834098475402257 17 -32.805987678414212 18 -32.779155997174165 19 -32.752201309766264
		 20 -32.722768379373775 21 -32.690746744227873 22 -32.656023990949812 23 -32.618486167838107
		 24 -32.578011259248711 25 -32.534457133605507 26 -32.487699203189237 27 -32.437614888952716
		 28 -32.384068553140558 29 -32.326898730770409 30 -32.26597718936241 31 -32.201170229605395
		 32 -32.132299629864299 33 -32.059235959897222 34 -31.981829192447165 35 -31.899903722609082
		 36 -31.813339272275673 37 -31.72194524702601 38 -31.625606224703144 39 -31.524137459586324
		 40 -31.41742767963861 41 -31.305299088035728 42 -31.18765356774896 43 -31.064330158935892
		 44 -30.935232579553517 45 -30.800253203416002 46 -30.659277643858054 47 -30.51225393678363
		 48 -30.359118940182604 49 -30.199823433659436 50 -30.034353805527051 51 -29.862739923709722
		 52 -29.68502345034716 53 -29.501282031087037 54 -29.311634848840995 55 -29.116246295923627
		 56 -28.915329978208813 57 -28.709153274466061 58 -28.498042715540336 59 -28.282389478194656
		 60 -28.062656406689246 61 -27.839384770411314 62 -27.613202812029446 63 -27.385755619358829
		 64 -27.158819004889516 65 -26.933323891201272 66 -26.710253432055147 67 -26.490672390463335
		 68 -26.275713367466768 69 -26.066547137056862 70 -25.864406321630796 71 -25.670619391010902
		 72 -25.486541807684564 73 -25.313590703586193 74 -25.153282394003401 75 -25.007128112048353
		 76 -24.876761958847656 77 -24.763822856452826 78 -24.670038433988676 79 -24.595584639293197
		 80 -24.52647160979939 81 -24.457275127291979 82 -24.388567996548673 83 -24.320630115576005
		 84 -24.25376336024841 85 -24.18826835340565 86 -24.124470223610555 87 -24.062693939665735
		 88 -24.00327767582111 89 -23.946574305476506 90 -23.892935597178489 91 -23.842729221382477
		 92 -23.796329885944616 93 -23.754112980388314 94 -23.716465397879652 95 -23.683781034780786
		 96 -23.656452207169885 97 -23.634876604482471 98 -23.619460791578685 99 -23.610579366311079
		 100 -23.608665832161741 101 -23.614206098862706 102 -23.627472330311871 103 -23.648922288952559
		 104 -23.678956219669868 105 -23.717972010656744 106 -23.766367438408071 107 -23.824531443232203
		 108 -23.892846192871907 109 -23.971687042814086 110 -24.061423609871909 111 -24.162417896827531
		 112 -24.275018886743133 113 -24.399564891217935 114 -24.536382692276359 115 -24.685789471671221
		 116 -24.848088219621221 117 -25.023565354914052 118 -25.212492135644403 119 -25.415123843682672
		 120 -25.631702562624543 121 -25.86245005771524 122 -26.107568106826559 123 -26.367239016914215
		 124 -26.641626649734548 125 -26.930533631366991 126 -27.243821660228125 127 -27.599047491222802
		 128 -27.994512557938055 129 -28.427328518420882 130 -28.894656826198755 131 -29.393685860884304
		 132 -29.921610539714788 133 -30.475633438257244 134 -31.053039165878332 135 -31.651153069923467
		 136 -32.267294902485474 137 -32.898883770901726 138 -33.543411332127462 139 -34.198366738837201
		 140 -34.861356255709623 141 -35.530069857549798 142 -36.202201258100111 143 -36.87560371004318
		 144 -37.548166353771123 145 -38.217857641210273 146 -38.882787986661121 147 -39.541071799695438
		 148 -40.191019318257261 149 -40.830930750837652 150 -41.459309068686991 151 -42.074652610463346
		 152 -42.675665018970555 153 -43.26104627625557 154 -43.829702920501006 155 -44.380554319527782
		 156 -44.91268201858292 157 -45.42526162030525 158 -45.917528025710141 159 -46.388894311230828
		 160 -46.838822179778845 161 -47.266864941906057 162 -47.672724682750989 163 -48.056177286143146
		 164 -48.416807470281526 165 -48.759448996771347 166 -49.09094912734745 167 -49.411737132967389
		 168 -49.721812248617496 169 -50.018834726092223 170 -50.3003545355418 171 -50.566316789526198
		 172 -50.816806529421214 173 -51.052059197404169 174 -51.272465481416063 175 -51.478568582279863
		 176 -51.671054187413318 177 -51.850725129657526 178 -52.018483071254735 179 -52.175304980999698
		 180 -52.322200889022064 181 -52.460181400965112 182 -52.590254781300402 183 -52.713367726815534
		 184 -52.830427537456508 185 -52.942255143706568 186 -53.049609187648812 187 -53.15315473529499
		 188 -53.253494012370616 189 -53.351136037748674 190 -53.446539528132455 191 -53.540076557727303
		 192 -53.632082495375066 193 -53.72282021356127 194 -53.812521590185952 195 -53.901368884511157
		 196 -53.989508623274844 197 -54.077064942152532 198 -54.16411979515977 199 -54.250751679995815
		 200 -54.336997147143684 201 -54.422897478023032 202 -54.508459106479627 203 -54.593692745290326
		 204 -54.678585578226553 205 -54.763123363850148 206 -54.847280981301957 207 -54.931025148365627
		 208 -55.014145403350049 209 -55.09646963877092 210 -55.178040394372189 211 -55.258892513651531
		 212 -55.339078450643072 213 -55.418641758770399 214 -55.497644264372042 215 -55.57613945842882
		 216 -55.654196190171767 217 -55.731877351181033 218 -55.80925189079754 219 -55.886388062726638
		 220 -55.963341422687556 221 -56.040170610376784 222 -56.116897936066891 223 -56.193539516485409
		 224 -56.270059551911608 225 -56.346380723175194 226 -56.422375212406585 227 -56.49783490361213
		 228 -56.572489787501667 229 -56.64600300607993 230 -56.717970410801058 231 -56.787935020147387
		 232 -56.855415348271123 233 -56.919917694364379 234 -56.98095103941786 235 -57.037971702160675
		 236 -57.092330783423051 237 -57.145541869239111 238 -57.197712189446058 239 -57.25019662543523
		 240 -57.304419309920519 241 -57.360262530651873 242 -57.417573935079758 243 -57.476159416613505
		 244 -57.535774553990109 245 -57.596110863757474 246 -57.656788692846632 247 -57.717339046176534
		 248 -57.777188910701895 249 -57.835643432620031 250 -57.891874565479256;
	setAttr ".ktv[250:499]" 251 -57.944910883217069 252 -57.99364180855865 253 -58.036847390196129
		 254 -58.073265642891663 255 -58.101699080197953 256 -58.121188208555139 257 -58.131192130369769
		 258 -58.131757421026613 259 -58.123586622075905 260 -58.107963802608239 261 -58.086544995899146
		 262 -58.061107011190835 263 -58.03331006606227 264 -58.004558534848513 265 -57.975946437664639
		 266 -57.948269004099146 267 -57.921177976433235 268 -57.894072510155631 269 -57.867120292351622
		 270 -57.840447256467606 271 -57.814141562716031 272 -57.788257832584556 273 -57.76282209349791
		 274 -57.73783586780241 275 -57.713279633959559 276 -57.689115723015917 277 -57.665290738360213
		 278 -57.641737642114627 279 -57.618377535037169 280 -57.595121207384636 281 -57.571870453034322
		 282 -57.548519279773664 283 -57.524955017490768 284 -57.501060001446838 285 -57.476710841241378
		 286 -57.451779561264992 287 -57.426134604887935 288 -57.399641632863947 289 -57.372164228432759
		 290 -57.343564745246205 291 -57.313705235342248 292 -57.282448509590438 293 -57.249659468324801
		 294 -57.215206787387537 295 -57.179415288301797 296 -57.142753661094922 297 -57.105314724278713
		 298 -57.067218223258124 299 -57.028164460444735 300 -56.985935841519286 301 -56.939659666546241
		 302 -56.889400347651474 303 -56.835178915254566 304 -56.777039543546572 305 -56.715043554050752
		 306 -56.649274859119494 307 -56.57983948224463 308 -56.506857938216619 309 -56.430473194854706
		 310 -56.350846193019976 311 -56.268150600145077 312 -56.18258118398181 313 -56.094344910750749
		 314 -56.003661536246021 315 -55.910767698944468 316 -55.815907707701733 317 -55.719337755229745
		 318 -55.621325989349998 319 -55.522145770974703 320 -55.422078322371064 321 -55.32141313919324
		 322 -55.220444278944221 323 -55.119467697885042 324 -55.018784385738961 325 -54.918697788448107
		 326 -54.819512336656317 327 -54.721532648967894 328 -54.62524161859578 329 -54.530884832991077
		 330 -54.438396305003948 331 -54.347692025707971 332 -54.258671695841613 333 -54.171220329127266
		 334 -54.085209831117865 335 -54.000499921742424 336 -53.916939400328744 337 -53.834367056394782
		 338 -53.752612691056214 339 -53.671497745932498 340 -53.59083650678474 341 -53.51043768734737
		 342 -53.430102605728159 343 -53.349626652990281 344 -53.268799985894475 345 -53.187408301501961
		 346 -53.105234372429202 347 -53.022055606096458 348 -52.937645549673547 349 -52.851774543132322
		 350 -52.764210151137931 351 -52.674717914024342 352 -52.583061202605492 353 -52.489076419654083
		 354 -52.391929354044997 355 -52.290443730128722 356 -52.183874290972938 357 -52.071914381538463
		 358 -51.954185200026458 359 -51.830295766570217 360 -51.699844326391833 361 -51.562420375481466
		 362 -51.417606795890933 363 -51.256609307791322 364 -51.069217217321075 365 -50.853691313781873
		 366 -50.610058529442441 367 -50.340971930098583 368 -50.05198551655748 369 -49.750852468169043
		 370 -49.4459979398926 371 -49.144920993395573 372 -48.853236536307428 373 -48.574506859863483
		 374 -48.310574730634684 375 -48.062052428938969 376 -47.828921479813445 377 -47.607568787466064
		 378 -47.393112134949028 379 -47.186925144055785 380 -46.990192245657802 381 -46.803546855371309
		 382 -46.621066630181453 383 -46.43731138018817 384 -46.25347505574031 385 -46.070838790280035
		 386 -45.890733503791246 387 -45.714527671639168 388 -45.543655946895001 389 -45.379551689468748
		 390 -45.223579551601993 391 -45.076985335305132 392 -44.940856969981617 393 -44.815859244994463
		 394 -44.702275171159201 395 -44.603051483710296 396 -44.519729813820973 397 -44.446352137886898
		 398 -44.380318182474824 399 -44.322328349475654 400 -44.272531745359473 401 -44.230733865429769
		 402 -44.196298534483965 403 -44.168263978930234 404 -44.145155377109027 405 -44.125147259124269
		 406 -44.105877060365565 407 -44.08440910357011 408 -44.057234085242641 409 -44.019889143178645
		 410 -43.966815154698381 411 -43.890977640932846 412 -43.78317021647991 413 -43.630933420029777
		 414 -43.418077714332931 415 -43.168518006236013 416 -42.91497212032381 417 -42.664275947736158
		 418 -42.422729855524132 419 -42.196628984854087 420 -41.992530774747024 421 -41.817348792071037
		 422 -41.678255030440596 423 -41.582446232765633 424 -41.536738771363027 425 -41.547061351117648
		 426 -41.61774715110905 427 -41.751011949391916 428 -41.946495004706335 429 -42.201164150476544
		 430 -42.509503014665995 431 -42.863877620853977 432 -43.255123201482071 433 -43.673267556025195
		 434 -44.108056703939241 435 -44.549067388789318 436 -44.991772166188774 437 -45.45669758968652
		 438 -45.969176372473626 439 -46.528964746487006 440 -47.132173876701295 441 -47.773793700403736
		 442 -48.448094681084527 443 -49.149160940044339 444 -49.871252536998625 445 -50.608930505864777
		 446 -51.357240649768414 447 -52.111694598216062 448 -52.868058919600692 449 -53.622711876953225
		 450 -54.372207889306821 451 -55.113430935968978 452 -55.843557745727189 453 -56.560011672019591
		 454 -57.260467677136873 455 -57.942862264605637 456 -58.605331541481995 457 -59.246324264352616
		 458 -59.86448097457663 459 -60.458683266817282 460 -61.028060298835449 461 -61.571956676715878
		 462 -62.089918395284982 463 -62.581696806693422 464 -63.0472114572134 465 -63.486547354180161
		 466 -63.899920394683001 467 -64.287667278187016 468 -64.650259212487484 469 -64.988215107847182
		 470 -65.302136058645232 471 -65.592674641298771 472 -65.860521018084242 473 -66.106390471937459
		 474 -66.331013468453904 475 -66.53512581082839 476 -66.719453499994799 477 -66.884720337990942
		 478 -67.031631190996478 479 -67.160869827780218 480 -67.273098245101863 481 -67.368955290720692
		 482 -67.456383492028607 483 -67.542924945601143 484 -67.628587160141691 485 -67.713373625542573
		 486 -67.797290009448517 487 -67.880346094977227 488 -67.962545974455395 489 -68.043893707017389
		 490 -68.124398676080958 491 -68.204067097213994 492 -68.282902858291791 493 -68.360912083011783
		 494 -68.438103926173213 495 -68.514482991681135 496 -68.590053451744041 497 -68.664823612639239
		 498 -68.738800529785195 499 -68.811988736997108 500 -68.88439291868076;
	setAttr ".ktv[500:749]" 501 -68.956022054721842 502 -69.026882027208615 503 -69.096977428806795
		 504 -69.166313401227924 505 -69.234898417121812 506 -69.302738380352352 507 -69.369838547812108
		 508 -69.436204633054956 509 -69.50184577000006 510 -69.566766239257817 511 -69.630969188600446
		 512 -69.694458203848924 513 -69.75724028932089 514 -69.819323198384382 515 -69.880714003310473
		 516 -69.941419624529374 517 -70.001448116212103 518 -70.060804905560204 519 -70.11949305456433
		 520 -70.177515784584443 521 -70.234877105256402 522 -70.291584904723692 523 -70.347645462588844
		 524 -70.403064651964584 525 -70.457848187366153 526 -70.512002301314027 527 -70.565533174184722
		 528 -70.618445477121526 529 -70.670743972429023 530 -70.72243326101227 531 -70.773519306072572
		 532 -70.824008418174841 533 -70.873905372739259 534 -70.923215145806637 535 -70.971942427013232
		 536 -71.020093074978334 537 -71.067673187541857 538 -71.114687095399034 539 -71.16113915753975
		 540 -71.207033790396068 541 -71.252375413852036 542 -71.297169876297815 543 -71.34142247690356
		 544 -71.385138338925302 545 -71.428322481956414 546 -71.470979981242891 547 -71.513115942776977
		 548 -71.554735500895731 549 -71.595842892061384 550 -71.63644257619606 551 -71.676538838183802
		 552 -71.716135997381826 553 -71.75523867628273 554 -71.793852049142231 555 -71.831980492161634
		 556 -71.869628458843806 557 -71.906800166431466 558 -71.943499906978275 559 -71.979731964591465
		 560 -72.015501049993361 561 -72.050811521190312 562 -72.085667562021044 563 -72.120073325832806
		 564 -72.154032935602032 565 -72.187550433171864 566 -72.220629899539944 567 -72.253275694183117
		 568 -72.285491898520149 569 -72.317282545859428 570 -72.348651537252962 571 -72.379602743312375
		 572 -72.410140105022734 573 -72.440267382059417 574 -72.469988573442251 575 -72.499307627835421
		 576 -72.528228238547356 577 -72.556754256916761 578 -72.584889353755514 579 -72.612637170054839
		 580 -72.640001366955744 581 -72.666985625671913 582 -72.693593471778016 583 -72.719828742319905
		 584 -72.745694937290381 585 -72.77119551568255 586 -72.796333863068384 587 -72.82111343964344
		 588 -72.845537583207843 589 -72.869609657151159 590 -72.893333001280709 591 -72.916710882889305
		 592 -72.939746572479478 593 -72.962443370080024 594 -72.984804749274446 595 -73.006833906514629
		 596 -73.028534200808139 597 -73.049908958932136 598 -73.070961282094132 599 -73.091694483642414
		 600 -73.112111701188624 601 -73.132216043032088 602 -73.152010670736033 603 -73.171498487979207
		 604 -73.190682437657856 605 -73.209565563882123 606 -73.22815084068165 607 -73.246441124551708
		 608 -73.264439442990493 609 -73.282148562611397 610 -73.299571469255056 611 -73.316710984565205
		 612 -73.333569958052465 613 -73.350151171704866 614 -73.36645743584134 615 -73.382491535438689
		 616 -73.398256239855897 617 -73.413754271295375 618 -73.42898838012843 619 -73.443961249647771
		 620 -73.458675686267298 621 -73.473134240307147 622 -73.487339680638527 623 -73.501294568422395
		 624 -73.515001588983765 625 -73.528463315503757 626 -73.541682351251893 627 -73.554661282584135
		 628 -73.567402585063377 629 -73.579908953587491 630 -73.592182737456213 631 -73.604226563406669
		 632 -73.616042809811489 633 -73.627633927478755 634 -73.639002492932235 635 -73.650150880181144
		 636 -73.661081542662899 637 -73.671796919622025 638 -73.6822994364084 639 -73.692591504771386
		 640 -73.702675429721978 641 -73.712553690214961 642 -73.72222856560191 643 -73.731702416247614
		 644 -73.740977590318579 645 -73.750056424053014 646 -73.75894124202685 647 -73.76763431088807
		 648 -73.776137932744263 649 -73.78445439881304 650 -73.792585943216537 651 -73.800534882644541
		 652 -73.808303384311927 653 -73.815893739487734 654 -73.823308158247585 655 -73.830548777020766
		 656 -73.837617867336576 657 -73.844517645168409 658 -73.851250317554815 659 -73.857817990289618
		 660 -73.864222899582359 661 -73.870467227069753 662 -73.876553053910399 663 -73.882482638354674
		 664 -73.888258092345978 665 -73.893881520473485 666 -73.8993550663197 667 -73.904680866445418
		 668 -73.909861004467601 669 -73.914897649637325 670 -73.919792872524596 671 -73.92454878357475
		 672 -73.929167487158594 673 -73.93365098965262 674 -73.93800147596626 675 -73.94222098728828
		 676 -73.946311559482524 677 -73.950275269254348 678 -73.954114188265791 679 -73.957830383297434
		 680 -73.961425870437708 681 -73.964902707208921 682 -73.968262946718525 683 -73.971508637809606
		 684 -73.97464177927624 685 -73.977664411898473 686 -73.980578572623969 687 -73.983386248800628
		 688 -73.986089516048537 689 -73.988690354749892 690 -73.99119074202325 691 -73.993592743603571
		 692 -73.995898330415557 693 -73.998109516355768 694 -74.000228266663186 695 -74.002256635623084
		 696 -74.004196583235839 697 -74.006050112909776 698 -74.007819179869671 699 -74.009505828783119
		 700 -74.011111964680978 701 -74.012639673886113 702 -74.014090857476646 703 -74.015467506353573
		 704 -74.016771609671395 705 -74.018005154929867 706 -74.019170082259123 707 -74.020268376123525
		 708 -74.021302019591332 709 -74.022272994416085 710 -74.023183235323557 711 -74.024034721680138
		 712 -74.02482943176642 713 -74.025569342848868 714 -74.026256385465274 715 -74.026892489282446
		 716 -74.027479720499102 717 -74.028019961433557 718 -74.02851518527676 719 -74.028967364578406
		 720 -74.029378471197546 721 -74.029750430780609 722 -74.030085214328764 723 -74.03038479240135
		 724 -74.03065108939029 725 -74.030886120876929 726 -74.031091810587739 727 -74.031270127745202
		 728 -74.031422995563318 729 -74.031552382819086 730 -74.031660303880841 731 -74.031748635664712
		 732 -74.031819346501152 733 -74.031874450388287 734 -74.031915823943805 735 -74.03194548102708
		 736 -74.031965389685794 737 -74.031977426402818 738 -74.031983650709137 739 -74.031985893289487
		 740 -74.03198625942504 741 -74.03198625942504 742 -74.03198625942504 743 -74.03198625942504
		 744 -74.03198625942504 745 -74.03198625942504 746 -74.03198625942504 747 -74.03198625942504
		 748 -74.03198625942504 749 -74.03198625942504 750 -74.03198625942504;
	setAttr ".ktv[750:800]" 751 -74.03198625942504 752 -74.03198625942504 753 -74.03198625942504
		 754 -74.03198625942504 755 -74.03198625942504 756 -74.03198625942504 757 -74.03198625942504
		 758 -74.03198625942504 759 -74.03198625942504 760 -74.03198625942504 761 -74.03198625942504
		 762 -74.03198625942504 763 -74.03198625942504 764 -74.03198625942504 765 -74.03198625942504
		 766 -74.03198625942504 767 -74.03198625942504 768 -74.03198625942504 769 -74.03198625942504
		 770 -74.03198625942504 771 -74.03198625942504 772 -74.03198625942504 773 -74.03198625942504
		 774 -74.03198625942504 775 -74.03198625942504 776 -74.03198625942504 777 -74.03198625942504
		 778 -74.03198625942504 779 -74.03198625942504 780 -74.03198625942504 781 -74.03198625942504
		 782 -74.03198625942504 783 -74.03198625942504 784 -74.03198625942504 785 -74.03198625942504
		 786 -74.03198625942504 787 -74.03198625942504 788 -74.03198625942504 789 -74.03198625942504
		 790 -74.03198625942504 791 -74.03198625942504 792 -74.03198625942504 793 -74.03198625942504
		 794 -74.03198625942504 795 -74.03198625942504 796 -74.03198625942504 797 -74.03198625942504
		 798 -74.03198625942504 799 -74.03198625942504 800 -74.03198625942504 801 -74.03198625942504;
	setAttr -s 801 ".kot";
	setAttr ".kot[0:499]"  18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr ".kot[500:800]"  18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 801 ".ktl";
	setAttr ".ktl[0:499]" no yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes;
createNode animCurveTA -n "camera11_sampler_rotateY_Baked";
	rename -uid "0C841435-4C50-E512-476A-6488EBD6D43E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 801 ".ktv";
	setAttr ".ktv[0:249]"  1 -81.000000537310527 2 -81.000000537310527 3 -80.999996324224043
		 4 -80.999929666543565 5 -80.99962510172324 6 -80.998764944675685 7 -80.996875446459342
		 8 -80.993324158201375 9 -80.987332756597908 10 -80.978010619943319 11 -80.964414892254837
		 12 -80.945643429971611 13 -80.920968712404658 14 -80.890020527201244 15 -80.853026211537767
		 16 -80.811120432691993 17 -80.766733327007884 18 -80.723983115988347 19 -80.680640420198415
		 20 -80.633009526786424 21 -80.580845977382722 22 -80.523897747461533 23 -80.461906694335454
		 24 -80.394582969654493 25 -80.321558021355926 26 -80.242532088306831 27 -80.157213026736812
		 28 -80.065257833666834 29 -79.966221976592578 30 -79.859791402969975 31 -79.745630451813327
		 32 -79.623229145190379 33 -79.492268475223327 34 -79.352348930224423 35 -79.202970706409189
		 36 -79.043850768454718 37 -78.874430537431309 38 -78.694446018603003 39 -78.503361566282507
		 40 -78.300929544971311 41 -78.086641469916827 42 -77.860301287507511 43 -77.621466618474074
		 44 -77.369948518068199 45 -77.105513732747738 46 -76.827902328026227 47 -76.537099306070431
		 48 -76.233045753241399 49 -75.915737429984745 50 -75.585309462660945 51 -75.24206780990076
		 52 -74.886364503900538 53 -74.518692584930847 54 -74.139708136886853 55 -73.750244427243658
		 56 -73.35132769395743 57 -72.944195109273906 58 -72.530315526865138 59 -72.11141171380055
		 60 -71.68948693378222 61 -71.266852479610222 62 -70.846160242245915 63 -70.432093776055694
		 64 -70.029603349625731 65 -69.642159057456396 66 -69.273435106721251 67 -68.927425183674643
		 68 -68.608388369267374 69 -68.32073299243352 70 -68.069109290991477 71 -67.858542638372057
		 72 -67.694164075963954 73 -67.581345679788541 74 -67.526181216605536 75 -67.532592873870755
		 76 -67.610257941329266 77 -67.762626846706254 78 -67.997105365276099 79 -68.317861148470612
		 80 -68.704613656934185 81 -69.147981993540299 82 -69.647638272002155 83 -70.202677624970917
		 84 -70.81191164036467 85 -71.474103132486874 86 -72.18770164585662 87 -72.951093003903154
		 88 -73.762461223995828 89 -74.619771605898677 90 -75.520930084958479 91 -76.463608241201257
		 92 -77.445332289015141 93 -78.463545933239757 94 -79.515499275854225 95 -80.598292786129974
		 96 -81.708963890362909 97 -82.844414467316426 98 -84.001374628884918 99 -85.176527922686702
		 100 -86.366469724390939 101 -87.567686440762728 102 -88.776546164041292 103 -89.989395329023381
		 104 -91.20251825016112 105 -92.412135404015544 106 -93.61438029785991 107 -94.805387469951029
		 108 -95.9812713679962 109 -97.138126612329273 110 -98.27201554082751 111 -99.378989191961224
		 112 -100.45514004561146 113 -101.49657913831496 114 -102.49944536207813 115 -103.45988413450075
		 116 -104.37409625849286 117 -105.2383605681237 118 -106.04902191766615 119 -106.80249724703724
		 120 -107.49525019439147 121 -108.12386246660223 122 -108.68503160375901 123 -109.17556627116572
		 124 -109.59237641794583 125 -109.93282969636779 126 -110.18408899208642 127 -110.32865124518534
		 128 -110.37086202285118 129 -110.31962722148984 130 -110.17889941391911 131 -109.95580201462494
		 132 -109.65664211536489 133 -109.28771442357305 134 -108.85512958737029 135 -108.36490873818128
		 136 -107.82309160526582 137 -107.23549308362711 138 -106.60776537561907 139 -105.94557140475976
		 140 -105.25430812337368 141 -104.53918356908285 142 -103.80540218899624 143 -103.05780367080244
		 144 -102.30114951973853 145 -101.54002195345501 146 -100.77867939104672 147 -100.02137505938056
		 148 -99.271913530292068 149 -98.534126375509061 150 -97.811380210197072 151 -97.107056006807682
		 152 -96.424063629600937 153 -95.765324777460862 154 -95.133286862386299 155 -94.530370902318836
		 156 -93.958625791099465 157 -93.419885931478476 158 -92.915851487691583 159 -92.447813035713423
		 160 -92.016951288645032 161 -91.62423750905117 162 -91.270301201718439 163 -90.955602996687716
		 164 -90.680812174189683 165 -90.43893439986924 166 -90.219150908618985 167 -90.01936140810939
		 168 -89.838140999425832 169 -89.675382332885306 170 -89.530791031268507 171 -89.402744057163432
		 172 -89.289667846675968 173 -89.190048755665615 174 -89.102444776749778 175 -89.025498165367921
		 176 -88.957947411795573 177 -88.898609255716323 178 -88.846409307616469 179 -88.800407354287913
		 180 -88.759751966498627 181 -88.723666590140539 182 -88.691539847620632 183 -88.662771636766465
		 184 -88.636920804073199 185 -88.613555010515284 186 -88.592365601514061 187 -88.573043155938265
		 188 -88.555389452205134 189 -88.539176586902457 190 -88.524291484708755 191 -88.510563910134891
		 192 -88.497934023490046 193 -88.486282873456929 194 -88.475568638413804 195 -88.465727515682914
		 196 -88.456705938852835 197 -88.448492604432104 198 -88.441021424243573 199 -88.434309033049473
		 200 -88.428288933080665 201 -88.422982739227834 202 -88.418334329100475 203 -88.414354396300197
		 204 -88.411003449998844 205 -88.408272568210862 206 -88.406139685603819 207 -88.404527902049409
		 208 -88.403546011150297 209 -88.403199579767218 210 -88.403134666842135 211 -88.403460461622245
		 212 -88.404431158085643 213 -88.405705055174792 214 -88.407344818219727 215 -88.409296230820772
		 216 -88.41154397798887 217 -88.414036208526099 218 -88.416737315544765 219 -88.419610872005705
		 220 -88.422585890802182 221 -88.425638336253755 222 -88.428660208099913 223 -88.431609875961058
		 224 -88.434368049119868 225 -88.43681839162258 226 -88.438849499569017 227 -88.440375745190721
		 228 -88.440723676806897 229 -88.440540664215192 230 -88.438882877249625 231 -88.435673398490991
		 232 -88.430651326036525 233 -88.423490341641227 234 -88.413866867535731 235 -88.401347887525901
		 236 -88.387955744943355 237 -88.375947369291737 238 -88.365691669972833 239 -88.356914859510226
		 240 -88.349585976484207 241 -88.344028984665357 242 -88.340514674706895 243 -88.33984626446076
		 244 -88.341850746401732 245 -88.347472011019477 246 -88.357139017743023 247 -88.371437689318356
		 248 -88.390980345694956 249 -88.416387463514823 250 -88.448241497258337;
	setAttr ".ktv[250:499]" 251 -88.487034673365869 252 -88.533087446974065 253 -88.586434037823992
		 254 -88.646683951506674 255 -88.712910690171 256 -88.783536411883233 257 -88.856381663056766
		 258 -88.92883577827557 259 -88.998191835478067 260 -89.062063127942437 261 -89.118725822357248
		 262 -89.167252830796059 263 -89.207494371940186 264 -89.239888163976573 265 -89.265241287256984
		 266 -89.284532519547724 267 -89.29920414411292 268 -89.310216472238352 269 -89.317892806482647
		 270 -89.322535575849628 271 -89.324435399605903 272 -89.323821942640237 273 -89.320956787335859
		 274 -89.316028445874451 275 -89.309205950625881 276 -89.300623887209923 277 -89.290382620288398
		 278 -89.278547857294285 279 -89.26515025095641 280 -89.25018489193873 281 -89.233610532211188
		 282 -89.215348499145392 283 -89.195280959461442 284 -89.173246756178827 285 -89.14904336517715
		 286 -89.122422743790224 287 -89.093086571337196 288 -89.060681635088386 289 -89.024794238577925
		 290 -88.984943742848969 291 -88.940574985483025 292 -88.891049379546075 293 -88.835634568441435
		 294 -88.77349239102351 295 -88.704560847925578 296 -88.629176675945828 297 -88.547017470133639
		 298 -88.457786211780643 299 -88.360962659479029 300 -88.255056440075649 301 -88.13950959697128
		 302 -88.014339946707878 303 -87.879580927331403 304 -87.735319719105263 305 -87.58168510603987
		 306 -87.418858773309381 307 -87.247074442405307 308 -87.06660232852083 309 -86.877765529561728
		 310 -86.680930914234906 311 -86.476498350274127 312 -86.264917903850403 313 -86.046671536567757
		 314 -85.82227431516236 315 -85.592282693326894 316 -85.357275559404613 317 -85.117862746834774
		 318 -84.874685077060064 319 -84.62840032103945 320 -84.379688524543013 321 -84.12925257021331
		 322 -83.87781041173271 323 -83.62608931663101 324 -83.374832052868015 325 -83.124791290894677
		 326 -82.876726278766711 327 -82.631400869389111 328 -82.390030161124855 329 -82.153239491393677
		 330 -81.920874148993946 331 -81.692733690227726 332 -81.468576036028168 333 -81.248121152030336
		 334 -81.031054791199807 335 -80.817030687090522 336 -80.605673554301106 337 -80.396581231505095
		 338 -80.189327113811942 339 -79.983461595002112 340 -79.778514832139152 341 -79.574000101420822
		 342 -79.369410218744875 343 -79.164220659119849 344 -78.957891018715145 345 -78.749866651308722
		 346 -78.539581783780434 347 -78.326454482990684 348 -78.109889670306387 349 -77.889280321150608
		 350 -77.664008232288751 351 -77.433445302985376 352 -77.196953106536441 353 -76.953733219235488
		 354 -76.704303697000285 355 -76.449761483239556 356 -76.190240698353364 357 -75.924943776400823
		 358 -75.653171186445263 359 -75.374193510448833 360 -75.087241707304955 361 -74.791496180498839
		 362 -74.486072978596496 363 -74.152829091372325 364 -73.771812864749876 365 -73.340592780782487
		 366 -72.859509349161954 367 -72.332726002479234 368 -71.768570776168545 369 -71.178481632133042
		 370 -70.57484617761888 371 -69.968805742513069 372 -69.368955563550131 373 -68.781106286845812
		 374 -68.208715778811523 375 -67.653539660676998 376 -67.115954388942953 377 -66.600756481347929
		 378 -66.113951142627172 379 -65.651057738849616 380 -65.207950314174212 381 -64.781495347207112
		 382 -64.354329467591285 383 -63.909265277057116 384 -63.443767690626046 385 -62.95513877737325
		 386 -62.440553574610441 387 -61.897058225863425 388 -61.32147908560713 389 -60.710486000332487
		 390 -60.060651599055788 391 -59.36847192518217 392 -58.630219420368917 393 -57.842088978199342
		 394 -57.000195524575076 395 -56.100059027857 396 -55.138149119756605 397 -54.114330282040939
		 398 -53.028097701839101 399 -51.877936333988742 400 -50.662955293419557 401 -49.382664901049367
		 402 -48.037277146201646 403 -46.62744656421372 404 -45.154695320577972 405 -43.621043652495324
		 406 -42.029331151049263 407 -40.383186254508594 408 -38.686862376522718 409 -36.945592791224271
		 410 -35.165482713221458 411 -33.353561586068288 412 -31.518291458990888 413 -29.670341351630331
		 414 -27.823593593165555 415 -25.975348349809614 416 -24.116379159794423 417 -22.248196857614086
		 418 -20.372407565720227 419 -18.490584406972776 420 -16.604133802122217 421 -14.71445465421499
		 422 -12.823054946150284 423 -10.931795248930284 424 -9.0431484466680967 425 -7.1603961713592836
		 426 -5.2876835170427787 427 -3.4298460148017158 428 -1.5919815169716176 429 0.22102729601475526
		 430 2.0050632528295629 431 3.7571883358865965 432 5.4758025203801362 433 7.1605974612061338
		 434 8.8124532894593379 435 10.433069632152167 436 12.028876054402227 437 13.613764945318506
		 438 15.176210179931269 439 16.710159663959281 440 18.211096164226284 441 19.67600909225748
		 442 21.103488209605821 443 22.493619545818959 444 23.8476364022399 445 25.167584343854653
		 446 26.455824435211319 447 27.714968379162965 448 28.947178688607472 449 30.154691541621894
		 450 31.339199913573264 451 32.502015169638511 452 33.644035156992409 453 34.765775476823528
		 454 35.867371679260486 455 36.948634641101961 456 38.008997104820544 457 39.047740035222077
		 458 40.063847897409424 459 41.056135721517897 460 42.023311924880467 461 42.963987207197384
		 462 43.876747797330594 463 44.760139877325649 464 45.61276019329248 465 46.433244967743015
		 466 47.220332817327552 467 47.972814715286034 468 48.689703170260692 469 49.370069001683653
		 470 50.013150900146378 471 50.618336890888649 472 51.185168207049259 473 51.71333688229663
		 474 52.202680353438261 475 52.653175342201735 476 53.064951842865383 477 53.438242365224475
		 478 53.773405808608686 479 54.070911686702736 480 54.331321554520585 481 54.555276667589091
		 482 54.760807456807584 483 54.965450941868163 484 55.16919653648074 485 55.372046297072131
		 486 55.573995676624762 487 55.775027902266388 488 55.975143020438324 489 56.174341201031424
		 490 56.372606926759261 491 56.569934482027158 492 56.766323935130181 493 56.961770224031376
		 494 57.156257959299033 495 57.349786468902941 496 57.542355065416906 497 57.733952517242095
		 498 57.924569568876322 499 58.11420580829413 500 58.302859142711725;
	setAttr ".ktv[500:749]" 501 58.490516223984599 502 58.677171872282919 503 58.862824918897751
		 504 59.047472339840255 505 59.23110028181609 506 59.413706045256717 507 59.595289604062579
		 508 59.775849318390989 509 59.955375167375955 510 60.133859810535206 511 60.31129686326031
		 512 60.487679966204077 513 60.662996114857521 514 60.837245589021038 515 61.010432716654435
		 516 61.18256132540256 517 61.353628047286755 518 61.523621685149628 519 61.692535063734518
		 520 61.86036144344083 521 62.027093910427588 522 62.192725332485658 523 62.357255610057756
		 524 62.520685684364366 525 62.683016064714614 526 62.844243228529884 527 63.004359325372164
		 528 63.16336181162918 529 63.321248675174168 530 63.478017492526412 531 63.633663848339062
		 532 63.788183570639831 533 63.941574982936224 534 64.093837143745063 535 64.244968343451518
		 536 64.39496673998643 537 64.543828398228669 538 64.691550630120588 539 64.838131107302559
		 540 64.983567834183233 541 65.127858067298547 542 65.270998227043037 543 65.412988285788344
		 544 65.553829070068588 545 65.693521247815525 546 65.832065844416476 547 65.969462248828549
		 548 66.105707568226379 549 66.24080039589208 550 66.374740430831665 551 66.507526993368032
		 552 66.639159713081071 553 66.769638204366117 554 66.898961907562395 555 67.027130906993591
		 556 67.154145953572893 557 67.280007215309254 558 67.404715322801394 559 67.528270997476298
		 560 67.650674560312325 561 67.771926501338143 562 67.892027804705677 563 68.010979572215675
		 564 68.128783022157677 565 68.245439310742682 566 68.36094988044033 567 68.47531618227066
		 568 68.588539587807958 569 68.700621962816427 570 68.811564933159616 571 68.921370238787574
		 572 69.030040090899462 573 69.137576275503392 574 69.243981494712756 575 69.349258134373002
		 576 69.453408227588355 577 69.556434624234754 578 69.658339745528622 579 69.759126121794267
		 580 69.858796572141515 581 69.957354204093107 582 70.054801788840521 583 70.151143585467167
		 584 70.246382583408405 585 70.340521771924074 586 70.433564081724299 587 70.525512929703098
		 588 70.616371486780352 589 70.706143222937342 590 70.794831722548622 591 70.882440499484673
		 592 70.968973723113436 593 71.05443568698081 594 71.138831144460326 595 71.222164000333422
		 596 71.304438966095489 597 71.385660824257315 598 71.465833688139739 599 71.544962663159183
		 600 71.623052368748603 601 71.700107491259459 602 71.776133193032152 603 71.851134527179511
		 604 71.925116164926706 605 71.998083139961324 606 72.070040389430275 607 72.140992564796846
		 608 72.21094514781305 609 72.27990277132082 610 72.34787108234481 611 72.414855247950314
		 612 72.480860699936287 613 72.54589275925953 614 72.609957008562091 615 72.673059439451094
		 616 72.735206451183686 617 72.796403648841107 618 72.856656872104054 619 72.915971838560637
		 620 72.974354894690947 621 73.031811509382109 622 73.088348154479448 623 73.143970608955385
		 624 73.198685276390933 625 73.252498241202034 626 73.305415833145446 627 73.357444437588441
		 628 73.408590115908211 629 73.458859928361903 630 73.508259662680203 631 73.556796767450365
		 632 73.604477782579906 633 73.651309172667851 634 73.697298020857701 635 73.742450699788222
		 636 73.786774008614088 637 73.830274792661086 638 73.872959942344906 639 73.914836392109322
		 640 73.955910738624439 641 73.996190381699819 642 74.035682000600147 643 74.074392695171355
		 644 74.112329604289599 645 74.149499904912219 646 74.185910811145646 647 74.221569382386889
		 648 74.256482904094611 649 74.290658696194626 650 74.324103921054913 651 74.35682615598202
		 652 74.388832436593034 653 74.420130439461971 654 74.450727849917143 655 74.480631808582189
		 656 74.509850024028182 657 74.538390042478582 658 74.56625943838759 659 74.593465430205882
		 660 74.620015838007561 661 74.645918316228645 662 74.671180160763527 663 74.695809459428688
		 664 74.719813748308994 665 74.743200586454748 666 74.765977747323475 667 74.788153026226013
		 668 74.8097340474948 669 74.830728840331545 670 74.851145069527774 671 74.870990611382211
		 672 74.890273360964258 673 74.90900084673973 674 74.927181384227268 675 74.944822728901627
		 676 74.961932652609448 677 74.978519135585515 678 74.994590173532004 679 75.010153777103696
		 680 75.025217778767683 681 75.039790217494769 682 75.053879145735991 683 75.067492628950703
		 684 75.080638552391207 685 75.093325006076995 686 75.105560091683245 687 75.117351729280728
		 688 75.128708235348128 689 75.139637551097707 690 75.15014762763542 691 75.160246811405713
		 692 75.169943072269419 693 75.179244581790485 694 75.188159327021097 695 75.196695689025191
		 696 75.204861670672514 697 75.212665475198321 698 75.220115119874706 699 75.22721901477172
		 700 75.233984997249536 701 75.24042168300555 702 75.246536921294876 703 75.252338953014032
		 704 75.257836024308901 705 75.263036386297159 706 75.267948101662384 707 75.272579430636881
		 708 75.276938637643156 709 75.281033991047465 710 75.284873569751227 711 75.288465649279075
		 712 75.291818508410728 713 75.294940428965134 714 75.297839502394822 715 75.300523822761761
		 716 75.303002066171302 717 75.305282138173411 718 75.307372332792397 719 75.30928094598157
		 720 75.311016276098627 721 75.312586429299287 722 75.313999706031012 723 75.315264408085127
		 724 75.316388645222816 725 75.317380914746508 726 75.318249328440388 727 75.319002192158962
		 728 75.319647619243071 729 75.32019391690126 730 75.320649586122684 731 75.321022548614337
		 732 75.321321112941433 733 75.321553781217744 734 75.321728476057629 735 75.321853699996382
		 736 75.321937762458234 737 75.321988586466645 738 75.322014868094101 739 75.322024337211744
		 740 75.322025883190292 741 75.322025883190292 742 75.322025883190292 743 75.322025883190292
		 744 75.322025883190292 745 75.322025883190292 746 75.322025883190292 747 75.322025883190292
		 748 75.322025883190292 749 75.322025883190292 750 75.322025883190292;
	setAttr ".ktv[750:800]" 751 75.322025883190292 752 75.322025883190292 753 75.322025883190292
		 754 75.322025883190292 755 75.322025883190292 756 75.322025883190292 757 75.322025883190292
		 758 75.322025883190292 759 75.322025883190292 760 75.322025883190292 761 75.322025883190292
		 762 75.322025883190292 763 75.322025883190292 764 75.322025883190292 765 75.322025883190292
		 766 75.322025883190292 767 75.322025883190292 768 75.322025883190292 769 75.322025883190292
		 770 75.322025883190292 771 75.322025883190292 772 75.322025883190292 773 75.322025883190292
		 774 75.322025883190292 775 75.322025883190292 776 75.322025883190292 777 75.322025883190292
		 778 75.322025883190292 779 75.322025883190292 780 75.322025883190292 781 75.322025883190292
		 782 75.322025883190292 783 75.322025883190292 784 75.322025883190292 785 75.322025883190292
		 786 75.322025883190292 787 75.322025883190292 788 75.322025883190292 789 75.322025883190292
		 790 75.322025883190292 791 75.322025883190292 792 75.322025883190292 793 75.322025883190292
		 794 75.322025883190292 795 75.322025883190292 796 75.322025883190292 797 75.322025883190292
		 798 75.322025883190292 799 75.322025883190292 800 75.322025883190292 801 75.322025883190292;
	setAttr -s 801 ".kot";
	setAttr ".kot[0:499]"  18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr ".kot[500:800]"  18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 801 ".ktl";
	setAttr ".ktl[0:499]" no yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes;
createNode animCurveTA -n "camera11_sampler_rotateZ_Baked";
	rename -uid "8578EB70-4335-B4B4-29BD-D897C572EDD1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 801 ".ktv";
	setAttr ".ktv[0:249]"  1 2.0331548223494798e-14 2 2.0331548223494798e-14
		 3 2.0331534246804034e-14 4 2.0331313477264e-14 5 2.0330308039563127e-14 6 2.0327483116267598e-14
		 7 2.0321323573236184e-14 8 2.0309863720253638e-14 9 2.0290789557943153e-14 10 2.0261637095166017e-14
		 11 2.0220112692185979e-14 12 2.0164564582740939e-14 13 2.00946410793648e-14 14 2.0012171279243128e-14
		 15 1.9922308846058013e-14 16 1.9834989540467448e-14 17 1.9766746594762023e-14 18 1.9741777446951646e-14
		 19 1.969590175321537e-14 20 1.958437808539161e-14 21 1.9428579217369154e-14 22 1.9266829714500765e-14
		 23 1.9159294591800966e-14 24 1.7987002502513447e-14 25 1.2660509933992873e-14 26 5.4504329175524099e-15
		 27 3.3476904330853819e-16 28 2.088026734562349e-15 29 9.5469771918414626e-15 30 1.6844719110756046e-14
		 31 1.4565811652620378e-14 32 -2.6636397505926859e-15 33 -1.7027589787733522e-14 34 -1.2686354697129852e-14
		 35 -2.4191228200113435e-15 36 0 37 0 38 1.1208500632881232e-15 39 1.1817826949036175e-14
		 40 1.241543611124819e-14 41 -1.078100265117418e-14 42 -1.12078131290691e-14 43 -1.4770459461078084e-16
		 44 -4.3334219587347805e-15 45 -5.3908268931297463e-15 46 6.5645284591751675e-15 47 2.4053275241080985e-15
		 48 -1.7112933855134017e-15 49 -6.5481343232823889e-15 50 -6.3735722324328442e-15
		 51 -1.4643986055292929e-15 52 0 53 -2.0553092410847157e-15 54 -3.3994485411670041e-15
		 55 4.973532500760591e-15 56 -4.8505211265122659e-16 57 -5.0120240617189514e-15 58 0
		 59 0 60 1.2574573574469815e-15 61 2.9182587468122076e-15 62 0 63 0 64 0 65 4.4708767907309313e-16
		 66 2.655405741918338e-15 67 -3.5133481663872266e-15 68 0 69 0 70 6.0608543175420521e-15
		 71 4.2194250526384251e-15 72 0 73 0 74 -3.808656143583716e-15 75 0 76 0 77 0 78 -4.2431968250958977e-15
		 79 -2.2301724124982539e-15 80 8.7255789758506787e-15 81 -1.8173282069731689e-15 82 4.4144228516981721e-15
		 83 0 84 4.0629414340239474e-15 85 4.6850985264811753e-15 86 -2.218686656542595e-15
		 87 -5.3477682414161545e-15 88 0 89 -1.6423930601578423e-15 90 -5.5460962004806293e-19
		 91 -5.048800776908672e-15 92 -3.2998035773330086e-15 93 0 94 -7.1983000913999854e-15
		 95 -5.7569575401875312e-15 96 0 97 1.2288527361093228e-14 98 -6.9445034116346875e-17
		 99 -1.8796373290480386e-14 100 5.6352062998373647e-16 101 2.258004754562659e-15 102 2.0408852480910986e-14
		 103 1.9654079754796375e-13 104 2.1249850607732485e-15 105 2.6208152562990257e-14
		 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0
		 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0
		 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0
		 148 0 149 2.5444437451708134e-14 150 2.6140131668571559e-15 151 4.8590794346840661e-15
		 152 2.5444437451708134e-14 153 2.3156159691023958e-14 154 0 155 0 156 1.8437504105330642e-14
		 157 5.0888874903416268e-14 158 5.0888874903416268e-14 159 6.1952955435247878e-14
		 160 -5.5136203761081864e-14 161 1.0091085541597424e-13 162 3.7177493912791713e-14
		 163 6.1119919428020747e-14 164 -2.4807044779539845e-13 165 -7.060484100280407e-17
		 166 -6.5855367992592725e-13 167 0 168 0 169 2.7102762924510716e-13 170 -6.8032695486569812e-14
		 171 -1.1551610203755259e-13 172 0 173 -1.0483179584420092e-13 174 -1.4670525762213918e-13
		 175 0 176 0 177 1.2935695238957802e-13 178 1.0332729200608024e-13 179 0 180 0 181 0
		 182 0 183 -4.4834427913428184e-14 184 -1.3010879466452503e-13 185 -3.7496086632850467e-14
		 186 1.2095295619261144e-13 187 5.1065994621192463e-14 188 -1.0618937754236551e-13
		 189 -7.6403081257576492e-14 190 7.9568479544682402e-14 191 1.0221194294762198e-13
		 192 -4.2023639183437324e-14 193 -1.1925125495874071e-13 194 -6.0254346649977546e-14
		 195 -1.2528288714251958e-15 196 0 197 0 198 -2.0752852251094632e-14 199 -9.3611656969553493e-14
		 200 -9.8393618762347798e-14 201 4.2117015193542324e-14 202 1.1527700863086153e-13
		 203 1.1495555539127253e-13 204 1.1461756720176556e-13 205 5.9314456372688128e-14
		 206 3.9649556255302052e-16 207 4.8105751291357121e-14 208 1.1268230260517522e-13
		 209 -1.6927116681099406e-14 210 -2.2093749191778064e-13 211 -1.8671746294349029e-13
		 212 -1.1692478303027534e-13 213 -7.1766955687352031e-14 214 -1.8542974407576885e-15
		 215 0 216 0 217 -5.7616188428216636e-14 218 -1.1446184001274299e-13 219 -4.0899364951234306e-14
		 220 0 221 0 222 -3.1167371231224075e-14 223 -1.1545961451007499e-13 224 -1.1641429519003406e-13
		 225 -6.7879684224904525e-14 226 2.2486696996190262e-13 227 8.2149892891124872e-14
		 228 2.7721754005510863e-14 229 1.1583099894133308e-13 230 1.0342560262900069e-14
		 231 0 232 0 233 0 234 1.145299445824108e-15 235 1.1134465620563731e-13 236 1.472905175739043e-14
		 237 8.0333965739899498e-14 238 -1.0781882068428205e-14 239 -6.3660272736659737e-14
		 240 -4.420343721948103e-14 241 -5.7675909993809554e-14 242 0 243 0 244 1.0666671868847698e-13
		 245 0 246 -1.1056427980351055e-13 247 1.300035095971753e-13 248 -1.8469382920229265e-14
		 249 -2.0769405406812122e-15 250 -1.1741176953961027e-13;
	setAttr ".ktv[250:499]" 251 -1.154709180669692e-13 252 0 253 1.0270193830415445e-13
		 254 0 255 -1.4575338341510012e-14 256 7.302595862600475e-14 257 0 258 -1.6860506639893132e-13
		 259 1.3418822321131504e-13 260 -1.6138088372943071e-13 261 2.0725404021488256e-13
		 262 0 263 -2.115698835926866e-13 264 2.386924165929343e-13 265 -4.2846507318009115e-13
		 266 1.9430572353601226e-13 267 -2.1657809875731331e-13 268 -2.578386245474586e-13
		 269 0 270 0 271 -2.3183013662763324e-13 272 2.4666663782396993e-13 273 2.6829314570514756e-13
		 274 -2.638143471669321e-13 275 -2.7052430504933331e-15 276 0 277 0 278 1.9557927234529981e-13
		 279 2.4773834648648201e-13 280 2.4320569586346138e-13 281 1.5517925637600749e-13
		 282 -2.2536939435407041e-13 283 -1.9657623324667465e-15 284 -1.9326563255924853e-13
		 285 -6.6028733776221831e-14 286 0 287 -6.2177982925126078e-14 288 -1.9470400696796373e-13
		 289 -1.4889256401146098e-13 290 1.5597073344194598e-13 291 -1.6180601768856528e-13
		 292 0 293 0 294 5.1611518178585763e-14 295 5.6212580324364973e-14 296 1.1403476661653532e-13
		 297 2.4073688915819342e-17 298 1.1873382904328562e-13 299 1.1122745463451421e-13
		 300 1.0396957159587264e-13 301 9.4908136474377697e-14 302 -6.1537379413332715e-14
		 303 0 304 8.0683308615585929e-14 305 4.8947602567190346e-14 306 -6.0022900741315805e-14
		 307 -2.8073590057083771e-15 308 -6.2180970779652496e-14 309 -5.8173784141878533e-14
		 310 4.7837082443087762e-14 311 -3.3178402486014409e-14 312 -4.8767003408994592e-14
		 313 -1.1527683161129325e-14 314 -1.0428253378332014e-14 315 0 316 1.2005670531495733e-14
		 317 8.3571135029861438e-15 318 -1.2686601750737815e-17 319 -2.6561804238819561e-14
		 320 2.0227492613285572e-14 321 -2.712797960026313e-14 322 -2.9211762521827785e-14
		 323 1.2801209048179725e-14 324 2.7663076163169142e-14 325 -1.9691053218065804e-14
		 326 4.3936475004927033e-14 327 8.2475966510125787e-16 328 -2.4018446476933531e-14
		 329 -2.8204167749464653e-16 330 -4.4687729259737018e-14 331 2.193784241958102e-14
		 332 2.8384762376435162e-18 333 -2.0499250751194997e-14 334 -2.0351552205957419e-14
		 335 -4.0751156301714745e-15 336 0 337 0 338 0 339 7.6993378456359335e-16 340 3.4784829846176477e-14
		 341 7.365668837081123e-15 342 8.7651720863362144e-15 343 1.3182827067099544e-14 344 -5.1181661625743563e-16
		 345 -1.586247380925262e-14 346 -1.597752395012898e-14 347 -7.499121161449838e-15
		 348 -4.0177630609553329e-15 349 -1.6279235111089109e-14 350 -2.9774481411573981e-14
		 351 -1.5141683525482203e-15 352 -1.1837092967059072e-14 353 -4.4006126136732084e-15
		 354 0 355 0 356 0 357 5.4212228322840525e-15 358 1.2840229910159208e-14 359 1.25939065258557e-14
		 360 -4.3612695332462605e-15 361 8.3752385141807106e-15 362 1.9395493268241918e-16
		 363 9.1846166460933892e-15 364 -2.997951435303266e-15 365 2.5791811938582142e-15
		 366 1.0212313835109636e-14 367 1.0047113038616651e-14 368 -7.7631761369491916e-15
		 369 0 370 8.7745487838815988e-17 371 -5.9889290856339296e-15 372 6.0018199165155314e-15
		 373 4.048275116712918e-15 374 0 375 -8.3406413678746481e-15 376 -5.6098508833666273e-15
		 377 0.00079736262986011136 378 0.0034223876576774475 379 0.0066795243068712915 380 0.0098213068200698004
		 381 0.012474847687218387 382 0.014527777885774943 383 0.015902362783729085 384 0.016492520069960617
		 385 0.01625209298326788 386 0.015219001197133646 387 0.01348289425551792 388 0.01120119655237945
		 389 0.0085877707287999542 390 0.0058941662626141771 391 0.0033947926292519034 392 0.0013910604241334579
		 393 0.00017064336875086109 394 -8.2278813634881865e-06 395 0.0010592917418097588
		 396 0.0036458253139126629 397 0.0079816191232614103 398 0.014260914156836873 399 0.022571698996781953
		 400 0.032892000090205174 401 0.045098225832676871 402 0.058935501309066066 403 0.07406699174560441
		 404 0.09003292874580332 405 0.10632191605379782 406 0.12234781320506377 407 0.13748589417115706
		 408 0.15110757610260661 409 0.1625677952000352 410 0.17124555327588745 411 0.17655817919501632
		 412 0.17787792150134066 413 0.17483055792286836 414 0.16679972960495976 415 0.15586754888831533
		 416 0.14421491667624906 417 0.13230326954310365 418 0.1204695184428564 419 0.10895923411636306
		 420 0.097945642883125836 421 0.087537185086921904 422 0.077783022790202286 423 0.068678861944790212
		 424 0.060175908830072795 425 0.052194784166134482 426 0.044645218547212075 427 0.037450549317476989
		 428 0.030573346099609846 429 0.024035241130618907 430 0.017925913637610622 431 0.012399227710220133
		 432 0.0076538619394810898 433 0.0039018207079379403 434 0.0013304019505582922 435 0.00010025465651833909
		 436 0 437 0 438 8.2364880003836694e-16 439 0 440 1.6737166038114281e-15 441 -8.9922464026075048e-16
		 442 -1.6898320567131407e-15 443 1.1986756729773797e-15 444 1.5228402494832202e-15
		 445 0 446 -6.9839211810128626e-16 447 0 448 -1.4498877351875134e-15 449 0 450 3.6687826104709846e-15
		 451 -3.4366699445936805e-15 452 -5.6210780995293752e-16 453 1.0432034061604012e-15
		 454 -1.3933384820614454e-15 455 3.9822312284441783e-15 456 2.4784530402036453e-15
		 457 -3.045441162551871e-15 458 2.427854591305378e-15 459 2.8594609878010762e-15 460 4.0705044226455935e-15
		 461 0 462 0 463 0 464 -1.925046658599612e-15 465 -2.9965507826387824e-16 466 -4.3265680639184448e-15
		 467 1.7989462631131745e-15 468 1.732314882922834e-15 469 -3.8239928016211892e-15
		 470 -8.8674740594732614e-16 471 -3.8816323162348082e-15 472 -1.9082804367618836e-15
		 473 -1.855442647664636e-15 474 -5.1827995265453397e-15 475 -5.2500281849339023e-15
		 476 -2.8018369885595159e-15 477 -2.8201977769064273e-17 478 -3.0834862122000824e-15
		 479 -5.4197516182944932e-15 480 -5.4499936250413254e-15 481 -5.4927669411215946e-15
		 482 -5.5110993385317611e-15 483 -5.5333301565701964e-15 484 -5.5743558849670131e-15
		 485 -5.6037217508709892e-15 486 -4.9991191255319132e-15 487 -2.8344148133355707e-15
		 488 -6.6121694739946262e-16 489 0 490 0 491 0 492 0 493 0 494 0 495 0 496 0 497 0
		 498 0 499 0 500 0;
	setAttr ".ktv[500:749]" 501 0 502 0 503 0 504 0 505 0 506 0 507 0 508 -2.1240217805641659e-16
		 509 -1.8359488221520926e-15 510 -4.1171714051954414e-15 511 -5.9657472966484685e-15
		 512 -6.4483158227413127e-15 513 -6.4800965209457105e-15 514 -6.5311309014695137e-15
		 515 -6.5780532824189488e-15 516 -6.5987099934409571e-15 517 -5.7482914890655571e-15
		 518 -3.7960341559174479e-15 519 -1.6597533226631932e-15 520 -2.0924972899212663e-16
		 521 0 522 0 523 0 524 0 525 0 526 0 527 0 528 0 529 0 530 0 531 0 532 0 533 0 534 0
		 535 0 536 -5.2391461839483256e-16 537 -2.1164733365953545e-15 538 -4.1713965472296496e-15
		 539 -6.0984655110778971e-15 540 -7.3416443852659817e-15 541 -7.3953171064600997e-15
		 542 -6.2599108740791369e-15 543 -4.4549628445139004e-15 544 -2.4967362134740976e-15
		 545 -8.712049705126118e-16 546 -3.5059464153300295e-17 547 0 548 0 549 0 550 0 551 0
		 552 0 553 2.9962414193242357e-16 554 1.5103373854450772e-15 555 3.2678187299432779e-15
		 556 5.1795524236736762e-15 557 6.8774162597248188e-15 558 8.0168306249273479e-15
		 559 8.3457308849129901e-15 560 9.1109361737845338e-15 561 1.0595274433487973e-14
		 562 1.2444904926188061e-14 563 1.4328335691385942e-14 564 1.5935606529640529e-14
		 565 1.697749140598667e-14 566 1.7150564977791575e-14 567 1.5822605552306953e-14 568 1.3274936592079877e-14
		 569 1.0051599025838793e-14 570 6.6611701030432149e-15 571 3.5781000072586487e-15
		 572 1.2440095853783972e-15 573 6.8986526331524975e-17 574 0 575 0 576 0 577 0 578 0
		 579 0 580 0 581 0 582 0 583 0 584 0 585 0 586 0 587 0 588 0 589 0 590 0 591 1.154625542501664e-18
		 592 3.1998584305816027e-16 593 1.1066388252560315e-15 594 2.2269135007504066e-15
		 595 3.5563252827787428e-15 596 4.9797009937348815e-15 597 6.3907591976388272e-15
		 598 7.6916969609720112e-15 599 8.7928316256125381e-15 600 9.612200923221103e-15 601 1.0075211238909541e-14
		 602 1.0076786848205719e-14 603 9.3085741729012613e-15 604 7.868850599355017e-15 605 5.9352568679149009e-15
		 606 3.6718113449300885e-15 607 1.2295611421153755e-15 608 -1.2528391625204299e-15
		 609 -3.648473733717963e-15 610 -5.8416533866007628e-15 611 -7.7273051858985968e-15
		 612 -9.2104592690922407e-15 613 -1.0205719043426639e-14 614 -1.0636767600188026e-14
		 615 -1.0441611782697511e-14 616 -9.669947163502629e-15 617 -8.4378820036061287e-15
		 618 -6.8531311360069604e-15 619 -5.0146141101934276e-15 620 -3.0128815633914423e-15
		 621 -9.3059888730151784e-16 622 1.1570993761417656e-15 623 3.1821472135579906e-15
		 624 5.0832069929801617e-15 625 6.8052619393621769e-15 626 8.2992772810522118e-15
		 627 9.5218474014266742e-15 628 1.0434857831091978e-14 629 1.1005189344123517e-14
		 630 1.1204377670622409e-14 631 1.1209640398432245e-14 632 1.1224453105813323e-14
		 633 1.1247206410457556e-14 634 1.1276393893104999e-14 635 1.1310639338351355e-14
		 636 1.134868986842067e-14 637 1.1389408627235869e-14 638 1.1431767913476376e-14 639 1.1474842601096778e-14
		 640 1.1517803439549406e-14 641 1.155991222817057e-14 642 1.1600514469911101e-14 643 1.163903506281774e-14
		 644 1.1674972633873787e-14 645 1.1707894507797034e-14 646 1.1737431907295393e-14
		 647 1.1763275248007961e-14 648 1.1785170097223861e-14 649 1.1802912847986573e-14
		 650 1.1816346706311416e-14 651 1.1825358184052419e-14 652 1.1829873219286607e-14
		 653 1.1808469295656655e-14 654 1.1643755620527704e-14 655 1.1336406835134008e-14
		 656 1.0906830510229127e-14 657 1.0373611656395069e-14 658 9.7536323587384996e-15
		 659 9.0621962860093407e-15 660 8.3131138944810668e-15 661 7.5188218474745721e-15
		 662 6.6904896516193938e-15 663 5.8380745681133048e-15 664 4.9704521860485458e-15
		 665 4.0954817100668857e-15 666 3.2200762610243903e-15 667 2.3502832610285143e-15
		 668 1.4913618217990698e-15 669 6.4782543945758649e-16 670 -1.7646570169308285e-16
		 671 -9.7826968790629973e-16 672 -1.7549007285369352e-15 673 -2.5041626808767206e-15
		 674 -3.2243474761718837e-15 675 -3.9141363165302655e-15 676 -4.5725813499200722e-15
		 677 -5.1990740414845601e-15 678 -5.7933011674974203e-15 679 -6.3552110420319432e-15
		 680 -6.8849755084523647e-15 681 -7.382974881173205e-15 682 -7.8497639346090485e-15
		 683 -8.28604718530222e-15 684 -8.6926503080838581e-15 685 -9.0705116535327436e-15
		 686 -9.4206566761615347e-15 687 -9.7441753522409004e-15 688 -1.0042222342278755e-14
		 689 -1.031598150350634e-14 690 -1.0566664229096737e-14 691 -1.0795506342754068e-14
		 692 -1.1003739317363733e-14 693 -1.119259473460406e-14 694 -1.1363287846211317e-14
		 695 -1.1517021630973769e-14 696 -1.165496582113909e-14 697 -1.1778262551011948e-14
		 698 -1.1888015304602056e-14 699 -1.1985293781268802e-14 700 -1.2071117092969419e-14
		 701 -1.21464693486626e-14 702 -1.221227819418091e-14 703 -1.2269427971213749e-14
		 704 -1.2318753795825705e-14 705 -1.2361041164739654e-14 706 -1.2397024618258726e-14
		 707 -1.2427391208512451e-14 708 -1.2452779354475257e-14 709 -1.2473779791300496e-14
		 710 -1.2490935962619035e-14 711 -1.2504747378111499e-14 712 -1.2515670005808287e-14
		 713 -1.2524118010392088e-14 714 -1.2530465242102235e-14 715 -1.2535047934669288e-14
		 716 -1.253816728593201e-14 717 -1.2540089465168228e-14 718 -1.2541049609803209e-14
		 719 -1.2541252551118718e-14 720 -1.2540855465586121e-14 721 -1.2540010304752354e-14
		 722 -1.2538856259024063e-14 723 -1.2537508602004204e-14 724 -1.2536061598746079e-14
		 725 -1.2534590219523495e-14 726 -1.2533153395738542e-14 727 -1.2531795345040872e-14
		 728 -1.2530548123229804e-14 729 -1.252943269479927e-14 730 -1.2528460451797039e-14
		 731 -1.2527636371978724e-14 732 -1.2526958331905596e-14 733 -1.252641863919313e-14
		 734 -1.2526006916420129e-14 735 -1.2525708356082546e-14 736 -1.2525506326600399e-14
		 737 -1.252538355395535e-14 738 -1.2525319881913858e-14 739 -1.2525296910341104e-14
		 740 -1.2525293158325225e-14 741 -1.2525293158325225e-14 742 -1.2525293158325225e-14
		 743 -1.2525293158325225e-14 744 -1.2525293158325225e-14 745 -1.2525293158325225e-14
		 746 -1.2525293158325225e-14 747 -1.2525293158325225e-14 748 -1.2525293158325225e-14
		 749 -1.2525293158325225e-14 750 -1.2525293158325225e-14;
	setAttr ".ktv[750:800]" 751 -1.2525293158325225e-14 752 -1.2525293158325225e-14
		 753 -1.2525293158325225e-14 754 -1.2525293158325225e-14 755 -1.2525293158325225e-14
		 756 -1.2525293158325225e-14 757 -1.2525293158325225e-14 758 -1.2525293158325225e-14
		 759 -1.2525293158325225e-14 760 -1.2525293158325225e-14 761 -1.2525293158325225e-14
		 762 -1.2525293158325225e-14 763 -1.2525293158325225e-14 764 -1.2525293158325225e-14
		 765 -1.2525293158325225e-14 766 -1.2525293158325225e-14 767 -1.2525293158325225e-14
		 768 -1.2525293158325225e-14 769 -1.2525293158325225e-14 770 -1.2525293158325225e-14
		 771 -1.2525293158325225e-14 772 -1.2525293158325225e-14 773 -1.2525293158325225e-14
		 774 -1.2525293158325225e-14 775 -1.2525293158325225e-14 776 -1.2525293158325225e-14
		 777 -1.2525293158325225e-14 778 -1.2525293158325225e-14 779 -1.2525293158325225e-14
		 780 -1.2525293158325225e-14 781 -1.2525293158325225e-14 782 -1.2525293158325225e-14
		 783 -1.2525293158325225e-14 784 -1.2525293158325225e-14 785 -1.2525293158325225e-14
		 786 -1.2525293158325225e-14 787 -1.2525293158325225e-14 788 -1.2525293158325225e-14
		 789 -1.2525293158325225e-14 790 -1.2525293158325225e-14 791 -1.2525293158325225e-14
		 792 -1.2525293158325225e-14 793 -1.2525293158325225e-14 794 -1.2525293158325225e-14
		 795 -1.2525293158325225e-14 796 -1.2525293158325225e-14 797 -1.2525293158325225e-14
		 798 -1.2525293158325225e-14 799 -1.2525293158325225e-14 800 -1.2525293158325225e-14
		 801 -1.2525293158325225e-14;
	setAttr -s 801 ".kot";
	setAttr ".kot[0:499]"  18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr ".kot[500:800]"  18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 801 ".ktl";
	setAttr ".ktl[0:499]" no yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes;
createNode timeEditorClipEvaluator -n "Baked_ClipEvaluator";
	rename -uid "9C9D1C16-43A4-AED2-AAEC-CFAE17BA44D2";
	setAttr -s 6 ".a";
	setAttr ".a[0].av" -486.90283555415039;
	setAttr ".a[0].as" -1;
	setAttr ".a[0].src" -type "string" "";
	setAttr ".a[1].av" 2157.9592877851828;
	setAttr ".a[1].as" -1;
	setAttr ".a[1].src" -type "string" "";
	setAttr ".a[2].av" 2108.077489975336;
	setAttr ".a[2].as" -1;
	setAttr ".a[2].src" -type "string" "";
	setAttr ".a[3].av" -0.7298504208765132;
	setAttr ".a[3].as" -1;
	setAttr ".a[3].src" -type "string" "";
	setAttr ".a[4].av" -0.25681568135145527;
	setAttr ".a[4].as" -1;
	setAttr ".a[4].src" -type "string" "";
	setAttr ".a[5].av" 0.0015278120976944659;
	setAttr ".a[5].as" -1;
	setAttr ".a[5].src" -type "string" "";
	setAttr ".o" -type "animationTRS" ;
	setAttr -s 6 ".tas";
createNode objectSet -n "set1";
	rename -uid "F1199A94-4AC2-F15D-D488-64BEB0685B94";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
createNode animCurveTL -n "camera13_translateX";
	rename -uid "6CA800AD-4A3B-B9AA-F899-3E81E33323B6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 865.83433568636724 50 520.02000293790275
		 116 -972.29760479431809 160 -3532.375149432648 235 -3783.1787174163396 268 -3066.2540682353615
		 299 -1556.1770655650225 365 4.7997358983425258 405 959.18754245263767 435 1185.2095878676244
		 510 998.29051687732101 530 998.29051687732101;
	setAttr -s 12 ".kit[0:11]"  2 9 9 9 9 9 9 9 
		18 18 18 1;
	setAttr -s 12 ".kot[0:11]"  2 9 9 9 9 9 9 9 
		18 18 18 1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTL -n "camera13_translateY";
	rename -uid "8751A8B0-4937-A80A-C808-55BA460EA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 690.35481689566132 50 862.4855777374953
		 116 1092.357 160 1011.9370655982789 235 1915.6718249342073 299 2258.7829010646537
		 365 2012.7827540973069 405 2365.9463836858622 435 3178.8663269236181 510 3471.1727085417506
		 530 3471.1727085417506;
	setAttr -s 11 ".kit[0:10]"  2 9 9 9 9 9 9 18 
		18 18 1;
	setAttr -s 11 ".kot[0:10]"  2 9 9 9 9 9 9 18 
		18 18 1;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[10]"  1;
	setAttr -s 11 ".koy[10]"  0;
createNode animCurveTL -n "camera13_translateZ";
	rename -uid "29FF2210-461E-9837-8A42-CAAC499DC9C9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -3301.2498615624795 50 -3122.5164265739054
		 116 -2600.8617949417294 160 -2073.4875898732294 235 -1405.1811097235038 299 1042.3637195345618
		 365 2047.2475353094958 405 1337.7808652845385 435 409.27730901200948 510 125.87637106096079
		 530 125.87637106096079;
	setAttr -s 11 ".kit[0:10]"  2 9 9 9 9 9 9 18 
		18 18 1;
	setAttr -s 11 ".kot[0:10]"  2 9 9 9 9 9 9 18 
		18 18 1;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[10]"  1;
	setAttr -s 11 ".koy[10]"  0;
createNode animCurveTA -n "camera13_rotateX";
	rename -uid "7583C443-45AA-DEC8-2F20-608AB7082B33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -32.95492140038197 50 -31.619399088704274
		 116 -40.000000197950691 160 -43.477374553238889 235 -52.45003459370426 299 -47.6589226072443
		 365 -44.048898724881383 405 -52.200128265440924 435 -66.541656010934517 510 -72.287802725630968
		 530 -72.287802725630968;
	setAttr -s 11 ".kit[0:10]"  2 9 9 9 9 9 9 9 
		9 18 1;
	setAttr -s 11 ".kot[0:10]"  2 9 9 9 9 9 9 9 
		9 18 1;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[10]"  1;
	setAttr -s 11 ".koy[10]"  0;
createNode animCurveTA -n "camera13_rotateY";
	rename -uid "244D3BC5-48E5-8F97-25EB-08836CD0A835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -81.000000537310527 50 -68.200508267356412
		 116 -107.99999697907934 160 -91.636731276856068 235 -76.853071447382405 299 -55.600007390148875
		 365 0.39998098025661954 405 36.129930954296405 435 71.474651817348985 510 82.399963696468447
		 530 82.399963696468447;
	setAttr -s 11 ".kit[0:10]"  2 9 9 9 9 9 9 18 
		18 18 1;
	setAttr -s 11 ".kot[0:10]"  2 9 9 9 9 9 9 18 
		18 18 1;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[10]"  1;
	setAttr -s 11 ".koy[10]"  0;
createNode animCurveTA -n "camera13_rotateZ";
	rename -uid "572BA8F1-4D12-6986-A10F-D69A1D5E6613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 2.6861892611828835e-14 50 1.8179138937435711e-14
		 116 0 160 0 235 0 299 0 365 0 405 0 435 0 510 0 530 0;
	setAttr -s 11 ".kit[0:10]"  2 9 9 9 9 9 9 18 
		18 18 1;
	setAttr -s 11 ".kot[0:10]"  2 9 9 9 9 9 9 18 
		18 18 1;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[10]"  1;
	setAttr -s 11 ".koy[10]"  0;
createNode animCurveTA -n "camera14_rotateZ";
	rename -uid "7627166C-4332-C84F-478F-2D9F1C688EB7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 37 0 87.596775510204083 0 127.3530718537415 0
		 177.17195259353741 0 252.07368728741497 0 327.24334289965986 0 391.24334289965986 0
		 457.24334289965986 0 497.24334289965986 0 527.24334289965986 0 602.24334289965986 0
		 622.24334289965986 0;
	setAttr -s 13 ".kit[0:12]"  2 18 1 9 9 9 9 9 
		9 18 18 18 1;
	setAttr -s 13 ".kot[0:12]"  2 18 1 9 9 9 9 9 
		9 18 18 18 1;
	setAttr -s 13 ".kix[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "camera14_rotateY";
	rename -uid "D2955C4F-41B7-A0F3-44CE-299500FA2F03";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -45.692244389228989 37 -41.930099579542983
		 87.596775510204083 -40.692000884759118 127.3530718537415 -40.692 177.17195259353741 -49.000009709111154
		 252.07368728741497 -91.636731276856068 327.24334289965986 -76.853071447382405 391.24334289965986 -55.600007390148875
		 457.24334289965986 0.39998098025661954 497.24334289965986 36.129930954296405 527.24334289965986 71.474651817348985
		 602.24334289965986 82.399963696468447 622.24334289965986 82.399963696468447;
	setAttr -s 13 ".kit[0:12]"  2 18 9 9 9 9 9 9 
		9 18 18 18 1;
	setAttr -s 13 ".kot[0:12]"  2 18 9 9 9 9 9 9 
		9 18 18 18 1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTA -n "camera14_rotateX";
	rename -uid "E4677587-4D85-6CDB-EF31-12B4651BD4A3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -26.978195801611882 37 -41.339858666790185
		 87.596775510204083 -46.969992914180729 127.3530718537415 -55.547912705069436 252.07368728741497 -46.082282268382841
		 327.24334289965986 -52.45003459370426 391.24334289965986 -47.6589226072443 457.24334289965986 -44.048898724881383
		 497.24334289965986 -52.200128265440924 527.24334289965986 -66.541656010934517 602.24334289965986 -72.287802725630968
		 622.24334289965986 -72.287802725630968;
	setAttr -s 12 ".kit[0:11]"  2 18 1 9 9 9 9 9 
		9 9 18 1;
	setAttr -s 12 ".kot[0:11]"  2 18 1 9 9 9 9 9 
		9 9 18 1;
	setAttr -s 12 ".kix[2:11]"  0.99985734504481583 0.99999600701555902 
		0.99996707762632508 0.99998240732211419 0.99942801607614506 0.99974850231088486 0.98614029314378759 
		0.99502039840573042 1 1;
	setAttr -s 12 ".kiy[2:11]"  -0.016890516863970761 0.0028259428405305338 
		0.0081144108515078511 -0.0059316984304183095 0.033817756905221111 -0.022426148290390545 
		-0.16591359871416447 -0.099671494202212052 0 0;
	setAttr -s 12 ".kox[2:11]"  0.9997114408729435 0.99999600701555902 
		0.99996707762632508 0.99998240732211419 0.99942801607614506 0.99974850231088486 0.98614029314378759 
		0.99502039840573042 1 1;
	setAttr -s 12 ".koy[2:11]"  -0.02402155256729064 0.0028259428405305338 
		0.0081144108515078511 -0.0059316984304183095 0.033817756905221111 -0.022426148290390545 
		-0.16591359871416447 -0.099671494202212052 0 0;
createNode animCurveTL -n "camera14_translateZ";
	rename -uid "BF9DA7FD-48DB-FA49-7499-31A0DDCAB709";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -3157.9734392731098 37 -3146.2405794789088
		 87.596775510204083 -2970.3291926714551 127.3530718537415 -2545.4158869318294 177.17195259353741 -1950.1379650287486
		 252.07368728741497 -2073.4875898732294 327.24334289965986 -1405.1811097235038 391.24334289965986 1042.3637195345618
		 457.24334289965986 2047.2475353094958 497.24334289965986 1337.7808652845385 527.24334289965986 409.27730901200948
		 602.24334289965986 125.87637106096079 622.24334289965986 125.87637106096079;
	setAttr -s 13 ".kit[0:12]"  2 18 1 9 9 9 9 9 
		9 18 18 18 1;
	setAttr -s 13 ".kot[0:12]"  2 18 1 9 9 9 9 9 
		9 18 18 18 1;
	setAttr -s 13 ".kix[2:12]"  0.010266823062885802 0.0029267321333376708 
		0.0088089495167963487 0.009179018279234839 0.0014888333615119024 0.0012551540858560979 
		0.011959632959052559 0.0014245258725612926 0.0029404621477898359 1 1;
	setAttr -s 13 ".kiy[2:12]"  0.99994729478317779 0.9999957171103383 
		0.99996120045150283 0.99995787192432728 0.99999889168699663 0.99999921229380018 0.99992848103226106 
		-0.99999898536250453 -0.99999567683183377 0 0;
	setAttr -s 13 ".kox[2:12]"  0.0072181539537302291 0.0029267321333376708 
		0.0088089495167963487 0.009179018279234839 0.0014888333615119024 0.0012551540858560979 
		0.011959632959052559 0.0014245258725612924 0.0029404621477898364 1 1;
	setAttr -s 13 ".koy[2:12]"  0.9999739487874173 0.9999957171103383 0.99996120045150283 
		0.99995787192432728 0.99999889168699663 0.99999921229380018 0.99992848103226106 -0.99999898536250453 
		-0.99999567683183377 0 0;
createNode animCurveTL -n "camera14_translateY";
	rename -uid "CB45F7E2-45FB-F61B-92B2-C4B509C83198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 604.52722430306835 37 770.76542023607021
		 87.596775510204083 1010.355 127.3530718537415 1210.355 177.17195259353741 1210.355
		 252.07368728741497 1011.9370655982789 327.24334289965986 1915.6718249342073 391.24334289965986 2258.7829010646537
		 457.24334289965986 2012.7827540973069 497.24334289965986 2365.9463836858622 527.24334289965986 3178.8663269236181
		 602.24334289965986 3471.1727085417506 622.24334289965986 3471.1727085417506;
	setAttr -s 13 ".kit[0:12]"  2 18 1 9 9 9 9 9 
		9 18 18 18 1;
	setAttr -s 13 ".kot[0:12]"  2 18 1 9 9 9 9 9 
		9 18 18 18 1;
	setAttr -s 13 ".kix[2:12]"  0.015323214260375423 0.014927532742281825 
		0.020947912826081334 0.007092208338230605 0.003720553319988541 0.044578150004749337 
		0.032953523356981929 0.0020009960832884453 0.0031667563209802972 1 1;
	setAttr -s 13 ".kiy[2:12]"  0.99988259266012369 0.99988857817570254 
		-0.99978056839900176 0.99997484997418162 0.9999930787175445 0.99900590015382496 0.9994568851623169 
		0.9999979980053334 0.99999498581463087 0 0;
	setAttr -s 13 ".kox[2:12]"  0.010773433831245908 0.014927532742281825 
		0.020947912826081334 0.007092208338230605 0.003720553319988541 0.044578150004749337 
		0.032953523356981929 0.0020009960832884453 0.0031667563209802968 1 1;
	setAttr -s 13 ".koy[2:12]"  0.99994196487770404 0.99988857817570254 
		-0.99978056839900176 0.99997484997418162 0.9999930787175445 0.99900590015382496 0.9994568851623169 
		0.9999979980053334 0.99999498581463075 0 0;
createNode animCurveTL -n "camera14_translateX";
	rename -uid "2D2CB306-4085-DF18-E9C9-948556339527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 843.6806091661731 37 833.93939431696435
		 87.596775510204083 663.24500569077134 127.3530718537415 40.96385511289958 177.17195259353741 -1246.7741650003879
		 252.07368728741497 -3532.375149432648 327.24334289965986 -3783.1787174163396 360.24334289965986 -3066.2540682353615
		 391.24334289965986 -1556.1770655650225 457.24334289965986 4.7997358983425258 497.24334289965986 959.18754245263767
		 527.24334289965986 1185.2095878676244 602.24334289965986 998.29051687732101 622.24334289965986 998.29051687732101;
	setAttr -s 14 ".kit[0:13]"  2 18 1 9 9 9 9 9 
		9 9 18 18 18 1;
	setAttr -s 14 ".kot[0:13]"  2 18 1 9 9 9 9 9 
		9 9 18 18 18 1;
	setAttr -s 14 ".kix[2:13]"  0.0029309859813281308 0.001563249015301699 
		0.0011634359429199307 0.0019722287374279064 0.00773521615154351 0.00095793927801332774 
		0.0010528410596217026 0.0014046988798839537 0.0019767106914773398 1 1 1;
	setAttr -s 14 ".kiy[2:13]"  -0.99999570465136356 -0.99999877812551163 
		-0.99999932320817431 -0.99999805515501239 0.99997008276802413 0.9999995411760646 
		0.99999944576269806 0.99999901341004183 0.9999980463055127 0 0 0;
	setAttr -s 14 ".kox[2:13]"  0.0020605975151230678 0.001563249015301699 
		0.0011634359429199307 0.0019722287374279064 0.00773521615154351 0.00095793927801332774 
		0.0010528410596217026 0.0014046988798839537 0.0019767106914773398 1 1 1;
	setAttr -s 14 ".koy[2:13]"  -0.99999787696668663 -0.99999877812551163 
		-0.99999932320817431 -0.99999805515501239 0.99997008276802413 0.9999995411760646 
		0.99999944576269806 0.99999901341004183 0.99999804630551259 0 0 0;
createNode displayLayer -n "REF_env_trees";
	rename -uid "6625BF27-4C1A-4A76-408E-4EBEE28AD555";
	setAttr ".v" no;
	setAttr ".do" 2;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "3ED7D6E8-4E52-EEF1-3EDB-8787873BEB8A";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
createNode animCurveTL -n "camera15_translateX";
	rename -uid "20DF1CB2-4393-BE8B-8C8F-20A673CDED56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 843.6806091661731 37 833.93939431696435
		 87.596775510204083 663.24500569077134 127.3530718537415 40.96385511289958 177.17195259353741 -1246.7741650003879
		 252.07368728741497 -3532.375149432648 327.44038392857141 -3783.1787174163396 365.70928869047617 -3066.2540682353615
		 401.37667049319725 -2220.6541793991901 469.03542431972789 -1478.7305862652738 539.03542431972789 -394.28292610609509
		 614.27876721938776 -106.44829175127744;
	setAttr -s 12 ".kit[0:11]"  2 18 1 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  2 18 1 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 12 ".kix[2:11]"  0.0029309859813281308 0.001563249015301699 
		0.0011634359429199307 0.0019748182280985124 0.0081260609515874192 0.0015772807145482842 
		0.0021695404536115907 0.0025124194420913693 0.0035280019660245418 1;
	setAttr -s 12 ".kiy[2:11]"  -0.99999570465136356 -0.99999877812551163 
		-0.99999932320817431 -0.99999805004458175 0.99996698302164511 0.99999875609200017 
		0.99999764654434065 0.99999684386929288 0.99999377658169852 0;
	setAttr -s 12 ".kox[2:11]"  0.0020605975151230678 0.001563249015301699 
		0.0011634359429199307 0.0019748182280985124 0.0081260609515874192 0.0015772807145482842 
		0.0021695404536115907 0.0025124194420913693 0.0035280019660245418 1;
	setAttr -s 12 ".koy[2:11]"  -0.99999787696668663 -0.99999877812551163 
		-0.99999932320817431 -0.99999805004458175 0.99996698302164511 0.99999875609200017 
		0.99999764654434065 0.99999684386929288 0.99999377658169852 0;
createNode animCurveTL -n "camera15_translateZ";
	rename -uid "14747BF8-4431-D9CF-CB58-81BF2859809E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -3157.9734392731098 37 -3146.2405794789088
		 87.596775510204083 -2970.3291926714551 127.3530718537415 -2545.4158869318294 177.17195259353741 -1950.1379650287486
		 252.07368728741497 -2073.4875898732294 327.44038392857141 -1405.1811097235038 401.37667049319725 1506.489132866084
		 469.03542431972789 2072.4191498545997 539.03542431972789 1065.3663791013917 614.27876721938776 487.55807250071052;
	setAttr -s 11 ".kit[0:10]"  2 18 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 11 ".kot[0:10]"  2 18 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 11 ".kix[2:10]"  0.010266823062885802 0.0029267321333376708 
		0.0088089495167963487 0.0091910691472658294 0.0013901658260215965 0.0013572089890716052 
		0.01040158743358854 0.0030547927782761512 1;
	setAttr -s 11 ".kiy[2:10]"  0.99994729478317779 0.9999957171103383 
		0.99996120045150283 0.99995776123190827 0.99999903371902121 0.9999990789914559 -0.99994590202613531 
		-0.99999533410965569 0;
	setAttr -s 11 ".kox[2:10]"  0.0072181539537302291 0.0029267321333376708 
		0.0088089495167963487 0.0091910691472658294 0.0013901658260215965 0.0013572089890716052 
		0.01040158743358854 0.0030547927782761512 1;
	setAttr -s 11 ".koy[2:10]"  0.9999739487874173 0.9999957171103383 0.99996120045150283 
		0.99995776123190827 0.99999903371902121 0.9999990789914559 -0.99994590202613531 -0.99999533410965569 
		0;
createNode animCurveTA -n "camera15_rotateX";
	rename -uid "9AB380F7-43E5-7400-5B0D-7B9091A36B6A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -26.978195801611882 37 -41.339858666790185
		 87.596775510204083 -46.969992914180729 127.3530718537415 -55.547912705069436 252.07368728741497 -46.082282268382841
		 327.44038392857141 -52.45003459370426 401.37667049319725 -46.658923041877486 469.03542431972789 -48.052031198880954
		 539.03542431972789 -70.504537862504108 614.27876721938776 -80.287801276277861;
	setAttr -s 10 ".kit[0:9]"  2 18 1 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  2 18 1 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kix[2:9]"  0.99985734504481583 0.99999600701555902 
		0.99996714243347962 0.99999795525271062 0.99986778030653167 0.99591203479786805 0.99331534267115251 
		1;
	setAttr -s 10 ".kiy[2:9]"  -0.016890516863970761 0.0028259428405305338 
		0.0081064205060607537 -0.0020222488466853025 0.016261054851673184 -0.090328395008271001 
		-0.11543236120815908 0;
	setAttr -s 10 ".kox[2:9]"  0.9997114408729435 0.99999600701555902 
		0.99996714243347962 0.99999795525271062 0.99986778030653167 0.99591203479786805 0.99331534267115251 
		1;
	setAttr -s 10 ".koy[2:9]"  -0.02402155256729064 0.0028259428405305338 
		0.0081064205060607537 -0.0020222488466853025 0.016261054851673184 -0.090328395008271001 
		-0.11543236120815908 0;
createNode animCurveTA -n "camera15_rotateY";
	rename -uid "DD564867-49AB-4EDD-A204-3598738DC457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -45.692244389228989 37 -41.930099579542983
		 87.596775510204083 -40.692000884759118 127.3530718537415 -40.692 177.17195259353741 -49.000009709111154
		 252.07368728741497 -91.636731276856068 327.44038392857141 -76.853071447382405 401.37667049319725 -54.600007611338654
		 469.03542431972789 -36.826137485971358 539.03542431972789 -20.652454842027797 614.27876721938776 -9.6000167011238915;
	setAttr -s 11 ".kit[0:10]"  2 18 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 11 ".kot[0:10]"  2 18 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "camera15_rotateZ";
	rename -uid "8318C6AB-49AE-8FFD-3A12-9C8CF843A480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 37 0 87.596775510204083 0 127.3530718537415 0
		 177.17195259353741 0 252.07368728741497 0 327.44038392857141 0 401.37667049319725 0
		 469.03542431972789 0 539.03542431972789 0 614.27876721938776 0;
	setAttr -s 11 ".kit[0:10]"  2 18 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 11 ".kot[0:10]"  2 18 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 11 ".kix[2:10]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[2:10]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 0 0 0 0;
createNode expression -n "expression3";
	rename -uid "4D3FFA8D-47F4-CDB1-8809-968B05ED0C6D";
	setAttr -k on ".nds";
	setAttr -s 2 ".in";
	setAttr -s 2 ".in";
	setAttr ".ixp" -type "string" ".O[0] = 1 - (.I[0] + .I[1])";
createNode animCurveTU -n "camera16_constrained_target_01";
	rename -uid "BC646D70-41F0-C693-DFF3-A4B9E9DFA429";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  400 0 510 1;
createNode animCurveTU -n "camera16_constrained_target_02";
	rename -uid "816C5860-4A50-9338-4DC6-2D96693974B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  400 0 510 1;
createNode animCurveTU -n "camera16_constrained_target_03";
	rename -uid "921B893C-4899-09DB-35CC-889DB606FF19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 1 147 0;
createNode animCurveTL -n "camera15_translateY";
	rename -uid "E2B7557C-47A4-0070-8031-A395B35F7607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 604.52722430306835 37 770.76542023607021
		 87.596775510204083 1010.355 127.3530718537415 1210.355 177.17195259353741 1569.9342245038065
		 252.07368728741497 1191.7266778501826 327.44038392857141 1915.6718249342073 401.37667049319725 2258.7829010646537
		 539.03542431972789 3176.4977699331962 614.27876721938776 3471.1727085417506;
	setAttr -s 10 ".kit[0:9]"  2 18 1 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  2 18 1 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kix[2:9]"  0.015323214260375423 0.0053357891084521384 
		0.2178154143509097 0.014486194483745185 0.0046639641563282269 0.0055939978737110981 
		0.0058534102951671068 1;
	setAttr -s 10 ".kiy[2:9]"  0.99988259266012369 0.99998576457597144 
		-0.97598998215716415 0.99989506957949303 0.9999891236600269 0.99998435347148751 0.99998286864721653 
		0;
	setAttr -s 10 ".kox[2:9]"  0.010773433831245908 0.0053357891084521384 
		0.2178154143509097 0.014486194483745185 0.0046639641563282269 0.0055939978737110981 
		0.0058534102951671068 1;
	setAttr -s 10 ".koy[2:9]"  0.99994196487770404 0.99998576457597144 
		-0.97598998215716415 0.99989506957949303 0.9999891236600269 0.99998435347148751 0.99998286864721653 
		0;
createNode animCurveTL -n "camera17_translateX";
	rename -uid "73F4ED6A-4C1F-E514-A26B-32B64270CF47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 843.6806091661731 37 813.87117822811047
		 92.109255952380948 663.24500569077134 136.1925644132653 -247.14780486949641 184.69007270408164 -1684.2724024545184
		 253.82737691326531 -3909.0447664862277 329.97759736394556 -3783.1787174163396 368.13160544217686 -3066.2540682353615
		 403.79898724489794 -2220.6541793991901 471.45774107142859 -1478.7305862652738 541.45774107142859 -394.28292610609509
		 616.70108397108845 -106.44829175127744;
	setAttr -s 12 ".kit[0:11]"  2 1 18 18 9 9 9 9 
		9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  2 1 18 18 9 9 9 9 
		9 9 9 3;
	setAttr -s 12 ".kix[1:11]"  0.027350358904193014 0.0040651634194549735 
		0.001314590702412184 0.0010707997001941957 0.0023073467179751889 0.0045208164058516201 
		0.0015748296329218996 0.0021695404536115899 0.0025124194420913684 0.0035280019660245418 
		1;
	setAttr -s 12 ".kiy[1:11]"  -0.99962590896185355 -0.99999173718904943 
		-0.99999913592526934 -0.99999942669383668 -0.99999733807201852 0.99998978105729885 
		0.99999875995504484 0.99999764654434076 0.99999684386929288 0.99999377658169852 0;
	setAttr -s 12 ".kox[1:11]"  0.029540386080390044 0.0040651634194549743 
		0.001314590702412184 0.0010707997001941957 0.0023073467179751889 0.0045208164058516201 
		0.0015748296329218996 0.0021695404536115899 0.0025124194420913684 0.0035280019660245418 
		1;
	setAttr -s 12 ".koy[1:11]"  -0.99956358756720487 -0.99999173718904955 
		-0.99999913592526934 -0.99999942669383668 -0.99999733807201852 0.99998978105729885 
		0.99999875995504484 0.99999764654434076 0.99999684386929288 0.99999377658169852 0;
createNode animCurveTL -n "camera17_translateY";
	rename -uid "2E3C5C15-4448-5508-6F7B-BDA4E5B42A27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 604.52722430306835 37 770.76542023607021
		 92.109255952380948 1010.355 184.69007270408164 1450.0744830025378 253.82737691326531 1569.9342245038065
		 329.97759736394556 1915.6718249342073 403.79898724489794 2258.7829010646537 541.45774107142859 3176.4977699331962
		 616.70108397108845 3471.1727085417506;
	setAttr -s 9 ".kit[0:8]"  2 18 18 9 9 9 9 9 
		3;
	setAttr -s 9 ".kot[0:8]"  2 18 18 9 9 9 9 9 
		3;
createNode animCurveTL -n "camera17_translateZ";
	rename -uid "1AA543D9-4DD3-4905-3B9A-3E97EE604024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -3157.9734392731098 37 -3123.897811354173
		 92.109255952380948 -2970.3291926714551 136.1925644132653 -2627.148049361404 184.69007270408164 -2569.9491759577763
		 253.82737691326531 -2293.0895557573444 329.97759736394556 -1405.1811097235038 403.79898724489794 1506.489132866084
		 471.45774107142859 2072.4191498545997 541.45774107142859 1065.3663791013917 616.70108397108845 487.55807250071052;
	setAttr -s 11 ".kit[0:10]"  2 1 18 18 9 9 9 9 
		9 9 3;
	setAttr -s 11 ".kot[0:10]"  2 1 18 18 9 9 9 9 
		9 9 3;
	setAttr -s 11 ".kix[1:10]"  0.032647867156528801 0.0066559580412989452 
		0.0094204179245865535 0.011737137034825573 0.0041578025431289294 0.0013156851747636018 
		0.0013561076897282583 0.010401587433588537 0.0030547927782761512 1;
	setAttr -s 11 ".kiy[1:10]"  0.99946691629594697 0.99997784886593999 
		0.9999556268785762 0.99993111743470886 0.99999135630164937 0.99999913448588584 0.99999908048554409 
		-0.99994590202613531 -0.99999533410965569 0;
	setAttr -s 11 ".kox[1:10]"  0.035261119869325848 0.0066559580412989443 
		0.0094204179245865518 0.011737137034825573 0.0041578025431289294 0.0013156851747636018 
		0.0013561076897282583 0.010401587433588537 0.0030547927782761512 1;
	setAttr -s 11 ".koy[1:10]"  0.99937813335371761 0.99997784886593988 
		0.99995562687857609 0.99993111743470886 0.99999135630164937 0.99999913448588584 0.99999908048554409 
		-0.99994590202613531 -0.99999533410965569 0;
createNode animCurveTA -n "camera17_rotateX";
	rename -uid "943BD351-47C5-F3DB-0C86-CBBCB2A7DA4E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -26.978195801611882 37 -39.339859109169744
		 92.109255952380948 -46.969992914180729 184.69007270408164 -47.527236176982129 253.82737691326531 -46.850394008832907
		 329.97759736394556 -52.45003459370426 403.79898724489794 -46.658923041877486 471.45774107142859 -48.052031198880954
		 541.45774107142859 -70.504537862504108 616.70108397108845 -80.287801276277861;
	setAttr -s 10 ".kit[0:9]"  2 18 1 9 18 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  2 18 1 9 18 9 9 9 
		9 3;
	setAttr -s 10 ".kix[2:9]"  0.99987782235629452 0.99999992502711266 
		1 0.99999977656312167 0.99986756550954969 0.99591203479786805 0.99331534267115251 
		1;
	setAttr -s 10 ".kiy[2:9]"  -0.015631390214393966 0.00038722831638158254 
		0 0.00066848613039731928 0.016274257033932656 -0.090328395008271042 -0.11543236120815908 
		0;
	setAttr -s 10 ".kox[2:9]"  0.99991448831962682 0.99999992502711266 
		1 0.99999977656312167 0.99986756550954969 0.99591203479786805 0.99331534267115251 
		1;
	setAttr -s 10 ".koy[2:9]"  -0.013077310445919067 0.00038722831638158254 
		0 0.00066848613039731928 0.016274257033932656 -0.090328395008271042 -0.11543236120815908 
		0;
createNode animCurveTA -n "camera17_rotateY";
	rename -uid "12251A60-4865-7A8E-8456-F6B93B0F4B84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -45.692244389228989 37 -41.930099579542983
		 92.109255952380948 -40.692000884759118 184.69007270408164 -87.483091949805385 253.82737691326531 -77.000003835962488
		 329.97759736394556 -76.853071447382405 403.79898724489794 -54.600007611338654 471.45774107142859 -36.826137485971358
		 541.45774107142859 -20.652454842027797 616.70108397108845 -9.6000167011238915;
	setAttr -s 10 ".kit[0:9]"  2 18 3 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  2 18 3 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "camera17_rotateZ";
	rename -uid "EE0C744D-4EC5-9B26-46B5-CC9A21FC093C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 37 0 92.109255952380948 0 184.69007270408164 0
		 253.82737691326531 0 329.97759736394556 0 403.79898724489794 0 471.45774107142859 0
		 541.45774107142859 0 616.70108397108845 0;
	setAttr -s 10 ".kit[0:9]"  2 18 1 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  2 18 1 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kix[2:9]"  1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 0 0 0 0 0;
createNode expression -n "expression4";
	rename -uid "75A13B07-4CAB-D089-EE57-0B93BE36D5D5";
	setAttr -k on ".nds";
	setAttr -s 2 ".in";
	setAttr -s 2 ".in";
	setAttr ".ixp" -type "string" ".O[0] = 1 - (.I[0] + .I[1])";
createNode animCurveTU -n "camera18_constrained_target_01";
	rename -uid "91040B30-4F66-A269-55F5-07B2F876D254";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0.25 116 0;
createNode animCurveTU -n "camera18_constrained_target_02";
	rename -uid "7FBAE357-43C3-6044-18DB-52835064780F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  400 0 540 1;
createNode polyCube -n "polyCube7";
	rename -uid "571C7792-491E-8D11-CF33-2E87E36BFABE";
	setAttr ".cuv" 4;
createNode animCurveTL -n "camera17_translateX1";
	rename -uid "CE920D0C-41C4-7599-7973-BB87BF233D26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -4184.9171511625109 91 -4184.9171511625109
		 150 -3818.8623884849271 210 -4782.8691917799442 300 -5401.1616435992191 365 -3759.9692071879872
		 483.79898724489794 -2220.6541793991901 551.45774107142859 -1478.7305862652738 621.45774107142859 -394.28292610609509
		 696.70108397108845 -106.44829175127744;
	setAttr -s 10 ".kit[0:9]"  18 18 9 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  18 18 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "camera17_translateY1";
	rename -uid "7DB2A918-4910-984C-6309-568FF279C49E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 810.07448300253782 91 810.07448300253782
		 150 1370.0744830025378 210 1310.0744830025378 300 1790.0744830025378 365 1510.0744830025378
		 483.79898724489794 2258.7829010646537 621.45774107142859 3176.4977699331962 696.70108397108845 3471.1727085417506;
	setAttr -s 9 ".kit[0:8]"  18 18 9 9 9 9 9 9 
		3;
	setAttr -s 9 ".kot[0:8]"  18 18 9 9 9 9 9 9 
		3;
createNode animCurveTL -n "camera17_translateZ1";
	rename -uid "0B945AB7-4F7C-4F36-F193-11A7A9EC4122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -2991.5964611474333 91 -2991.5964611474333
		 150 -3380.0567715224979 210 -2707.3411919369728 300 -817.00833103265722 365 177.74518773367669
		 483.79898724489794 1506.489132866084 551.45774107142859 2072.4191498545997 621.45774107142859 1065.3663791013917
		 696.70108397108845 487.55807250071052;
	setAttr -s 10 ".kit[0:9]"  18 18 9 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  18 18 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "camera17_rotateX1";
	rename -uid "E9189459-4519-F488-8745-1983C1D2800F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -81.527230043911842 91 -81.527230043911842
		 150 -46.527237465388964 210 -41.527238571337854 300 -49.527235414437449 365 -43.527235247472241
		 483.79898724489794 -46.658923041877486 551.45774107142859 -48.052031198880954 621.45774107142859 -70.504537862504108
		 696.70108397108845 -80.287801276277861;
	setAttr -s 10 ".kit[0:9]"  18 18 9 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  18 18 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "camera17_rotateY1";
	rename -uid "6B59EE2E-4AEE-956E-C36A-38B1047CACA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 139.51686214567499 91 139.51686214567499
		 150 138.51686226014306 210 166.51685606682926 300 239.5168407737491 365 268.51683489285404
		 483.79898724489794 305.39999238866136 551.45774107142859 323.17386251402866 621.45774107142859 339.34754515797221
		 696.70108397108845 350.39998329887612;
	setAttr -s 10 ".kit[0:9]"  18 18 9 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  18 18 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "camera17_rotateZ1";
	rename -uid "79CA5E2B-48B1-109F-1CE9-018656011854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 91 0 150 0 210 0 300 0 365 0 483.79898724489794 0
		 551.45774107142859 0 621.45774107142859 0 696.70108397108845 0;
	setAttr -s 10 ".kit[0:9]"  18 18 9 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  18 18 9 9 9 9 9 9 
		9 3;
createNode expression -n "expression5";
	rename -uid "9157498F-498C-6742-480D-36A0EB468F86";
	setAttr -k on ".nds";
	setAttr -s 2 ".in";
	setAttr -s 2 ".in";
	setAttr ".ixp" -type "string" ".O[0] = 1 - (.I[0] + .I[1])";
createNode animCurveTU -n "camera18_constrained_target_04";
	rename -uid "2678EB99-42D6-720B-4D58-FE8394721BD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  300 0 440 1;
createNode polyCube -n "polyCube8";
	rename -uid "79B856C0-42C7-0D2A-128B-F99E33F81C1A";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube9";
	rename -uid "1E2736C0-4765-2D1C-ED68-9D82C3FC03D7";
	setAttr ".cuv" 4;
createNode animCurveTL -n "camera17_translateX2";
	rename -uid "47FCF7B2-4FA6-6C7D-E015-8D820BA98FAD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -5084.2619734609707 139.16795514455782 -3963.5087173437805
		 206.24023363095239 -3684.3236278488803 310.96994047619046 -3759.9692071879872 430 -2220.6541793991901
		 499.80819323979591 -1478.7305862652738 569.80819323979597 -394.28292610609509 645.05153613945583 -106.44829175127744;
	setAttr -s 8 ".kit[0:7]"  2 9 9 9 9 9 9 3;
	setAttr -s 8 ".kot[0:7]"  2 9 9 9 9 9 9 3;
createNode animCurveTL -n "camera17_translateY2";
	rename -uid "44823164-4FD2-EDCC-6A9E-C390D8A9B11C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1678.4363930872953 139.16795514455782 1675.5404398251555
		 206.24023363095239 1564.5069858066681 310.96994047619046 1510.0744830025378 430 2258.7829010646537
		 569.80819323979597 3176.4977699331962 645.05153613945583 3471.1727085417506;
	setAttr -s 7 ".kit[0:6]"  2 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  2 9 9 9 9 9 3;
createNode animCurveTL -n "camera17_translateZ2";
	rename -uid "AB42DACF-4478-DB7F-EA79-8DAACFBCC030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -3756.4283239236615 139.16795514455782 -2722.0907003999464
		 206.24023363095239 -1824.5823674026421 310.96994047619046 177.74518773367669 430 1506.489132866084
		 499.80819323979591 2072.4191498545997 569.80819323979597 1065.3663791013917 645.05153613945583 487.55807250071052;
	setAttr -s 8 ".kit[0:7]"  2 9 9 9 9 9 9 3;
	setAttr -s 8 ".kot[0:7]"  2 9 9 9 9 9 9 3;
createNode animCurveTA -n "camera17_rotateX2";
	rename -uid "4985F377-407F-B002-B790-B4BFBFB9B1A2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -53.140916690240537 122.30353295068028 -42.958592593858974
		 189.4707774234694 -47.527238204694534 310.96994047619046 -43.527235247472241 430 -46.658923041877486
		 499.80819323979591 -48.052031198880954 569.80819323979597 -70.504537862504108 645.05153613945583 -80.287801276277861;
	setAttr -s 8 ".kit[0:7]"  2 9 9 9 9 9 9 3;
	setAttr -s 8 ".kot[0:7]"  2 9 9 9 9 9 9 3;
createNode animCurveTA -n "camera17_rotateY2";
	rename -uid "EFFAEC0E-49AB-5F68-2CF5-5EB63E545A88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 226.11923605553363 122.30353295068028 228.51684470094054
		 189.4707774234694 260.51683804975443 310.96994047619046 268.51683489285404 430 305.39999238866136
		 499.80819323979591 323.17386251402866 569.80819323979597 339.34754515797221 645.05153613945583 350.39998329887612;
	setAttr -s 8 ".kit[0:7]"  2 9 9 9 9 9 9 3;
	setAttr -s 8 ".kot[0:7]"  2 9 9 9 9 9 9 3;
createNode animCurveTA -n "camera17_rotateZ2";
	rename -uid "A6B0A201-4E1B-0EAA-E0A4-E2BABE26B81E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 139.16795514455782 0 206.24023363095239 0
		 310.96994047619046 0 430 0 499.80819323979591 0 569.80819323979597 0 645.05153613945583 0;
	setAttr -s 8 ".kit[0:7]"  2 9 9 9 9 9 9 3;
	setAttr -s 8 ".kot[0:7]"  2 9 9 9 9 9 9 3;
createNode expression -n "expression6";
	rename -uid "826F41EB-48B1-B418-B70F-4284CEC2879E";
	setAttr -k on ".nds";
	setAttr -s 2 ".in";
	setAttr -s 2 ".in";
	setAttr ".ixp" -type "string" ".O[0] = 1 - (.I[0] + .I[1])";
createNode animCurveTU -n "camera18_constrained_target_05";
	rename -uid "031D86AF-4592-7341-4F73-198FED49137F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  450 0 590 1;
createNode polyCube -n "polyCube10";
	rename -uid "D0331AE8-43D9-DF2B-4B39-E0A36C6BC03D";
	setAttr ".cuv" 4;
createNode animCurveTU -n "camera22Shape_focalLength";
	rename -uid "2F9456F7-4DA3-61A5-731B-05AF842A3000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  290 30 410 35;
createNode animCurveTL -n "camera17_translateX3";
	rename -uid "B1EB08B7-4668-3D67-DAB8-88B012BD2059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -142.22491377387755 63.056125 -788.05613341034234
		 104.69578762755103 -1776.2657424513507 164.54404910714285 -3911.4447699437878 206.71415412414967 -4213.9713798506182
		 256.55491943027209 -3783.1787174163396 294.37102125850339 -3066.2540682353615 329.82156271258503 -2220.6541793991901
		 397.69715688775511 -1478.7305862652738 467.69715688775511 -394.28292610609509 542.94049978741498 -106.44829175127744;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 11 ".kot[0:10]"  10 9 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "camera17_translateY3";
	rename -uid "F5CFD7DE-432B-D6F8-3B3D-60ABAE14DE7A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1049.9342245038065 63.056125 1455.9975089183035
		 104.69578762755103 1557.2339612125729 206.71415412414967 1544.5734657685402 256.55491943027209 1915.6718249342073
		 329.82156271258503 2258.7829010646537 467.69715688775511 3176.4977699331962 542.94049978741498 3471.1727085417506;
	setAttr -s 8 ".kit[0:7]"  10 9 9 9 9 9 9 3;
	setAttr -s 8 ".kot[0:7]"  10 9 9 9 9 9 9 3;
createNode animCurveTL -n "camera17_translateZ3";
	rename -uid "CF9255A0-422D-5BA2-3662-19A70EF2FE40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -2350.952624350211 63.056125 -3336.0938891278442
		 104.69578762755103 -3536.5000169030864 164.54404953231293 -3271.1423981722401 206.71415412414967 -2681.3189468412347
		 256.55491943027209 -1405.1811097235038 329.82156271258503 1506.489132866084 397.69715688775511 2072.4191498545997
		 467.69715688775511 1065.3663791013917 542.94049978741498 487.55807250071052;
	setAttr -s 10 ".kit[0:9]"  10 9 9 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  10 9 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "camera17_rotateX3";
	rename -uid "6AA0FA1C-42B0-FDDB-18FF-9CBA9C648D85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -49.850393238541862 63.056125 -55.836055633069698
		 104.69578762755103 -51.836056517828823 206.71415412414967 -44.717154008834285 256.55491943027209 -52.45003459370426
		 329.82156271258503 -46.658923041877486 397.69715688775511 -52.922247376337225 467.69715688775511 -70.504537862504108
		 542.94049978741498 -80.287801276277861;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 1 9 9 
		3;
	setAttr -s 9 ".kot[0:8]"  10 9 9 9 9 1 9 9 
		3;
	setAttr -s 9 ".kix[5:8]"  0.99957923979263286 0.99592480474129519 
		0.99516910810205195 1;
	setAttr -s 9 ".kiy[5:8]"  0.029005919664480576 -0.090187489714554744 
		-0.098175589019706327 0;
	setAttr -s 9 ".kox[5:8]"  0.99957923964960527 0.99592480474129519 
		0.99516910810205195 1;
	setAttr -s 9 ".koy[5:8]"  0.029005924593382991 -0.090187489714554744 
		-0.098175589019706327 0;
createNode animCurveTA -n "camera17_rotateY3";
	rename -uid "0E0B6BD1-4FB6-6061-AAE0-6ABEBD227B88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -158.99998121608903 63.056125 -140.67525952104978
		 104.69578762755103 -126.12333966762417 164.54404953231293 -101.99999670539245 206.71415412414967 -87.000003835962943
		 256.55491943027209 -76.853071447382405 329.82156271258503 -54.600007611338654 397.69715688775511 -36.826137485971358
		 467.69715688775511 -20.652454842027797 542.94049978741498 -9.6000167011238915;
	setAttr -s 10 ".kit[0:9]"  10 9 9 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  10 9 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "camera17_rotateZ3";
	rename -uid "CC0BE8A3-46DA-4A1F-58FE-BEA7F6F8F99B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 63.056125 0 104.69578762755103 0 164.54404953231293 0
		 206.71415412414967 0 256.55491943027209 0 329.82156271258503 0 397.69715688775511 0
		 467.69715688775511 0 542.94049978741498 0;
	setAttr -s 10 ".kit[0:9]"  10 9 9 9 9 9 9 9 
		9 3;
	setAttr -s 10 ".kot[0:9]"  10 9 9 9 9 9 9 9 
		9 3;
createNode expression -n "expression7";
	rename -uid "695176E7-46A5-7BFB-3FA5-3BA779996F73";
	setAttr -k on ".nds";
	setAttr -s 2 ".in";
	setAttr -s 2 ".in";
	setAttr ".ixp" -type "string" ".O[0] = 1 - (.I[0] + .I[1])";
createNode animCurveTU -n "camera18_constrained_target_06";
	rename -uid "3605634B-4A3F-826B-804C-83A474251543";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 116 0;
createNode animCurveTU -n "camera18_constrained_target_07";
	rename -uid "0C84B516-4063-5106-851F-2595048D3A91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  329 0 469 1;
createNode polyCube -n "polyCube11";
	rename -uid "15BB081D-402A-999F-346A-21A5DCF0A8E2";
	setAttr ".cuv" 4;
createNode animCurveTU -n "camera18_11_constrainedShape_focalLength";
	rename -uid "1D256027-4FE0-6FFB-7956-2A9648B2AA69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 35 91 35 250 35 350 35;
createNode animCurveTL -n "camera17_translateX4";
	rename -uid "AD95D7A2-4F63-CCA7-7A86-7F83368C244B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -2757.9827291270008 34.544049107142854 -3911.4447699437878
		 76.714154124149658 -4213.9713798506182 126.55491943027211 -3783.1787174163396 164.37102125850339 -3066.2540682353615
		 199.47957397959183 -2220.6541793991901 295.48474851190474 -544.33701636460387 380.32920089285716 -240.607;
	setAttr -s 8 ".kit[0:7]"  1 1 9 9 9 9 9 1;
	setAttr -s 8 ".kot[0:7]"  1 1 9 9 9 9 9 1;
	setAttr -s 8 ".kix[0:7]"  0.46666666666666667 0.0013908441088103965 
		0.023904630468119629 0.0025458238477687367 0.0015556996499104024 0.0017329876131678035 
		0.003044519858519302 1;
	setAttr -s 8 ".kiy[0:7]"  -547.78179664163918 -0.99999903277586477 
		0.99971424349270055 0.99999675938521726 0.9999987898985675 0.99999849837583876 0.99999536543867595 
		0;
	setAttr -s 8 ".kox[0:7]"  1.1181349702380954 0.0013908441088110114 
		0.023904630468119629 0.0025458238477687367 0.0015556996499104024 0.0017329876131678035 
		0.003044519858519302 1;
	setAttr -s 8 ".koy[0:7]"  -1312.4871061818649 -0.99999903277586466 
		0.99971424349270055 0.99999675938521726 0.9999987898985675 0.99999849837583876 0.99999536543867595 
		0;
createNode animCurveTL -n "camera17_translateY4";
	rename -uid "A1AE53F0-4C9D-2451-4CA3-77B34EC0A9DF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1546.8478190771277 76.714154124149658 1544.5734657685402
		 126.55491943027211 1915.6718249342073 199.47957397959183 2258.7829010646537 295.48474851190474 2326.6731848988234
		 380.32920089285716 2271.1729999999998;
	setAttr -s 6 ".kit[0:5]"  1 1 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 1 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0.46666666666666667 0.014092621015447464 
		0.0057295707534102498 0.013699385046295618 0.43750710375399204 0.050891428194068132;
	setAttr -s 6 ".kiy[0:5]"  -9.4731368656796349 0.99990069408562521 
		0.99998358587477909 0.99990615902161206 0.89921495437119692 -0.99870419170862001;
	setAttr -s 6 ".kox[0:5]"  2.5238051374716552 0.014092621015443013 
		0.0057295707534102498 0.013699385046295618 0.43750710375399204 0.050891428194068132;
	setAttr -s 6 ".koy[0:5]"  -51.232181763372637 0.99990069408562521 
		0.99998358587477909 0.99990615902161206 0.89921495437119692 -0.99870419170862001;
createNode animCurveTL -n "camera17_translateZ4";
	rename -uid "E24AA82C-4057-318B-5C46-6D93D0199731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -3437.0398433372898 34.544049532312926 -3271.1423981722401
		 76.714154124149658 -2681.3189468412347 126.55491943027211 -1405.1811097235038 199.47957397959183 1506.489132866084
		 295.48474851190474 1452.7747320480366 380.32920089285716 1333.9010000000001;
	setAttr -s 7 ".kit[0:6]"  1 1 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 1 9 9 9 9 1;
	setAttr -s 7 ".kix[0:6]"  0.46666666666666667 0.003964593320652657 
		0.001643670140726132 0.00097716481516078673 0.0019702835469324535 0.034907654363890393 
		1;
	setAttr -s 7 ".kiy[0:6]"  47.18810020949104 0.99999214096901867 0.99999864917332193 
		0.99999952257434799 0.99999805898948868 -0.99939054211394807 0;
	setAttr -s 7 ".kox[0:6]"  1.1181349844104307 0.0039645933206521461 
		0.001643670140726132 0.00097716481516078673 0.0019702835469324535 0.034907654363890393 
		1;
	setAttr -s 7 ".koy[0:6]"  113.06285505449341 0.99999214096901867 
		0.99999864917332193 0.99999952257434799 0.99999805898948868 -0.99939054211394807 
		0;
createNode animCurveTA -n "camera17_rotateX4";
	rename -uid "DF2F41D0-4BF9-320B-5E19-AE9D1CB9F764";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -49.803692564049513 76.714154124149658 -44.717154008834285
		 126.55491943027211 -52.45003459370426 199.47957397959183 -46.658923041877486 241.18695705782312 -52.922247376337225
		 295.48474851190474 -56.639417874597235 380.32920089285716 -55.928337874597069;
	setAttr -s 7 ".kit[0:6]"  1 1 9 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  1 1 9 1 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0.46666666666666667 0.99999775026463988 
		0.99996570838460486 0.9995752867368255 0.9985218505202863 0.9999360247977056 0.99999037166921301;
	setAttr -s 7 ".kiy[0:6]"  0.021114317142106209 -0.0021211943943506314 
		-0.0082814283113061167 0.029141828099709513 -0.054351762009551177 -0.011311335542815267 
		0.0043882307219658455;
	setAttr -s 7 ".kox[0:6]"  2.5238051374716552 0.99999775026464 0.99996570838460486 
		0.99888677088287492 0.9985218505202863 0.9999360247977056 0.99999037166921301;
	setAttr -s 7 ".koy[0:6]"  0.11418947588025741 -0.0021211943943507646 
		-0.0082814283113061167 0.047172226523485176 -0.054351762009551177 -0.011311335542815267 
		0.0043882307219658455;
createNode animCurveTA -n "camera17_rotateY4";
	rename -uid "09A1B0D4-4A10-2F84-C94B-13AFB6E74957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -115.50473564344452 34.544049532312926 -101.99999670539245
		 76.714154124149658 -87.000003835962943 126.55491943027211 -76.853071447382405 199.47957397959183 -54.600007611338654
		 241.18695705782312 -36.826137485971358 294 -25.45245484202783 380.32920089285716 -9.6524571683936529;
	setAttr -s 8 ".kit[0:7]"  1 1 9 9 9 9 9 1;
	setAttr -s 8 ".kot[0:7]"  1 1 9 9 9 9 9 1;
	setAttr -s 8 ".kix[0:7]"  0.46666666666666667 0.98031641594692409 
		0.98991559155079212 0.99058676315872762 0.98369444703271358 0.98721419142790567 0.99481251849184515 
		0.99593100657717137;
	setAttr -s 8 ".kiy[0:7]"  0.10036928903314069 0.19743283573148995 
		0.14165846817132247 0.13688632018837765 0.17984781032029193 0.15939931067400046 0.10172538056902219 
		0.090118977680520698;
	setAttr -s 8 ".kox[0:7]"  1.1181349844104307 0.98031641594692398 
		0.98991559155079212 0.99058676315872762 0.98369444703271358 0.98721419142790567 0.99481251849184515 
		0.99493644295040595;
	setAttr -s 8 ".koy[0:7]"  0.24048517163219318 0.19743283573148979 
		0.14165846817132247 0.13688632018837765 0.17984781032029193 0.15939931067400046 0.10172538056902219 
		0.10050609180141165;
createNode animCurveTA -n "camera17_rotateZ4";
	rename -uid "D6D2A708-4E2A-1BE6-D78C-5EBF67FEAB3D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 34.544049532312926 0 76.714154124149658 0
		 126.55491943027211 0 199.47957397959183 0 241.18695705782312 0 295.48474851190474 0
		 380.32920089285716 0;
	setAttr -s 8 ".kit[0:7]"  1 1 9 9 9 9 9 1;
	setAttr -s 8 ".kot[0:7]"  1 1 9 9 9 9 9 1;
	setAttr -s 8 ".kix[0:7]"  0.46666666666666667 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  1.1181349844104307 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode expression -n "expression8";
	rename -uid "965801B4-488F-48FA-B18E-F498C455D44E";
	setAttr -k on ".nds";
	setAttr -s 2 ".in";
	setAttr -s 2 ".in";
	setAttr ".ixp" -type "string" ".O[0] = 1 - (.I[0] + .I[1])";
createNode animCurveTU -n "camera18_constrained_target_08";
	rename -uid "D91E7B8E-4E4B-C54A-FC52-5AB4B99BBE2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 116 0;
createNode animCurveTU -n "camera18_constrained_target_09";
	rename -uid "C5C3C26C-497E-9A97-EA7D-E0942489A367";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  184 0 365 1;
createNode polyCube -n "polyCube12";
	rename -uid "618A89AD-41B0-4674-CCDA-F9BB72B95BCF";
	setAttr ".cuv" 4;
createNode animCurveTU -n "camera18_11_constrainedShape_focalLength1";
	rename -uid "6F0F28EB-4C82-2A11-7FB8-7EB58BFDC70B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 35 91 35 250 35 350 35;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "8044628B-4655-FDD1-7626-27A015FE0C2D";
	setAttr -s 4 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2428.3423943488337 -592.8571192991177 ;
	setAttr ".tgi[0].vh" -type "double2" 2934.2947551964739 859.52377536940332 ;
	setAttr ".tgi[0].ni[0].x" 82.857139587402344;
	setAttr ".tgi[0].ni[0].y" 390;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" -1084.2948287088664 -353.5714145217629 ;
	setAttr ".tgi[1].vh" -type "double2" 1821.1995613316651 433.33331611421443 ;
	setAttr -s 7 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" -40;
	setAttr ".tgi[1].ni[0].y" -81.428573608398438;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 267.14285278320313;
	setAttr ".tgi[1].ni[1].y" 121.42857360839844;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 267.14285278320313;
	setAttr ".tgi[1].ni[2].y" 20;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 574.28570556640625;
	setAttr ".tgi[1].ni[3].y" 88.571426391601563;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 267.14285278320313;
	setAttr ".tgi[1].ni[4].y" 222.85714721679688;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 267.14285278320313;
	setAttr ".tgi[1].ni[5].y" -81.428573608398438;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 558.7938232421875;
	setAttr ".tgi[1].ni[6].y" -126.64730072021484;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "Untitled_3";
	setAttr ".tgi[2].vl" -type "double2" -1161.7673531029125 -979.76186582966625 ;
	setAttr ".tgi[2].vh" -type "double2" 1541.5292427744357 -247.61903777955112 ;
	setAttr -s 7 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" -52.857143402099609;
	setAttr ".tgi[2].ni[0].y" -222.85714721679688;
	setAttr ".tgi[2].ni[0].nvs" 18306;
	setAttr ".tgi[2].ni[1].x" -392.85714721679688;
	setAttr ".tgi[2].ni[1].y" -770;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" 397.6483154296875;
	setAttr ".tgi[2].ni[2].y" -112.33478546142578;
	setAttr ".tgi[2].ni[2].nvs" 18306;
	setAttr ".tgi[2].ni[3].x" -52.857143402099609;
	setAttr ".tgi[2].ni[3].y" -872.85711669921875;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" -52.857143402099609;
	setAttr ".tgi[2].ni[4].y" -974.28570556640625;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 765.71429443359375;
	setAttr ".tgi[2].ni[5].y" -658.5714111328125;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" 254.28572082519531;
	setAttr ".tgi[2].ni[6].y" -928.5714111328125;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[3].tn" -type "string" "Untitled_4";
	setAttr ".tgi[3].vl" -type "double2" -1446.9285532867555 -802.50485186288711 ;
	setAttr ".tgi[3].vh" -type "double2" 631.60852534237949 266.57321530685726 ;
	setAttr -s 4 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" -507.14285278320313;
	setAttr ".tgi[3].ni[0].y" 114.28571319580078;
	setAttr ".tgi[3].ni[0].nvs" 18304;
	setAttr ".tgi[3].ni[1].x" -882.906005859375;
	setAttr ".tgi[3].ni[1].y" -395.69711303710938;
	setAttr ".tgi[3].ni[1].nvs" 18304;
	setAttr ".tgi[3].ni[2].x" 160.61541748046875;
	setAttr ".tgi[3].ni[2].y" 152.144287109375;
	setAttr ".tgi[3].ni[2].nvs" 18306;
	setAttr ".tgi[3].ni[3].x" -465.71429443359375;
	setAttr ".tgi[3].ni[3].y" 35.714286804199219;
	setAttr ".tgi[3].ni[3].nvs" 18306;
select -ne :time1;
	setAttr ".o" 343;
	setAttr ".unw" 343;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 157 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 128 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 10 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -s 2223 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2208 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "REF_environment.di" "nemestice_clean2RN.phl[1]";
connectAttr "REF_env_trees.di" "nemestice_clean2RN.phl[2]";
connectAttr "REF_env_trees.di" "nemestice_clean2RN.phl[3]";
connectAttr "REF_env_trees.di" "nemestice_clean2RN.phl[4]";
connectAttr "REF_env_trees.di" "nemestice_clean2RN.phl[5]";
connectAttr "REF_env_trees.di" "nemestice_clean2RN.phl[6]";
connectAttr "REF_env_trees.di" "nemestice_clean2RN.phl[7]";
connectAttr "REF_env_trees.di" "nemestice_clean2RN.phl[8]";
connectAttr "REF_env_trees.di" "nemestice_clean2RN.phl[9]";
connectAttr "REF_env_trees.di" "nemestice_clean2RN.phl[10]";
connectAttr "nemestice_clean2RN.phl[11]" "set1.dsm" -na;
connectAttr "nemestice_clean2RN.phl[12]" "set1.dsm" -na;
connectAttr "nemestice_clean2RN.phl[13]" "set1.dsm" -na;
connectAttr "nemestice_clean2RN.phl[14]" "set1.dsm" -na;
connectAttr "nemestice_clean2RN.phl[15]" "set1.dsm" -na;
connectAttr "nemestice_clean2RN.phl[16]" "set1.dsm" -na;
connectAttr "REF_env_trees.di" "nemestice_clean2RN.phl[17]";
connectAttr "REF_env_trees.di" "nemestice_clean2RN.phl[18]";
connectAttr "REF_env_trees.di" "nemestice_clean2RN.phl[19]";
connectAttr "camera1_aim.tx" "camera1_group.tg[0].ttx";
connectAttr "camera1_aim.ty" "camera1_group.tg[0].tty";
connectAttr "camera1_aim.tz" "camera1_group.tg[0].ttz";
connectAttr "camera1_aim.rp" "camera1_group.tg[0].trp";
connectAttr "camera1_aim.rpt" "camera1_group.tg[0].trt";
connectAttr "camera1_aim.pm" "camera1_group.tg[0].tpm";
connectAttr "camera1.pim" "camera1_group.cpim";
connectAttr "camera1.t" "camera1_group.ct";
connectAttr "camera1.rp" "camera1_group.crp";
connectAttr "camera1.rpt" "camera1_group.crt";
connectAttr "camera1_group.crx" "camera1.rx";
connectAttr "camera1_group.cry" "camera1.ry";
connectAttr "camera1_group.crz" "camera1.rz";
connectAttr "camera1_group.db" "cameraShape1.coi";
connectAttr "camera_intro_translateX.o" "camera_intro.tx";
connectAttr "camera_intro_translateY.o" "camera_intro.ty";
connectAttr "camera_intro_translateZ.o" "camera_intro.tz";
connectAttr "camera_intro_rotateX.o" "camera_intro.rx";
connectAttr "camera_intro_rotateY.o" "camera_intro.ry";
connectAttr "camera_intro_rotateZ.o" "camera_intro.rz";
connectAttr "camera_introShape_focalLength.o" "camera_introShape.fl";
connectAttr "camera3_translateX.o" "camera3.tx";
connectAttr "camera3_translateY.o" "camera3.ty";
connectAttr "camera3_translateZ.o" "camera3.tz";
connectAttr "camera3_rotateX.o" "camera3.rx";
connectAttr "camera3_rotateY.o" "camera3.ry";
connectAttr "camera3_rotateZ.o" "camera3.rz";
connectAttr "cameraShape3_focalLength.o" "cameraShape3.fl";
connectAttr "camera4_pos4_translateX.o" "camera4_pos4.tx";
connectAttr "camera4_pos4_translateY.o" "camera4_pos4.ty";
connectAttr "camera4_pos4_translateZ.o" "camera4_pos4.tz";
connectAttr "camera4_pos4_rotateX.o" "camera4_pos4.rx";
connectAttr "camera4_pos4_rotateY.o" "camera4_pos4.ry";
connectAttr "camera4_pos4_rotateZ.o" "camera4_pos4.rz";
connectAttr "camera5_aim.tx" "camera5_group.tg[0].ttx";
connectAttr "camera5_aim.ty" "camera5_group.tg[0].tty";
connectAttr "camera5_aim.tz" "camera5_group.tg[0].ttz";
connectAttr "camera5_aim.rp" "camera5_group.tg[0].trp";
connectAttr "camera5_aim.rpt" "camera5_group.tg[0].trt";
connectAttr "camera5_aim.pm" "camera5_group.tg[0].tpm";
connectAttr "camera5.pim" "camera5_group.cpim";
connectAttr "camera5.t" "camera5_group.ct";
connectAttr "camera5.rp" "camera5_group.crp";
connectAttr "camera5.rpt" "camera5_group.crt";
connectAttr "camera5_translateX.o" "camera5.tx";
connectAttr "camera5_translateY.o" "camera5.ty";
connectAttr "camera5_translateZ.o" "camera5.tz";
connectAttr "camera5_group.crx" "camera5.rx";
connectAttr "camera5_group.cry" "camera5.ry";
connectAttr "camera5_group.crz" "camera5.rz";
connectAttr "camera5_group.db" "cameraShape4.coi";
connectAttr "camera6_elem_translateX.o" "camera6_elem.tx";
connectAttr "camera6_elem_translateY.o" "camera6_elem.ty";
connectAttr "camera6_elem_translateZ.o" "camera6_elem.tz";
connectAttr "camera6_elem_rotateX.o" "camera6_elem.rx";
connectAttr "camera6_elem_rotateY.o" "camera6_elem.ry";
connectAttr "camera6_elem_rotateZ.o" "camera6_elem.rz";
connectAttr "camera7_aim.tx" "camera7_groupq.tg[0].ttx";
connectAttr "camera7_aim.ty" "camera7_groupq.tg[0].tty";
connectAttr "camera7_aim.tz" "camera7_groupq.tg[0].ttz";
connectAttr "camera7_aim.rp" "camera7_groupq.tg[0].trp";
connectAttr "camera7_aim.rpt" "camera7_groupq.tg[0].trt";
connectAttr "camera7_aim.pm" "camera7_groupq.tg[0].tpm";
connectAttr "camera7.pim" "camera7_groupq.cpim";
connectAttr "camera7.t" "camera7_groupq.ct";
connectAttr "camera7.rp" "camera7_groupq.crp";
connectAttr "camera7.rpt" "camera7_groupq.crt";
connectAttr "addDoubleLinear1.o" "camera7_groupq.tx";
connectAttr "addDoubleLinear2.o" "camera7_groupq.ty";
connectAttr "addDoubleLinear3.o" "camera7_groupq.tz";
connectAttr "motionPath1.msg" "camera7_groupq.sml";
connectAttr "motionPath1.rx" "camera7_groupq.rx";
connectAttr "motionPath1.ry" "camera7_groupq.ry";
connectAttr "motionPath1.rz" "camera7_groupq.rz";
connectAttr "motionPath1.ro" "camera7_groupq.ro";
connectAttr "camera7_groupq.crx" "camera7.rx";
connectAttr "camera7_groupq.cry" "camera7.ry";
connectAttr "camera7_groupq.crz" "camera7.rz";
connectAttr "camera7_groupq.db" "cameraShape5.coi";
connectAttr "aim_root_aimConstraint1.crx" "aim_root.rx";
connectAttr "aim_root_aimConstraint1.cry" "aim_root.ry";
connectAttr "aim_root_aimConstraint1.crz" "aim_root.rz";
connectAttr "cam7_constraint_ctrl.target_00" "aim_root_aimConstraint1.w0";
connectAttr "cam7_constraint_ctrl.target_01" "aim_root_aimConstraint1.w1";
connectAttr "cam7_constraint_ctrl.target_02" "aim_root_aimConstraint1.w2";
connectAttr "cam7_constraint_ctrl.target_03" "aim_root_aimConstraint1.w3";
connectAttr "cam7_constraint_ctrl.target_04" "aim_root_aimConstraint1.w4";
connectAttr "aim_root.pim" "aim_root_aimConstraint1.cpim";
connectAttr "aim_root.t" "aim_root_aimConstraint1.ct";
connectAttr "aim_root.rp" "aim_root_aimConstraint1.crp";
connectAttr "aim_root.rpt" "aim_root_aimConstraint1.crt";
connectAttr "aim_root.ro" "aim_root_aimConstraint1.cro";
connectAttr "aim_target.t" "aim_root_aimConstraint1.tg[0].tt";
connectAttr "aim_target.rp" "aim_root_aimConstraint1.tg[0].trp";
connectAttr "aim_target.rpt" "aim_root_aimConstraint1.tg[0].trt";
connectAttr "aim_target.pm" "aim_root_aimConstraint1.tg[0].tpm";
connectAttr "aim_root_aimConstraint1.w0" "aim_root_aimConstraint1.tg[0].tw";
connectAttr "pCube_int_point_1.t" "aim_root_aimConstraint1.tg[1].tt";
connectAttr "pCube_int_point_1.rp" "aim_root_aimConstraint1.tg[1].trp";
connectAttr "pCube_int_point_1.rpt" "aim_root_aimConstraint1.tg[1].trt";
connectAttr "pCube_int_point_1.pm" "aim_root_aimConstraint1.tg[1].tpm";
connectAttr "aim_root_aimConstraint1.w1" "aim_root_aimConstraint1.tg[1].tw";
connectAttr "pCube_int_point_2.t" "aim_root_aimConstraint1.tg[2].tt";
connectAttr "pCube_int_point_2.rp" "aim_root_aimConstraint1.tg[2].trp";
connectAttr "pCube_int_point_2.rpt" "aim_root_aimConstraint1.tg[2].trt";
connectAttr "pCube_int_point_2.pm" "aim_root_aimConstraint1.tg[2].tpm";
connectAttr "aim_root_aimConstraint1.w2" "aim_root_aimConstraint1.tg[2].tw";
connectAttr "pCube_int_point_3.t" "aim_root_aimConstraint1.tg[3].tt";
connectAttr "pCube_int_point_3.rp" "aim_root_aimConstraint1.tg[3].trp";
connectAttr "pCube_int_point_3.rpt" "aim_root_aimConstraint1.tg[3].trt";
connectAttr "pCube_int_point_3.pm" "aim_root_aimConstraint1.tg[3].tpm";
connectAttr "aim_root_aimConstraint1.w3" "aim_root_aimConstraint1.tg[3].tw";
connectAttr "pCube_int_point_4.t" "aim_root_aimConstraint1.tg[4].tt";
connectAttr "pCube_int_point_4.rp" "aim_root_aimConstraint1.tg[4].trp";
connectAttr "pCube_int_point_4.rpt" "aim_root_aimConstraint1.tg[4].trt";
connectAttr "pCube_int_point_4.pm" "aim_root_aimConstraint1.tg[4].tpm";
connectAttr "aim_root_aimConstraint1.w4" "aim_root_aimConstraint1.tg[4].tw";
connectAttr "polyCube6.out" "pCube_int_point_Shape1.i";
connectAttr "expression1.out[0]" "cam7_constraint_ctrl.target_00";
connectAttr "cam7_constraint_ctrl_target_01.o" "cam7_constraint_ctrl.target_01";
connectAttr "cam7_constraint_ctrl_target_02.o" "cam7_constraint_ctrl.target_02";
connectAttr "cam7_constraint_ctrl_target_03.o" "cam7_constraint_ctrl.target_03";
connectAttr "cam7_constraint_ctrl_target_04.o" "cam7_constraint_ctrl.target_04";
connectAttr "pasted__expression1.out[0]" "pasted__cam7_constraint_ctrl.target_00"
		;
connectAttr "camera8_aim.tx" "camera8_group_shrine.tg[0].ttx";
connectAttr "camera8_aim.ty" "camera8_group_shrine.tg[0].tty";
connectAttr "camera8_aim.tz" "camera8_group_shrine.tg[0].ttz";
connectAttr "camera8_aim.rp" "camera8_group_shrine.tg[0].trp";
connectAttr "camera8_aim.rpt" "camera8_group_shrine.tg[0].trt";
connectAttr "camera8_aim.pm" "camera8_group_shrine.tg[0].tpm";
connectAttr "camera8.pim" "camera8_group_shrine.cpim";
connectAttr "camera8.t" "camera8_group_shrine.ct";
connectAttr "camera8.rp" "camera8_group_shrine.crp";
connectAttr "camera8.rpt" "camera8_group_shrine.crt";
connectAttr "addDoubleLinear4.o" "camera8_group_shrine.tx";
connectAttr "addDoubleLinear5.o" "camera8_group_shrine.ty";
connectAttr "addDoubleLinear6.o" "camera8_group_shrine.tz";
connectAttr "motionPath2.msg" "camera8_group_shrine.sml";
connectAttr "motionPath2.rx" "camera8_group_shrine.rx";
connectAttr "motionPath2.ry" "camera8_group_shrine.ry";
connectAttr "motionPath2.rz" "camera8_group_shrine.rz";
connectAttr "motionPath2.ro" "camera8_group_shrine.ro";
connectAttr "camera8_group_shrine.crx" "camera8.rx";
connectAttr "camera8_group_shrine.cry" "camera8.ry";
connectAttr "camera8_group_shrine.crz" "camera8.rz";
connectAttr "camera8_group_shrine.db" "cameraShape6.coi";
connectAttr "camera8_aim_parentConstraint1.ctx" "camera8_aim.tx";
connectAttr "camera8_aim_parentConstraint1.cty" "camera8_aim.ty";
connectAttr "camera8_aim_parentConstraint1.ctz" "camera8_aim.tz";
connectAttr "camera8_aim.ro" "camera8_aim_parentConstraint1.cro";
connectAttr "camera8_aim.pim" "camera8_aim_parentConstraint1.cpim";
connectAttr "camera8_aim.rp" "camera8_aim_parentConstraint1.crp";
connectAttr "camera8_aim.rpt" "camera8_aim_parentConstraint1.crt";
connectAttr "pCube_int_point_4.t" "camera8_aim_parentConstraint1.tg[0].tt";
connectAttr "pCube_int_point_4.rp" "camera8_aim_parentConstraint1.tg[0].trp";
connectAttr "pCube_int_point_4.rpt" "camera8_aim_parentConstraint1.tg[0].trt";
connectAttr "pCube_int_point_4.r" "camera8_aim_parentConstraint1.tg[0].tr";
connectAttr "pCube_int_point_4.ro" "camera8_aim_parentConstraint1.tg[0].tro";
connectAttr "pCube_int_point_4.s" "camera8_aim_parentConstraint1.tg[0].ts";
connectAttr "pCube_int_point_4.pm" "camera8_aim_parentConstraint1.tg[0].tpm";
connectAttr "camera8_aim_parentConstraint1.w0" "camera8_aim_parentConstraint1.tg[0].tw"
		;
connectAttr "expression2.out[0]" "camera9_mixer.target_00";
connectAttr "camera9_mixer_target_01.o" "camera9_mixer.target_01";
connectAttr "camera9_mixer_parentConstraint1.ctx" "camera9_mixer.tx";
connectAttr "camera9_mixer_parentConstraint1.cty" "camera9_mixer.ty";
connectAttr "camera9_mixer_parentConstraint1.ctz" "camera9_mixer.tz";
connectAttr "camera9_mixer_parentConstraint1.crx" "camera9_mixer.rx";
connectAttr "camera9_mixer_parentConstraint1.cry" "camera9_mixer.ry";
connectAttr "camera9_mixer_parentConstraint1.crz" "camera9_mixer.rz";
connectAttr "camera9_mixer.ro" "camera9_mixer_parentConstraint1.cro";
connectAttr "camera9_mixer.pim" "camera9_mixer_parentConstraint1.cpim";
connectAttr "camera9_mixer.rp" "camera9_mixer_parentConstraint1.crp";
connectAttr "camera9_mixer.rpt" "camera9_mixer_parentConstraint1.crt";
connectAttr "camera6_elem.t" "camera9_mixer_parentConstraint1.tg[0].tt";
connectAttr "camera6_elem.rp" "camera9_mixer_parentConstraint1.tg[0].trp";
connectAttr "camera6_elem.rpt" "camera9_mixer_parentConstraint1.tg[0].trt";
connectAttr "camera6_elem.r" "camera9_mixer_parentConstraint1.tg[0].tr";
connectAttr "camera6_elem.ro" "camera9_mixer_parentConstraint1.tg[0].tro";
connectAttr "camera6_elem.s" "camera9_mixer_parentConstraint1.tg[0].ts";
connectAttr "camera6_elem.pm" "camera9_mixer_parentConstraint1.tg[0].tpm";
connectAttr "camera9_mixer_parentConstraint1.w0" "camera9_mixer_parentConstraint1.tg[0].tw"
		;
connectAttr "camera8.t" "camera9_mixer_parentConstraint1.tg[1].tt";
connectAttr "camera8.rp" "camera9_mixer_parentConstraint1.tg[1].trp";
connectAttr "camera8.rpt" "camera9_mixer_parentConstraint1.tg[1].trt";
connectAttr "camera8.r" "camera9_mixer_parentConstraint1.tg[1].tr";
connectAttr "camera8.ro" "camera9_mixer_parentConstraint1.tg[1].tro";
connectAttr "camera8.s" "camera9_mixer_parentConstraint1.tg[1].ts";
connectAttr "camera8.pm" "camera9_mixer_parentConstraint1.tg[1].tpm";
connectAttr "camera9_mixer_parentConstraint1.w1" "camera9_mixer_parentConstraint1.tg[1].tw"
		;
connectAttr "camera9_mixer.target_00" "camera9_mixer_parentConstraint1.w0";
connectAttr "camera9_mixer.target_01" "camera9_mixer_parentConstraint1.w1";
connectAttr "Interpolator.o[6]" "camera11_sampler.tx";
connectAttr "Interpolator.o[7]" "camera11_sampler.ty";
connectAttr "Interpolator.o[8]" "camera11_sampler.tz";
connectAttr "Interpolator.o[9]" "camera11_sampler.rx";
connectAttr "Interpolator.o[10]" "camera11_sampler.ry";
connectAttr "Interpolator.o[11]" "camera11_sampler.rz";
connectAttr "camera12_translateX.o" "camera12.tx";
connectAttr "camera12_translateY.o" "camera12.ty";
connectAttr "camera12_translateZ.o" "camera12.tz";
connectAttr "camera12_rotateX.o" "camera12.rx";
connectAttr "camera12_rotateY.o" "camera12.ry";
connectAttr "camera12_rotateZ.o" "camera12.rz";
connectAttr "camera13_translateX.o" "camera13.tx";
connectAttr "camera13_translateY.o" "camera13.ty";
connectAttr "camera13_translateZ.o" "camera13.tz";
connectAttr "camera13_rotateX.o" "camera13.rx";
connectAttr "camera13_rotateY.o" "camera13.ry";
connectAttr "camera13_rotateZ.o" "camera13.rz";
connectAttr "camera14_translateX.o" "camera14.tx";
connectAttr "camera14_translateY.o" "camera14.ty";
connectAttr "camera14_translateZ.o" "camera14.tz";
connectAttr "camera14_rotateX.o" "camera14.rx";
connectAttr "camera14_rotateY.o" "camera14.ry";
connectAttr "camera14_rotateZ.o" "camera14.rz";
connectAttr "camera15_translateX.o" "camera15.tx";
connectAttr "camera15_translateY.o" "camera15.ty";
connectAttr "camera15_translateZ.o" "camera15.tz";
connectAttr "camera15_rotateX.o" "camera15.rx";
connectAttr "camera15_rotateY.o" "camera15.ry";
connectAttr "camera15_rotateZ.o" "camera15.rz";
connectAttr "expression3.out[0]" "camera16_constrained.target_00";
connectAttr "camera16_constrained_target_03.o" "camera16_constrained.target_01";
connectAttr "camera16_constrained_target_02.o" "camera16_constrained.target_02";
connectAttr "camera16_constrained_aimConstraint1.crx" "camera16_constrained.rx";
connectAttr "camera16_constrained_aimConstraint1.cry" "camera16_constrained.ry";
connectAttr "camera16_constrained_aimConstraint1.crz" "camera16_constrained.rz";
connectAttr "camera16_constrained.target_00" "camera16_constrained_aimConstraint1.w0"
		;
connectAttr "camera16_constrained.target_02" "camera16_constrained_aimConstraint1.w1"
		;
connectAttr "camera16_constrained.target_01" "camera16_constrained_aimConstraint1.w2"
		;
connectAttr "camera16_constrained.pim" "camera16_constrained_aimConstraint1.cpim"
		;
connectAttr "camera16_constrained.t" "camera16_constrained_aimConstraint1.ct";
connectAttr "camera16_constrained.rp" "camera16_constrained_aimConstraint1.crp";
connectAttr "camera16_constrained.rpt" "camera16_constrained_aimConstraint1.crt"
		;
connectAttr "camera16_constrained.ro" "camera16_constrained_aimConstraint1.cro";
connectAttr "cam_16_forward_aim.t" "camera16_constrained_aimConstraint1.tg[0].tt"
		;
connectAttr "cam_16_forward_aim.rp" "camera16_constrained_aimConstraint1.tg[0].trp"
		;
connectAttr "cam_16_forward_aim.rpt" "camera16_constrained_aimConstraint1.tg[0].trt"
		;
connectAttr "cam_16_forward_aim.pm" "camera16_constrained_aimConstraint1.tg[0].tpm"
		;
connectAttr "camera16_constrained_aimConstraint1.w0" "camera16_constrained_aimConstraint1.tg[0].tw"
		;
connectAttr "pCube_int_point_4.t" "camera16_constrained_aimConstraint1.tg[1].tt"
		;
connectAttr "pCube_int_point_4.rp" "camera16_constrained_aimConstraint1.tg[1].trp"
		;
connectAttr "pCube_int_point_4.rpt" "camera16_constrained_aimConstraint1.tg[1].trt"
		;
connectAttr "pCube_int_point_4.pm" "camera16_constrained_aimConstraint1.tg[1].tpm"
		;
connectAttr "camera16_constrained_aimConstraint1.w1" "camera16_constrained_aimConstraint1.tg[1].tw"
		;
connectAttr "pCube_int_point_1.t" "camera16_constrained_aimConstraint1.tg[2].tt"
		;
connectAttr "pCube_int_point_1.rp" "camera16_constrained_aimConstraint1.tg[2].trp"
		;
connectAttr "pCube_int_point_1.rpt" "camera16_constrained_aimConstraint1.tg[2].trt"
		;
connectAttr "pCube_int_point_1.pm" "camera16_constrained_aimConstraint1.tg[2].tpm"
		;
connectAttr "camera16_constrained_aimConstraint1.w2" "camera16_constrained_aimConstraint1.tg[2].tw"
		;
connectAttr "camera17_translateX.o" "camera17.tx";
connectAttr "camera17_translateY.o" "camera17.ty";
connectAttr "camera17_translateZ.o" "camera17.tz";
connectAttr "camera17_rotateX.o" "camera17.rx";
connectAttr "camera17_rotateY.o" "camera17.ry";
connectAttr "camera17_rotateZ.o" "camera17.rz";
connectAttr "expression4.out[0]" "camera18_constrained.target_00";
connectAttr "camera18_constrained_target_01.o" "camera18_constrained.target_01";
connectAttr "camera18_constrained_target_02.o" "camera18_constrained.target_02";
connectAttr "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.crx" "camera18_constrained.rx"
		;
connectAttr "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.cry" "camera18_constrained.ry"
		;
connectAttr "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.crz" "camera18_constrained.rz"
		;
connectAttr "camera18_constrained.target_00" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.w0"
		;
connectAttr "camera18_constrained.target_01" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.w1"
		;
connectAttr "camera18_constrained.target_02" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.w2"
		;
connectAttr "camera18_constrained.pim" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.cpim"
		;
connectAttr "camera18_constrained.t" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.ct"
		;
connectAttr "camera18_constrained.rp" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.crp"
		;
connectAttr "camera18_constrained.rpt" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.crt"
		;
connectAttr "camera18_constrained.ro" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.cro"
		;
connectAttr "cam_18_forward_aim.t" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[0].tt"
		;
connectAttr "cam_18_forward_aim.rp" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[0].trp"
		;
connectAttr "cam_18_forward_aim.rpt" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[0].trt"
		;
connectAttr "cam_18_forward_aim.pm" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[0].tpm"
		;
connectAttr "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.w0" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[0].tw"
		;
connectAttr "pCube_int_point_1.t" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[1].tt"
		;
connectAttr "pCube_int_point_1.rp" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[1].trp"
		;
connectAttr "pCube_int_point_1.rpt" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[1].trt"
		;
connectAttr "pCube_int_point_1.pm" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[1].tpm"
		;
connectAttr "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.w1" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[1].tw"
		;
connectAttr "pCube_int_point_4.t" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[2].tt"
		;
connectAttr "pCube_int_point_4.rp" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[2].trp"
		;
connectAttr "pCube_int_point_4.rpt" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[2].trt"
		;
connectAttr "pCube_int_point_4.pm" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[2].tpm"
		;
connectAttr "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.w2" "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.tg[2].tw"
		;
connectAttr "polyCube7.out" "pCube_int_point_Shape5.i";
connectAttr "camera17_translateX1.o" "camera19.tx";
connectAttr "camera17_translateY1.o" "camera19.ty";
connectAttr "camera17_translateZ1.o" "camera19.tz";
connectAttr "camera17_rotateX1.o" "camera19.rx";
connectAttr "camera17_rotateY1.o" "camera19.ry";
connectAttr "camera17_rotateZ1.o" "camera19.rz";
connectAttr "expression5.out[0]" "camera21_constrained.target_00";
connectAttr "camera18_constrained_target_04.o" "camera21_constrained.target_02";
connectAttr "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.crx" "camera21_constrained.rx"
		;
connectAttr "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.cry" "camera21_constrained.ry"
		;
connectAttr "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.crz" "camera21_constrained.rz"
		;
connectAttr "camera21_constrained.target_00" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.w0"
		;
connectAttr "camera21_constrained.target_01" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.w1"
		;
connectAttr "camera21_constrained.target_02" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.w2"
		;
connectAttr "camera21_constrained.pim" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.cpim"
		;
connectAttr "camera21_constrained.t" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.ct"
		;
connectAttr "camera21_constrained.rp" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.crp"
		;
connectAttr "camera21_constrained.rpt" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.crt"
		;
connectAttr "camera21_constrained.ro" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.cro"
		;
connectAttr "cam_21_forward_aim.t" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[0].tt"
		;
connectAttr "cam_21_forward_aim.rp" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[0].trp"
		;
connectAttr "cam_21_forward_aim.rpt" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[0].trt"
		;
connectAttr "cam_21_forward_aim.pm" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[0].tpm"
		;
connectAttr "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.w0" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[0].tw"
		;
connectAttr "pCube_int_point_7.t" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[1].tt"
		;
connectAttr "pCube_int_point_7.rp" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[1].trp"
		;
connectAttr "pCube_int_point_7.rpt" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[1].trt"
		;
connectAttr "pCube_int_point_7.pm" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[1].tpm"
		;
connectAttr "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.w1" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[1].tw"
		;
connectAttr "pCube_int_point_8.t" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[2].tt"
		;
connectAttr "pCube_int_point_8.rp" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[2].trp"
		;
connectAttr "pCube_int_point_8.rpt" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[2].trt"
		;
connectAttr "pCube_int_point_8.pm" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[2].tpm"
		;
connectAttr "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.w2" "|camera19|camera21_constrained|camera18_constrained_aimConstraint1.tg[2].tw"
		;
connectAttr "polyCube8.out" "pCube_int_point_Shape7.i";
connectAttr "polyCube9.out" "pCubeShape1.i";
connectAttr "camera17_translateX2.o" "camera22.tx";
connectAttr "camera17_translateY2.o" "camera22.ty";
connectAttr "camera17_translateZ2.o" "camera22.tz";
connectAttr "camera17_rotateX2.o" "camera22.rx";
connectAttr "camera17_rotateY2.o" "camera22.ry";
connectAttr "camera17_rotateZ2.o" "camera22.rz";
connectAttr "camera22Shape_focalLength.o" "camera22Shape.fl";
connectAttr "expression6.out[0]" "camera23_constrained.target_00";
connectAttr "camera18_constrained_target_05.o" "camera23_constrained.target_02";
connectAttr "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.crx" "camera23_constrained.rx"
		;
connectAttr "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.cry" "camera23_constrained.ry"
		;
connectAttr "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.crz" "camera23_constrained.rz"
		;
connectAttr "camera23_constrained.target_00" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.w0"
		;
connectAttr "camera23_constrained.target_01" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.w1"
		;
connectAttr "camera23_constrained.target_02" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.w2"
		;
connectAttr "camera23_constrained.pim" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.cpim"
		;
connectAttr "camera23_constrained.t" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.ct"
		;
connectAttr "camera23_constrained.rp" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.crp"
		;
connectAttr "camera23_constrained.rpt" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.crt"
		;
connectAttr "camera23_constrained.ro" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.cro"
		;
connectAttr "cam_23_forward_aim.t" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[0].tt"
		;
connectAttr "cam_23_forward_aim.rp" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[0].trp"
		;
connectAttr "cam_23_forward_aim.rpt" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[0].trt"
		;
connectAttr "cam_23_forward_aim.pm" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[0].tpm"
		;
connectAttr "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.w0" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[0].tw"
		;
connectAttr "pCube_int_point_9.t" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[1].tt"
		;
connectAttr "pCube_int_point_9.rp" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[1].trp"
		;
connectAttr "pCube_int_point_9.rpt" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[1].trt"
		;
connectAttr "pCube_int_point_9.pm" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[1].tpm"
		;
connectAttr "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.w1" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[1].tw"
		;
connectAttr "pCube_int_point_10.t" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[2].tt"
		;
connectAttr "pCube_int_point_10.rp" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[2].trp"
		;
connectAttr "pCube_int_point_10.rpt" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[2].trt"
		;
connectAttr "pCube_int_point_10.pm" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[2].tpm"
		;
connectAttr "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.w2" "|camera22|camera23_constrained|camera18_constrained_aimConstraint1.tg[2].tw"
		;
connectAttr "polyCube10.out" "pCube_int_point_Shape9.i";
connectAttr "camera17_translateX3.o" "camera24.tx";
connectAttr "camera17_translateY3.o" "camera24.ty";
connectAttr "camera17_translateZ3.o" "camera24.tz";
connectAttr "camera17_rotateX3.o" "camera24.rx";
connectAttr "camera17_rotateY3.o" "camera24.ry";
connectAttr "camera17_rotateZ3.o" "camera24.rz";
connectAttr "expression7.out[0]" "camera18_11_constrained.target_00";
connectAttr "camera18_constrained_target_06.o" "camera18_11_constrained.target_01"
		;
connectAttr "camera18_constrained_target_07.o" "camera18_11_constrained.target_02"
		;
connectAttr "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.crx" "camera18_11_constrained.rx"
		;
connectAttr "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.cry" "camera18_11_constrained.ry"
		;
connectAttr "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.crz" "camera18_11_constrained.rz"
		;
connectAttr "camera18_11_constrainedShape_focalLength.o" "camera18_11_constrainedShape.fl"
		;
connectAttr "camera18_11_constrained.target_00" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.w0"
		;
connectAttr "camera18_11_constrained.target_01" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.w1"
		;
connectAttr "camera18_11_constrained.target_02" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.w2"
		;
connectAttr "camera18_11_constrained.pim" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.cpim"
		;
connectAttr "camera18_11_constrained.t" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.ct"
		;
connectAttr "camera18_11_constrained.rp" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.crp"
		;
connectAttr "camera18_11_constrained.rpt" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.crt"
		;
connectAttr "camera18_11_constrained.ro" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.cro"
		;
connectAttr "cam_18_11_forward_aim.t" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[0].tt"
		;
connectAttr "cam_18_11_forward_aim.rp" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[0].trp"
		;
connectAttr "cam_18_11_forward_aim.rpt" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[0].trt"
		;
connectAttr "cam_18_11_forward_aim.pm" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[0].tpm"
		;
connectAttr "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.w0" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[0].tw"
		;
connectAttr "pCube_int_point_11.t" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[1].tt"
		;
connectAttr "pCube_int_point_11.rp" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[1].trp"
		;
connectAttr "pCube_int_point_11.rpt" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[1].trt"
		;
connectAttr "pCube_int_point_11.pm" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[1].tpm"
		;
connectAttr "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.w1" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[1].tw"
		;
connectAttr "pCube_int_point_12.t" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[2].tt"
		;
connectAttr "pCube_int_point_12.rp" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[2].trp"
		;
connectAttr "pCube_int_point_12.rpt" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[2].trt"
		;
connectAttr "pCube_int_point_12.pm" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[2].tpm"
		;
connectAttr "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.w2" "|camera24|camera18_11_constrained|camera18_constrained_aimConstraint1.tg[2].tw"
		;
connectAttr "polyCube11.out" "pCube_int_point_Shape11.i";
connectAttr "camera17_translateX4.o" "camera25.tx";
connectAttr "camera17_translateY4.o" "camera25.ty";
connectAttr "camera17_translateZ4.o" "camera25.tz";
connectAttr "camera17_rotateX4.o" "camera25.rx";
connectAttr "camera17_rotateY4.o" "camera25.ry";
connectAttr "camera17_rotateZ4.o" "camera25.rz";
connectAttr "expression8.out[0]" "camera18_12_constrained.target_00";
connectAttr "camera18_constrained_target_08.o" "camera18_12_constrained.target_01"
		;
connectAttr "camera18_constrained_target_09.o" "camera18_12_constrained.target_02"
		;
connectAttr "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.crx" "camera18_12_constrained.rx"
		;
connectAttr "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.cry" "camera18_12_constrained.ry"
		;
connectAttr "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.crz" "camera18_12_constrained.rz"
		;
connectAttr "camera18_11_constrainedShape_focalLength1.o" "camera18_12_constrainedShape.fl"
		;
connectAttr "camera18_12_constrained.target_00" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.w0"
		;
connectAttr "camera18_12_constrained.target_01" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.w1"
		;
connectAttr "camera18_12_constrained.target_02" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.w2"
		;
connectAttr "camera18_12_constrained.pim" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.cpim"
		;
connectAttr "camera18_12_constrained.t" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.ct"
		;
connectAttr "camera18_12_constrained.rp" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.crp"
		;
connectAttr "camera18_12_constrained.rpt" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.crt"
		;
connectAttr "camera18_12_constrained.ro" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.cro"
		;
connectAttr "cam_18_12_forward_aim.t" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[0].tt"
		;
connectAttr "cam_18_12_forward_aim.rp" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[0].trp"
		;
connectAttr "cam_18_12_forward_aim.rpt" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[0].trt"
		;
connectAttr "cam_18_12_forward_aim.pm" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[0].tpm"
		;
connectAttr "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.w0" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[0].tw"
		;
connectAttr "pCube_int_point_13.t" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[1].tt"
		;
connectAttr "pCube_int_point_13.rp" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[1].trp"
		;
connectAttr "pCube_int_point_13.rpt" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[1].trt"
		;
connectAttr "pCube_int_point_13.pm" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[1].tpm"
		;
connectAttr "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.w1" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[1].tw"
		;
connectAttr "pCube_int_point_14.t" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[2].tt"
		;
connectAttr "pCube_int_point_14.rp" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[2].trp"
		;
connectAttr "pCube_int_point_14.rpt" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[2].trt"
		;
connectAttr "pCube_int_point_14.pm" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[2].tpm"
		;
connectAttr "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.w2" "|camera25|camera18_12_constrained|camera18_constrained_aimConstraint1.tg[2].tw"
		;
connectAttr "polyCube12.out" "pCube_int_point_Shape13.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "typeBlinnSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "typeBlinnSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "nemestice_clean2RN.sr";
connectAttr "typeBlinn.oc" "typeBlinnSG.ss";
connectAttr "typeBlinnSG.msg" "materialInfo1.sg";
connectAttr "typeBlinn.msg" "materialInfo1.m";
connectAttr "multiplyDivide4.ox" "unitConversion8.i";
connectAttr "layerManager.dli[1]" "REF_environment.id";
connectAttr "motionPath1_uValue.o" "motionPath1.u";
connectAttr "bezierShape1.ws" "motionPath1.gp";
connectAttr "positionMarkerShape1.t" "motionPath1.pmt[0]";
connectAttr "positionMarkerShape2.t" "motionPath1.pmt[1]";
connectAttr "camera7_groupq.tmrx" "addDoubleLinear1.i1";
connectAttr "motionPath1.xc" "addDoubleLinear1.i2";
connectAttr "camera7_groupq.tmry" "addDoubleLinear2.i1";
connectAttr "motionPath1.yc" "addDoubleLinear2.i2";
connectAttr "camera7_groupq.tmrz" "addDoubleLinear3.i1";
connectAttr "motionPath1.zc" "addDoubleLinear3.i2";
connectAttr "cam7_constraint_ctrl.target_01" "expression1.in[0]";
connectAttr "cam7_constraint_ctrl.target_02" "expression1.in[1]";
connectAttr "cam7_constraint_ctrl.target_03" "expression1.in[2]";
connectAttr "cam7_constraint_ctrl.target_04" "expression1.in[3]";
connectAttr "cam7_constraint_ctrl.msg" "expression1.obm";
connectAttr "cam7_constraint_ctrl.target_01" "floatMath1._fa";
connectAttr "cam7_constraint_ctrl.target_02" "floatMath1._fb";
connectAttr "pasted__cam7_constraint_ctrl.target_01" "pasted__floatMath1._fa";
connectAttr "pasted__cam7_constraint_ctrl.target_02" "pasted__floatMath1._fb";
connectAttr "pasted__cam7_constraint_ctrl.target_01" "pasted__expression1.in[0]"
		;
connectAttr "pasted__cam7_constraint_ctrl.target_02" "pasted__expression1.in[1]"
		;
connectAttr "pasted__cam7_constraint_ctrl.target_03" "pasted__expression1.in[2]"
		;
connectAttr "pasted__cam7_constraint_ctrl.target_04" "pasted__expression1.in[3]"
		;
connectAttr "pasted__cam7_constraint_ctrl.msg" "pasted__expression1.obm";
connectAttr "floatMath1._fa" "floatMath2._fa";
connectAttr "cam7_constraint_ctrl.target_03" "floatMath2._fb";
connectAttr "cam7_constraint_ctrl.target_04" "floatMath3._fb";
connectAttr "floatMath2.of" "floatMath3._fa";
connectAttr "floatMath3.of" "floatMath4._fb";
connectAttr "motionPath2_uValue.o" "motionPath2.u";
connectAttr "bezierShape1.ws" "motionPath2.gp";
connectAttr "positionMarkerShape4.t" "motionPath2.pmt[1]";
connectAttr "positionMarkerShape5.t" "motionPath2.pmt[2]";
connectAttr "positionMarkerShape6.t" "motionPath2.pmt[3]";
connectAttr "camera8_group_shrine.tmrx" "addDoubleLinear4.i1";
connectAttr "motionPath2.xc" "addDoubleLinear4.i2";
connectAttr "camera8_group_shrine.tmry" "addDoubleLinear5.i1";
connectAttr "motionPath2.yc" "addDoubleLinear5.i2";
connectAttr "camera8_group_shrine.tmrz" "addDoubleLinear6.i1";
connectAttr "motionPath2.zc" "addDoubleLinear6.i2";
connectAttr "camera9_mixer.target_01" "expression2.in[0]";
connectAttr "camera9_mixer.msg" "expression2.obm";
connectAttr "camera9_mixer.sx" ":timeEditor.ats[0].a";
connectAttr "camera9_mixer.sy" ":timeEditor.ats[1].a";
connectAttr "camera9_mixer.sz" ":timeEditor.ats[2].a";
connectAttr ":timeEditor.cmp[0]" "Composition1.cmp";
connectAttr "camera10_sampler_translateX.o" "anim_camera10sampler_AnimSource.an[0].as"
		;
connectAttr "camera10_sampler_translateY.o" "anim_camera10sampler_AnimSource.an[1].as"
		;
connectAttr "camera10_sampler_translateZ.o" "anim_camera10sampler_AnimSource.an[2].as"
		;
connectAttr "camera10_sampler_rotateX.o" "anim_camera10sampler_AnimSource.an[3].as"
		;
connectAttr "camera10_sampler_rotateY.o" "anim_camera10sampler_AnimSource.an[4].as"
		;
connectAttr "camera10_sampler_rotateZ.o" "anim_camera10sampler_AnimSource.an[5].as"
		;
connectAttr "camera11_sampler.tx" "Interpolator.ta[6]";
connectAttr "camera11_sampler.ty" "Interpolator.ta[7]";
connectAttr "camera11_sampler.tz" "Interpolator.ta[8]";
connectAttr "camera11_sampler.rx" "Interpolator.ta[9]";
connectAttr "camera11_sampler.ry" "Interpolator.ta[10]";
connectAttr "camera11_sampler.rz" "Interpolator.ta[11]";
connectAttr "Composition1.st" "Interpolator.pts";
connectAttr "Baked_ClipEvaluator.o" "Interpolator.in[0]";
connectAttr "anim_camera11sampler_ClipEvaluator.o" "Interpolator.in[1]";
connectAttr "camera11_sampler_translateX.o" "anim_camera11sampler_AnimSource.an[0].as"
		;
connectAttr "camera11_sampler_translateY.o" "anim_camera11sampler_AnimSource.an[1].as"
		;
connectAttr "camera11_sampler_translateZ.o" "anim_camera11sampler_AnimSource.an[2].as"
		;
connectAttr "camera11_sampler_rotateX.o" "anim_camera11sampler_AnimSource.an[3].as"
		;
connectAttr "camera11_sampler_rotateY.o" "anim_camera11sampler_AnimSource.an[4].as"
		;
connectAttr "camera11_sampler_rotateZ.o" "anim_camera11sampler_AnimSource.an[5].as"
		;
connectAttr "Composition1.ct[1]" "anim_camera11sampler.clp[0].cpt";
connectAttr "anim_camera11sampler_timeWarp.o" "anim_camera11sampler.clp[0].sin";
connectAttr "Composition1.t[1].idx" "anim_camera11sampler.tr";
connectAttr "Composition1.t[1].tm" "anim_camera11sampler.tm";
connectAttr "anim_camera11sampler_AnimSource.rs" "anim_camera11sampler.as";
connectAttr "anim_camera11sampler.s" "anim_camera11sampler_ClipEvaluator.pcs";
connectAttr "camera11_sampler.tx" "anim_camera11sampler_ClipEvaluator.tas[0]";
connectAttr "camera11_sampler.ty" "anim_camera11sampler_ClipEvaluator.tas[1]";
connectAttr "camera11_sampler.tz" "anim_camera11sampler_ClipEvaluator.tas[2]";
connectAttr "camera11_sampler.rx" "anim_camera11sampler_ClipEvaluator.tas[3]";
connectAttr "camera11_sampler.ry" "anim_camera11sampler_ClipEvaluator.tas[4]";
connectAttr "camera11_sampler.rz" "anim_camera11sampler_ClipEvaluator.tas[5]";
connectAttr "camera11_sampler_translateX.o" "anim_camera11sampler_ClipEvaluator.a[0].ai"
		;
connectAttr "camera11_sampler_translateY.o" "anim_camera11sampler_ClipEvaluator.a[1].ai"
		;
connectAttr "camera11_sampler_translateZ.o" "anim_camera11sampler_ClipEvaluator.a[2].ai"
		;
connectAttr "camera11_sampler_rotateX.o" "anim_camera11sampler_ClipEvaluator.a[3].ai"
		;
connectAttr "camera11_sampler_rotateY.o" "anim_camera11sampler_ClipEvaluator.a[4].ai"
		;
connectAttr "camera11_sampler_rotateZ.o" "anim_camera11sampler_ClipEvaluator.a[5].ai"
		;
connectAttr "Composition1.ct[2]" "Baked.clp[0].cpt";
connectAttr "Composition1.t[2].idx" "Baked.tr";
connectAttr "Composition1.t[2].tm" "Baked.tm";
connectAttr "Baked_AnimSource.rs" "Baked.as";
connectAttr "camera11_sampler_translateX_Baked.o" "Baked_AnimSource.an[0].as";
connectAttr "camera11_sampler_translateY_Baked.o" "Baked_AnimSource.an[1].as";
connectAttr "camera11_sampler_translateZ_Baked.o" "Baked_AnimSource.an[2].as";
connectAttr "camera11_sampler_rotateX_Baked.o" "Baked_AnimSource.an[3].as";
connectAttr "camera11_sampler_rotateY_Baked.o" "Baked_AnimSource.an[4].as";
connectAttr "camera11_sampler_rotateZ_Baked.o" "Baked_AnimSource.an[5].as";
connectAttr "Baked.s" "Baked_ClipEvaluator.pcs";
connectAttr "camera11_sampler.tx" "Baked_ClipEvaluator.tas[0]";
connectAttr "camera11_sampler.ty" "Baked_ClipEvaluator.tas[1]";
connectAttr "camera11_sampler.tz" "Baked_ClipEvaluator.tas[2]";
connectAttr "camera11_sampler.rx" "Baked_ClipEvaluator.tas[3]";
connectAttr "camera11_sampler.ry" "Baked_ClipEvaluator.tas[4]";
connectAttr "camera11_sampler.rz" "Baked_ClipEvaluator.tas[5]";
connectAttr "camera11_sampler_translateX_Baked.o" "Baked_ClipEvaluator.a[0].ai";
connectAttr "camera11_sampler_translateY_Baked.o" "Baked_ClipEvaluator.a[1].ai";
connectAttr "camera11_sampler_translateZ_Baked.o" "Baked_ClipEvaluator.a[2].ai";
connectAttr "camera11_sampler_rotateX_Baked.o" "Baked_ClipEvaluator.a[3].ai";
connectAttr "camera11_sampler_rotateY_Baked.o" "Baked_ClipEvaluator.a[4].ai";
connectAttr "camera11_sampler_rotateZ_Baked.o" "Baked_ClipEvaluator.a[5].ai";
connectAttr "layerManager.dli[2]" "REF_env_trees.id";
connectAttr "camera16_constrained.target_01" "expression3.in[0]";
connectAttr "camera16_constrained.target_02" "expression3.in[1]";
connectAttr "camera16_constrained.msg" "expression3.obm";
connectAttr "camera18_constrained.target_01" "expression4.in[0]";
connectAttr "camera18_constrained.target_02" "expression4.in[1]";
connectAttr "camera18_constrained.msg" "expression4.obm";
connectAttr "camera21_constrained.target_01" "expression5.in[0]";
connectAttr "camera21_constrained.target_02" "expression5.in[1]";
connectAttr "camera21_constrained.msg" "expression5.obm";
connectAttr "camera23_constrained.target_01" "expression6.in[0]";
connectAttr "camera23_constrained.target_02" "expression6.in[1]";
connectAttr "camera23_constrained.msg" "expression6.obm";
connectAttr "camera18_11_constrained.target_01" "expression7.in[0]";
connectAttr "camera18_11_constrained.target_02" "expression7.in[1]";
connectAttr "camera18_11_constrained.msg" "expression7.obm";
connectAttr "camera18_12_constrained.target_01" "expression8.in[0]";
connectAttr "camera18_12_constrained.target_02" "expression8.in[1]";
connectAttr "camera18_12_constrained.msg" "expression8.obm";
connectAttr "multiplyDivide1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "camera5_aim.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn";
connectAttr "camera5_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "camera5_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "camera5.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn";
connectAttr "camera5_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "camera5_group.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn";
connectAttr "cameraShape4.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn";
connectAttr "camera16_constrained.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "camera16_constrained_target_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "camera16_constrained_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "pCube_int_point_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "cam_16_forward_aim.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "camera16_constrainedShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "expression3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn";
connectAttr "camera18_constrainedShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "expression4.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn";
connectAttr "|camera17|camera18_constrained|camera18_constrained_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "camera18_constrained.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "typeBlinnSG.pa" ":renderPartition.st" -na;
connectAttr "typeBlinn.msg" ":defaultShaderList1.s" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "floatMath1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__floatMath1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "floatMath2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "floatMath3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "floatMath4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "floatLogic1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCube_int_point_Shape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube_int_point_Shape14.iog" ":initialShadingGroup.dsm" -na;
// End of nemestice_intro_model.ma
