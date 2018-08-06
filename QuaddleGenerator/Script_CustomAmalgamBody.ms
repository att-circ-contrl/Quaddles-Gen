-- Attention-Circuits-Control Laboratory (www.attention-circuits-control.org) --

--For more information on how Quaddles are generated and may be used:
--Watson, MR., Voloh, B., Naghizadeh, M., Womelsdorf, T., (2018) “Quaddles: A multidimensional 3D object set with parametrically-controlled
-- and customizable features” Behav Res Methods.

--Website guide: http://accl.psy.vanderbilt.edu/resources/analysis-tools/3d-image-material/
--Brief instructions on how to use scripts: http://accl.psy.vanderbilt.edu/quaddlegenerator-brief-instructions/

--Scripts, objects and in depth manual available on github: https://github.com/att-circ-contrl/Quaddles-Gen


--this script generates and models the main body of the custom Pyramidal shape
--custom making pyramid function
local controlPoint = ffd_3x3x3()
local objbody = Box()
objbody.length = 20
objbody.width = 20
objbody.height = 40
	
objbody.lengthsegs = 10
objbody.widthsegs = 10
objbody.heightsegs = 10




addmodifier objbody (spherify())

addmodifier objbody controlPoint		-- Gives the rectangle controllers for all it's points
animateAll controlPoint						-- Allows us access to the control points for modification
	
pyramidpercentage
oblongpercentage
concavepercentage
octahedronpercentage
cubepercentage
spherepercentage



	--How much the whole top or bottom layers move up and down	
topbottomZshift = 0.2
	--moving bottom layer corners down
oz1 = controlPoint.control_point_1[3] - topbottomZshift
oz19 = controlPoint.control_point_19[3] - topbottomZshift	
oz7 = controlPoint.control_point_7[3] - topbottomZshift
oz25 = controlPoint.control_point_25[3] - topbottomZshift

--moving top layer corners up
oz3 = controlPoint.control_point_3[3] + topbottomZshift
oz21 = controlPoint.control_point_21[3] + topbottomZshift	
oz9 = controlPoint.control_point_9[3] + topbottomZshift
oz27 = controlPoint.control_point_27[3] + topbottomZshift
	
	
midpointZmod = 0 + topbottomZshift	
	--do nothing with corners or center point of the top and bottom layers
	--move the midpoints of the bottom layer down
oz10 = controlPoint.control_point_10[3] - midpointZmod
oz4 = controlPoint.control_point_4[3] - midpointZmod
oz22 = controlPoint.control_point_22[3] - midpointZmod
oz16 = controlPoint.control_point_16[3] - midpointZmod
	--move the midpoints of the top layer up
oz12 = controlPoint.control_point_12[3] + midpointZmod
oz6 = controlPoint.control_point_6[3] + midpointZmod
oz24 = controlPoint.control_point_24[3] + midpointZmod
oz18 = controlPoint.control_point_18[3] + midpointZmod
	
--bring centres of top and bottom layers toward the centre of the object
topbottommidPointZshift = 0.6
oz13 = controlPoint.control_point_13[3] + topbottommidPointZshift
oz15 = controlPoint.control_point_15[3] - topbottommidPointZshift


	
--move corners of middle layer in
cornerIndent = 0.1
ox2 = controlPoint.control_point_2[1] + cornerIndent
ox20 = controlPoint.control_point_20[1] - cornerIndent
ox8 = controlPoint.control_point_8[1] + cornerIndent
ox26 = controlPoint.control_point_26[1] - cornerIndent
oy2 = controlPoint.control_point_2[2] + cornerIndent
oy20 = controlPoint.control_point_20[2] + cornerIndent
oy8 = controlPoint.control_point_8[2] - cornerIndent
oy26 = controlPoint.control_point_26[2] - cornerIndent

--move midpoints of mildde layer in
midPointIndent = 0.5
oy11 = controlPoint.control_point_11[2] + midPointIndent
ox5 = controlPoint.control_point_5[1] + midPointIndent
ox23 = controlPoint.control_point_23[1] - midPointIndent
oy17 = controlPoint.control_point_17[2] - midPointIndent

	--missing points
--commented out since not needed
ox1 = 0
oy1 = 0
ox10 = 0.5
oy10 = 0
ox19 = 1
oy19 = 0
ox4 = 0
oy4 = 0.5
ox13 = 0.5
oy13 = 0.5
ox22 = 1
oy22 = 0.5
ox7 = 0
oy7 = 1
ox16 = 0.5
oy16 = 1
ox25 = 1
oy25 = 1
oz2 = 0.5
ox11 = 0.5
oz11 = 0.5
oz20 = 0.5
oy5 = 0.5
oz5 = 0.5
oy23 = 0.5
oz23 = 0.5
oz8 = 0.5
ox17 = 0.5
oz17 = 0.5
oz26 = 0.5
ox3 = 0
oy3 = 0
ox12 = 0.5
oy12 = 0
ox21 = 1
oy21 = 0
ox6 = 0
oy6 = 0.5
ox15 = 0.5
oy15 = 0.5
ox24 = 1
oy24 = 0.5
ox9 = 0
oy9 = 1
ox18 = 0.5
oy18 = 1
ox27 = 1
oy27 = 1

--making top layer shrink
topShrink = 0.25
px3 = controlPoint.control_point_3[1] + topShrink
px9 = controlPoint.control_point_9[1] + topShrink
px6 = controlPoint.control_point_6[1] + topShrink
px24 = controlPoint.control_point_24[1] - topShrink
px21 = controlPoint.control_point_21[1] - topShrink
px27 = controlPoint.control_point_27[1] - topShrink
py3 = controlPoint.control_point_3[2] + topShrink
py9 = controlPoint.control_point_9[2] - topShrink
py12 = controlPoint.control_point_19[2] + topShrink
py18 = controlPoint.control_point_18[2] - topShrink
py21 = controlPoint.control_point_21[2] + topShrink
py27 = controlPoint.control_point_27[2] - topShrink

--bottom layer expansion (making the length and width longer)
bottomExpand = 0.25
px1 = controlPoint.control_point_1[1] - bottomExpand
px19 = controlPoint.control_point_19[1] + bottomExpand
px4 = controlPoint.control_point_4[1] - bottomExpand
px22 = controlPoint.control_point_22[1] + bottomExpand
px7 = controlPoint.control_point_7[1] - bottomExpand
px25 = controlPoint.control_point_25[1] + bottomExpand

py1 = controlPoint.control_point_1[2] - bottomExpand
py19 = controlPoint.control_point_19[2] - bottomExpand
py10 = controlPoint.control_point_10[2] - bottomExpand
py16 = controlPoint.control_point_16[2] + bottomExpand
py7 = controlPoint.control_point_7[2] + bottomExpand
py25 = controlPoint.control_point_25[2] + bottomExpand

--middle layer expansion (making length and width longer)
--affecting only corners since the midpoints are pushed inwards (hence 5,11,23,17 are commented out)
middleExpand = bottomExpand
px2 = controlPoint.control_point_2[1] - middleExpand
px20 = controlPoint.control_point_20[1] + middleExpand
--x5 = controlPoint.control_point_5[1] - middleExpand
--x23 = controlPoint.control_point_23[1] + middleExpand
px8 = controlPoint.control_point_8[1] - middleExpand
px26 = controlPoint.control_point_26[1] + middleExpand

py2 = controlPoint.control_point_2[2] - middleExpand
py20 = controlPoint.control_point_20[2] - middleExpand
--y11 = controlPoint.control_point_11[2] - middleExpand
--y17 = controlPoint.control_point_17[2] + middleExpand
py8 = controlPoint.control_point_8[2] + middleExpand
py26 = controlPoint.control_point_26[2] + middleExpand

	
--bottom centre Z shift
bottomcentreZshift = 0.5
pz13 = controlPoint.control_point_13[3] + bottomcentreZshift

--middle layer midpoint compression inwards
middlelayerInwards = 0.5
px5 = controlPoint.control_point_5[1] + middlelayerInwards
px23 = controlPoint.control_point_23[1] - middlelayerInwards
py11 = controlPoint.control_point_11[2] + middlelayerInwards
py17 = controlPoint.control_point_17[2] - middlelayerInwards

--shifting bottom layer upwards
bottomUp = 0.1
pz1 = controlPoint.control_point_1[3] + bottomUp
pz10 = controlPoint.control_point_10[3] + bottomUp
pz19 = controlPoint.control_point_19[3] + bottomUp
pz4 = controlPoint.control_point_4[3] + bottomUp
pz22 = controlPoint.control_point_22[3] + bottomUp
pz7 = controlPoint.control_point_7[3] + bottomUp
pz16 = controlPoint.control_point_16[3] + bottomUp
pz25 = controlPoint.control_point_25[3] + bottomUp

--shifting top layer downwards
--Note: negative values mean the top is going up
topDown = -0.2
pz3 = controlPoint.control_point_3[3] - topDown
pz12 = controlPoint.control_point_12[3] - topDown
pz21 = controlPoint.control_point_21[3] - topDown
pz6 = controlPoint.control_point_6[3] - topDown
pz15 = controlPoint.control_point_15[3] - topDown
pz24 = controlPoint.control_point_24[3] - topDown
pz9 = controlPoint.control_point_9[3] - topDown
pz18 = controlPoint.control_point_18[3] - topDown
pz27 = controlPoint.control_point_27[3] - topDown

--other control points
py4 = controlPoint.control_point_4[2]
py22 = controlPoint.control_point_22[2]
px10 = controlPoint.control_point_10[1]
px16 = controlPoint.control_point_16[1]
px11 = controlPoint.control_point_11[1]
px17 = controlPoint.control_point_17[1]
py5 = controlPoint.control_point_5[2]
py23 = controlPoint.control_point_23[2]
py13 = controlPoint.control_point_13[2]
px13 = controlPoint.control_point_13[1]

pz2 = controlPoint.control_point_2[3]
pz11 = controlPoint.control_point_11[3]
pz5 = controlPoint.control_point_5[3]
pz14 = controlPoint.control_point_14[3]
pz20 = controlPoint.control_point_20[3]
pz23 = controlPoint.control_point_23[3]
pz8 = controlPoint.control_point_8[3]
pz17 = controlPoint.control_point_17[3]
pz26 = controlPoint.control_point_26[3]
py14 = controlPoint.control_point_14[2]
px14 = controlPoint.control_point_14[1]
ox14 = px14
oy14= py14
oz14 = pz14
px12 = controlPoint.control_point_12[1]
px15 = controlPoint.control_point_15[1]
px18 = controlPoint.control_point_18[1]
py6 = controlPoint.control_point_6[2]
py15 = controlPoint.control_point_15[2]
py24 = controlPoint.control_point_24[2]

--The oblong and pyramid control points contributions
nx1 =(ox1*oblongpercentage)+(px1*pyramidpercentage)
nx2=(ox2*oblongpercentage)+(px2*pyramidpercentage)
nx3=(ox3*oblongpercentage)+(px3*pyramidpercentage)
nx4=(ox4*oblongpercentage)+(px4*pyramidpercentage)
nx5=(ox5*oblongpercentage)+(px5*pyramidpercentage)
nx6=(ox6*oblongpercentage)+(px6*pyramidpercentage)
nx7=(ox7*oblongpercentage)+(px7*pyramidpercentage)
nx8=(ox8*oblongpercentage)+(px8*pyramidpercentage)
nx9=(ox9*oblongpercentage)+(px9*pyramidpercentage)
nx10=(ox10*oblongpercentage)+(px10*pyramidpercentage)
nx11=(ox11*oblongpercentage)+(px11*pyramidpercentage)
nx12=(ox12*oblongpercentage)+(px12*pyramidpercentage)
nx13=(ox13*oblongpercentage)+(px13*pyramidpercentage)
nx14=(ox14*oblongpercentage)+(px14*pyramidpercentage)
nx15=(ox15*oblongpercentage)+(px15*pyramidpercentage)
nx16=(ox16*oblongpercentage)+(px16*pyramidpercentage)
nx17=(ox17*oblongpercentage)+(px17*pyramidpercentage)
nx18=(ox18*oblongpercentage)+(px18*pyramidpercentage)
nx19=(ox19*oblongpercentage)+(px19*pyramidpercentage)
nx20=(ox20*oblongpercentage)+(px20*pyramidpercentage)
nx21=(ox21*oblongpercentage)+(px21*pyramidpercentage)
nx22=(ox22*oblongpercentage)+(px22*pyramidpercentage)
nx23=(ox23*oblongpercentage)+(px23*pyramidpercentage)
nx24=(ox24*oblongpercentage)+(px24*pyramidpercentage)
nx25=(ox25*oblongpercentage)+(px25*pyramidpercentage)
nx26=(ox26*oblongpercentage)+(px26*pyramidpercentage)
nx27=(ox27*oblongpercentage)+(px27*pyramidpercentage)
ny1=(oy1*oblongpercentage)+(py1*pyramidpercentage)
ny2=(oy2*oblongpercentage)+(py2*pyramidpercentage)
ny3=(oy3*oblongpercentage)+(py3*pyramidpercentage)
ny4=(oy4*oblongpercentage)+(py4*pyramidpercentage)
ny5=(oy5*oblongpercentage)+(py5*pyramidpercentage)
ny6=(oy6*oblongpercentage)+(py6*pyramidpercentage)
ny7=(oy7*oblongpercentage)+(py7*pyramidpercentage)
ny8=(oy8*oblongpercentage)+(py8*pyramidpercentage)
ny9=(oy9*oblongpercentage)+(py9*pyramidpercentage)
ny10=(oy10*oblongpercentage)+(py10*pyramidpercentage)
ny11=(oy11*oblongpercentage)+(py11*pyramidpercentage)
ny12=(oy12*oblongpercentage)+(py12*pyramidpercentage)
ny13=(oy13*oblongpercentage)+(py13*pyramidpercentage)
ny14=(oy14*oblongpercentage)+(py14*pyramidpercentage)
ny15=(oy15*oblongpercentage)+(py15*pyramidpercentage)
ny16=(oy16*oblongpercentage)+(py16*pyramidpercentage)
ny17=(oy17*oblongpercentage)+(py17*pyramidpercentage)
ny18=(oy18*oblongpercentage)+(py18*pyramidpercentage)
ny19=(oy19*oblongpercentage)+(py19*pyramidpercentage)
ny20=(oy20*oblongpercentage)+(py20*pyramidpercentage)
ny21=(oy21*oblongpercentage)+(py21*pyramidpercentage)
ny22=(oy22*oblongpercentage)+(py22*pyramidpercentage)
ny23=(oy23*oblongpercentage)+(py23*pyramidpercentage)
ny24=(oy24*oblongpercentage)+(py24*pyramidpercentage)
ny25=(oy25*oblongpercentage)+(py25*pyramidpercentage)
ny26=(oy26*oblongpercentage)+(py26*pyramidpercentage)
ny27=(oy27*oblongpercentage)+(py27*pyramidpercentage)
nz1=(oz1*oblongpercentage)+(pz1*pyramidpercentage)
nz2=(oz2*oblongpercentage)+(pz2*pyramidpercentage)
nz3=(oz3*oblongpercentage)+(pz3*pyramidpercentage)
nz4=(oz4*oblongpercentage)+(pz4*pyramidpercentage)
nz5=(oz5*oblongpercentage)+(pz5*pyramidpercentage)
nz6=(oz6*oblongpercentage)+(pz6*pyramidpercentage)
nz7=(oz7*oblongpercentage)+(pz7*pyramidpercentage)
nz8=(oz8*oblongpercentage)+(pz8*pyramidpercentage)
nz9=(oz9*oblongpercentage)+(pz9*pyramidpercentage)
nz10=(oz10*oblongpercentage)+(pz10*pyramidpercentage)
nz11=(oz11*oblongpercentage)+(pz11*pyramidpercentage)
nz12=(oz12*oblongpercentage)+(pz12*pyramidpercentage)
nz13=(oz13*oblongpercentage)+(pz13*pyramidpercentage)
nz14=(oz14*oblongpercentage)+(pz14*pyramidpercentage)
nz15=(oz15*oblongpercentage)+(pz15*pyramidpercentage)
nz16=(oz16*oblongpercentage)+(pz16*pyramidpercentage)
nz17=(oz17*oblongpercentage)+(pz17*pyramidpercentage)
nz18=(oz18*oblongpercentage)+(pz18*pyramidpercentage)
nz19=(oz19*oblongpercentage)+(pz19*pyramidpercentage)
nz20=(oz20*oblongpercentage)+(pz20*pyramidpercentage)
nz21=(oz21*oblongpercentage)+(pz21*pyramidpercentage)
nz22=(oz22*oblongpercentage)+(pz22*pyramidpercentage)
nz23=(oz23*oblongpercentage)+(pz23*pyramidpercentage)
nz24=(oz24*oblongpercentage)+(pz24*pyramidpercentage)
nz25=(oz25*oblongpercentage)+(pz25*pyramidpercentage)
nz26=(oz26*oblongpercentage)+(pz26*pyramidpercentage)
nz27=(oz27*oblongpercentage)+(pz27*pyramidpercentage)

--OCTAHEDRON CONTROL POINTS--
--OCTAHEDRON CONTROL POINTS--
--NOTE:Octahedron control points also have variable prefix as "px,py,pz.." but they are actually octahedron control points
	--making top layer shrink
	topShrink = 0.25
	px3 = controlPoint.control_point_3[1] + topShrink
	px9 = controlPoint.control_point_9[1] + topShrink
	--px6 = controlPoint.control_point_6[1] + topShrink
	--px24 = controlPoint.control_point_24[1] - topShrink
	px21 = controlPoint.control_point_21[1] - topShrink
	px27 = controlPoint.control_point_27[1] - topShrink
	py3 = controlPoint.control_point_3[2] + topShrink
	py9 = controlPoint.control_point_9[2] - topShrink
	--py12 = controlPoint.control_point_19[2] + topShrink
	--py18 = controlPoint.control_point_18[2] - topShrink
	py21 = controlPoint.control_point_21[2] + topShrink
	py27 = controlPoint.control_point_27[2] - topShrink
	
	
	topMidPointShrink = 0.35
	px6 = controlPoint.control_point_6[1] + topMidPointShrink
	py12 = controlPoint.control_point_19[2] + topMidPointShrink
	py18 = controlPoint.control_point_18[2] - topMidPointShrink
	px24 = controlPoint.control_point_24[1] - topMidPointShrink
	
	--bottom layer expansion (making the length and width longer)
	bottomExpand = -0.35
	px1 = controlPoint.control_point_1[1] - bottomExpand
	px19 = controlPoint.control_point_19[1] + bottomExpand
	px4 = controlPoint.control_point_4[1] - bottomExpand
	px22 = controlPoint.control_point_22[1] + bottomExpand
	px7 = controlPoint.control_point_7[1] - bottomExpand
	px25 = controlPoint.control_point_25[1] + bottomExpand

	py1 = controlPoint.control_point_1[2] - bottomExpand
	py19 = controlPoint.control_point_19[2] - bottomExpand
	py10 = controlPoint.control_point_10[2] - bottomExpand
	py16 = controlPoint.control_point_16[2] + bottomExpand
	py7 = controlPoint.control_point_7[2] + bottomExpand
	py25 = controlPoint.control_point_25[2] + bottomExpand

	--middle layer expansion (making length and width longer)
	--affecting only corners since the midpoints are pushed inwards (hence 5,11,23,17 are commented out)
	middleExpand = 1
	--0.6
	--bottomExpand
	px2 = controlPoint.control_point_2[1] - middleExpand
	px20 = controlPoint.control_point_20[1] + middleExpand
	--x5 = controlPoint.control_point_5[1] - middleExpand
	--x23 = controlPoint.control_point_23[1] + middleExpand
	px8 = controlPoint.control_point_8[1] - middleExpand
	px26 = controlPoint.control_point_26[1] + middleExpand

	py2 = controlPoint.control_point_2[2] - middleExpand
	py20 = controlPoint.control_point_20[2] - middleExpand
	--y11 = controlPoint.control_point_11[2] - middleExpand
	--y17 = controlPoint.control_point_17[2] + middleExpand
	py8 = controlPoint.control_point_8[2] + middleExpand
	py26 = controlPoint.control_point_26[2] + middleExpand
	
	--middle points of middle layere
	middleLayerCompression = -0.6
	px5 = controlPoint.control_point_5[1] - middleLayerCompression
	px23 = controlPoint.control_point_23[1] + middleLayerCompression
	py11 = controlPoint.control_point_11[2] - middleLayerCompression
	py17 = controlPoint.control_point_17[2] + middleLayerCompression
		
	--bottom centre Z shift
	bottomcentreZshift = 0
	pz13 = controlPoint.control_point_13[3] + bottomcentreZshift


	--shifting bottom layer upwards
	bottomUp = -0.2
	--pz1 = controlPoint.control_point_1[3] + bottomUp
	pz10 = controlPoint.control_point_10[3] + bottomUp
	pz19 = controlPoint.control_point_19[3] + bottomUp
	pz4 = controlPoint.control_point_4[3] + bottomUp
	pz22 = controlPoint.control_point_22[3] + bottomUp
	--pz7 = controlPoint.control_point_7[3] + bottomUp
	pz16 = controlPoint.control_point_16[3] + bottomUp
	--pz25 = controlPoint.control_point_25[3] + bottomUp
	pz13 = controlPoint.control_point_13[3] + bottomUp --bottom centre
	
	bottomCornerUp = 0.1
	pz1 = controlPoint.control_point_1[3] + bottomCornerUp
	pz7 = controlPoint.control_point_7[3] + bottomCornerUp
	pz25 = controlPoint.control_point_25[3] + bottomCornerUp
	pz19 = controlPoint.control_point_19[3] + bottomCornerUp

	--shifting top layer downwards
	--Note: negative values mean the top is going up
	topDown = -0.2
	--pz3 = controlPoint.control_point_3[3] - topDown
	pz12 = controlPoint.control_point_12[3] - topDown
	--pz21 = controlPoint.control_point_21[3] - topDown
	pz6 = controlPoint.control_point_6[3] - topDown
	pz15 = controlPoint.control_point_15[3] - topDown
	pz24 = controlPoint.control_point_24[3] - topDown
	--pz9 = controlPoint.control_point_9[3] - topDown
	pz18 = controlPoint.control_point_18[3] - topDown
	--pz27 = controlPoint.control_point_27[3] - topDown

	topCornerDown = 0.1
	pz3 = controlPoint.control_point_3[3] - topShrink
	pz9 = controlPoint.control_point_9[3] - topShrink
	pz21 = controlPoint.control_point_21[3] - topShrink
	pz27 = controlPoint.control_point_27[3] - topShrink

	--other control points
	py4 = controlPoint.control_point_4[2]
	py22 = controlPoint.control_point_22[2]
	px10 = controlPoint.control_point_10[1]
	px16 = controlPoint.control_point_16[1]
	px11 = controlPoint.control_point_11[1]
	px17 = controlPoint.control_point_17[1]
	py5 = controlPoint.control_point_5[2]
	py23 = controlPoint.control_point_23[2]
	py13 = controlPoint.control_point_13[2]
	px13 = controlPoint.control_point_13[1]

	pz2 = controlPoint.control_point_2[3]
	pz11 = controlPoint.control_point_11[3]
	pz5 = controlPoint.control_point_5[3]
	pz14 = controlPoint.control_point_14[3]
	pz20 = controlPoint.control_point_20[3]
	pz23 = controlPoint.control_point_23[3]
	pz8 = controlPoint.control_point_8[3]
	pz17 = controlPoint.control_point_17[3]
	pz26 = controlPoint.control_point_26[3]
	py14 = controlPoint.control_point_14[2]
	px14 = controlPoint.control_point_14[1]
	px12 = controlPoint.control_point_12[1]
	px15 = controlPoint.control_point_15[1]
	px18 = controlPoint.control_point_18[1]
	py6 = controlPoint.control_point_6[2]
	py15 = controlPoint.control_point_15[2]
	py24 = controlPoint.control_point_24[2]

--TAKING OCTAHEDRON POINTS INTO CONSIDERATION...
nx1 =nx1 + (px1*octahedronpercentage)
nx2 =nx2 + (px2*octahedronpercentage)
nx3 =nx3 + (px3*octahedronpercentage)
nx4 =nx4 + (px4*octahedronpercentage)
nx5 =nx5 + (px5*octahedronpercentage)
nx6 =nx6 + (px6*octahedronpercentage)
nx7 =nx7 + (px7*octahedronpercentage)
nx8 =nx8 + (px8*octahedronpercentage)
nx9 =nx9 + (px9*octahedronpercentage)
nx10 =nx10 + (px10*octahedronpercentage)
nx11 =nx11 + (px11*octahedronpercentage)
nx12 =nx12 + (px12*octahedronpercentage)
nx13 =nx13 + (px13*octahedronpercentage)
nx14 =nx14 + (px14*octahedronpercentage)
nx15 =nx15 + (px15*octahedronpercentage)
nx16 =nx16 + (px16*octahedronpercentage)
nx17 =nx17 + (px17*octahedronpercentage)
nx18 =nx18 + (px18*octahedronpercentage)
nx19 =nx19 + (px19*octahedronpercentage)
nx20 =nx20 + (px20*octahedronpercentage)
nx21 =nx21 + (px21*octahedronpercentage)
nx22 =nx22 + (px22*octahedronpercentage)
nx23 =nx23 + (px23*octahedronpercentage)
nx24 =nx24 + (px24*octahedronpercentage)
nx25 =nx25 + (px25*octahedronpercentage)
nx26 =nx26 + (px26*octahedronpercentage)
nx27 =nx27 + (px27*octahedronpercentage)
ny1 =ny1 + (py1*octahedronpercentage)
ny2 =ny2 + (py2*octahedronpercentage)
ny3 =ny3 + (py3*octahedronpercentage)
ny4 =ny4 + (py4*octahedronpercentage)
ny5 =ny5 + (py5*octahedronpercentage)
ny6 =ny6 + (py6*octahedronpercentage)
ny7 =ny7 + (py7*octahedronpercentage)
ny8 =ny8 + (py8*octahedronpercentage)
ny9 =ny9 + (py9*octahedronpercentage)
ny10 =ny10 + (py10*octahedronpercentage)
ny11 =ny11 + (py11*octahedronpercentage)
ny12 =ny12 + (py12*octahedronpercentage)
ny13 =ny13 + (py13*octahedronpercentage)
ny14 =ny14 + (py14*octahedronpercentage)
ny15 =ny15 + (py15*octahedronpercentage)
ny16 =ny16 + (py16*octahedronpercentage)
ny17 =ny17 + (py17*octahedronpercentage)
ny18 =ny18 + (py18*octahedronpercentage)
ny19 =ny19 + (py19*octahedronpercentage)
ny20 =ny20 + (py20*octahedronpercentage)
ny21 =ny21 + (py21*octahedronpercentage)
ny22 =ny22 + (py22*octahedronpercentage)
ny23 =ny23 + (py23*octahedronpercentage)
ny24 =ny24 + (py24*octahedronpercentage)
ny25 =ny25 + (py25*octahedronpercentage)
ny26 =ny26 + (py26*octahedronpercentage)
ny27 =ny27 + (py27*octahedronpercentage)
nz1 =nz1 + (pz1*octahedronpercentage)
nz2 =nz2 + (pz2*octahedronpercentage)
nz3 =nz3 + (pz3*octahedronpercentage)
nz4 =nz4 + (pz4*octahedronpercentage)
nz5 =nz5 + (pz5*octahedronpercentage)
nz6 =nz6 + (pz6*octahedronpercentage)
nz7 =nz7 + (pz7*octahedronpercentage)
nz8 =nz8 + (pz8*octahedronpercentage)
nz9 =nz9 + (pz9*octahedronpercentage)
nz10 =nz10 + (pz10*octahedronpercentage)
nz11 =nz11 + (pz11*octahedronpercentage)
nz12 =nz12 + (pz12*octahedronpercentage)
nz13 =nz13 + (pz13*octahedronpercentage)
nz14 =nz14 + (pz14*octahedronpercentage)
nz15 =nz15 + (pz15*octahedronpercentage)
nz16 =nz16 + (pz16*octahedronpercentage)
nz17 =nz17 + (pz17*octahedronpercentage)
nz18 =nz18 + (pz18*octahedronpercentage)
nz19 =nz19 + (pz19*octahedronpercentage)
nz20 =nz20 + (pz20*octahedronpercentage)
nz21 =nz21 + (pz21*octahedronpercentage)
nz22 =nz22 + (pz22*octahedronpercentage)
nz23 =nz23 + (pz23*octahedronpercentage)
nz24 =nz24 + (pz24*octahedronpercentage)
nz25 =nz25 + (pz25*octahedronpercentage)
nz26 =nz26 + (pz26*octahedronpercentage)
nz27 =nz27 + (pz27*octahedronpercentage)

--CONCAVE BODY CONTROL POINTS--
--CONCAVE BODY CONTROL POINTS--

	--making top layer shrink
	topShrink = -0.45
		-- -0.25
	px3 = controlPoint.control_point_3[1] + topShrink
	px9 = controlPoint.control_point_9[1] + topShrink
	px6 = controlPoint.control_point_6[1] + topShrink
	px24 = controlPoint.control_point_24[1] - topShrink
	px21 = controlPoint.control_point_21[1] - topShrink
	px27 = controlPoint.control_point_27[1] - topShrink
	py3 = controlPoint.control_point_3[2] + topShrink
	py9 = controlPoint.control_point_9[2] - topShrink
	py12 = controlPoint.control_point_19[2] + topShrink
	py18 = controlPoint.control_point_18[2] - topShrink
	py21 = controlPoint.control_point_21[2] + topShrink
	py27 = controlPoint.control_point_27[2] - topShrink
	
	--Making the top edges move inward
	topCornerInwards = -0.3
	px3 = controlPoint.control_point_3[1] + topCornerInwards
	px9 = controlPoint.control_point_9[1] + topCornerInwards
	px21 = controlPoint.control_point_21[1] - topCornerInwards
	px27 = controlPoint.control_point_27[1] - topCornerInwards
	py3 = controlPoint.control_point_3[2] + topCornerInwards
	py9 = controlPoint.control_point_9[2] - topCornerInwards
	py21 = controlPoint.control_point_21[2] + topCornerInwards
	py27 = controlPoint.control_point_27[2] - topCornerInwards
	
	
	--bottom layer expansion (making the length and width longer)
	bottomExpand = 0.45
	-- 0.25
	px1 = controlPoint.control_point_1[1] - bottomExpand
	px19 = controlPoint.control_point_19[1] + bottomExpand
	px4 = controlPoint.control_point_4[1] - bottomExpand
	px22 = controlPoint.control_point_22[1] + bottomExpand
	px7 = controlPoint.control_point_7[1] - bottomExpand
	px25 = controlPoint.control_point_25[1] + bottomExpand

	py1 = controlPoint.control_point_1[2] - bottomExpand
	py19 = controlPoint.control_point_19[2] - bottomExpand
	py10 = controlPoint.control_point_10[2] - bottomExpand
	py16 = controlPoint.control_point_16[2] + bottomExpand
	py7 = controlPoint.control_point_7[2] + bottomExpand
	py25 = controlPoint.control_point_25[2] + bottomExpand

		--Making the bottom edges move inward
	bottomCornerOutwards = 0.3
	px1 = controlPoint.control_point_1[1] - bottomCornerOutwards
	px7 = controlPoint.control_point_7[1] - bottomCornerOutwards
	px25 = controlPoint.control_point_25[1] + bottomCornerOutwards
	px19 = controlPoint.control_point_19[1] + bottomCornerOutwards
	py1 = controlPoint.control_point_1[2] - bottomCornerOutwards
	py19 = controlPoint.control_point_19[2] - bottomCornerOutwards	
	py7 = controlPoint.control_point_7[2] + bottomCornerOutwards
	py25 = controlPoint.control_point_25[2] + bottomCornerOutwards
	
	--middle layer expansion (making length and width longer)
	--affecting only corners since the midpoints are pushed inwards (hence 5,11,23,17 are commented out)
	middleExpand = -0.9
	--bottomExpand
	px2 = controlPoint.control_point_2[1] - middleExpand
	px20 = controlPoint.control_point_20[1] + middleExpand
	--x5 = controlPoint.control_point_5[1] - middleExpand
	--x23 = controlPoint.control_point_23[1] + middleExpand
	px8 = controlPoint.control_point_8[1] - middleExpand
	px26 = controlPoint.control_point_26[1] + middleExpand

	py2 = controlPoint.control_point_2[2] - middleExpand
	py20 = controlPoint.control_point_20[2] - middleExpand
	--y11 = controlPoint.control_point_11[2] - middleExpand
	--y17 = controlPoint.control_point_17[2] + middleExpand
	py8 = controlPoint.control_point_8[2] + middleExpand
	py26 = controlPoint.control_point_26[2] + middleExpand



	--middle layer midpoint compression inwards
	middlelayerInwards = 0.9
	px5 = controlPoint.control_point_5[1] + middlelayerInwards
	px23 = controlPoint.control_point_23[1] - middlelayerInwards
	py11 = controlPoint.control_point_11[2] + middlelayerInwards
	py17 = controlPoint.control_point_17[2] - middlelayerInwards

	--shifting bottom layer upwards
	bottomUp = -0.25
	-- -0.15
	pz1 = controlPoint.control_point_1[3] + bottomUp
	pz10 = controlPoint.control_point_10[3] + bottomUp
	pz19 = controlPoint.control_point_19[3] + bottomUp
	pz4 = controlPoint.control_point_4[3] + bottomUp
	pz22 = controlPoint.control_point_22[3] + bottomUp
	pz7 = controlPoint.control_point_7[3] + bottomUp
	pz16 = controlPoint.control_point_16[3] + bottomUp
	pz25 = controlPoint.control_point_25[3] + bottomUp
	pz13 = controlPoint.control_point_13[3] + bottomUp --bottom centre

	--shifting top layer downwards
	--Note: negative values mean the top is going up
	topDown = -0.25
	-- -0.15
	pz3 = controlPoint.control_point_3[3] - topDown
	pz12 = controlPoint.control_point_12[3] - topDown
	pz21 = controlPoint.control_point_21[3] - topDown
	pz6 = controlPoint.control_point_6[3] - topDown
	pz15 = controlPoint.control_point_15[3] - topDown --top centre
	pz24 = controlPoint.control_point_24[3] - topDown
	pz9 = controlPoint.control_point_9[3] - topDown
	pz18 = controlPoint.control_point_18[3] - topDown
	pz27 = controlPoint.control_point_27[3] - topDown
	
		--HELLO THERE
	--bottom centre Z shift (moving upwards)
	bottomcentreZshift = 0.9
	pz13 = controlPoint.control_point_13[3] + bottomcentreZshift
	
	--bottom centre Z shift (moving upwards)
	topcentreZshift = -0.9
	pz15 = controlPoint.control_point_15[3] + topcentreZshift --middle top

	--other control points
	py4 = controlPoint.control_point_4[2]
	py22 = controlPoint.control_point_22[2]
	px10 = controlPoint.control_point_10[1]
	px16 = controlPoint.control_point_16[1]
	px11 = controlPoint.control_point_11[1]
	px17 = controlPoint.control_point_17[1]
	py5 = controlPoint.control_point_5[2]
	py23 = controlPoint.control_point_23[2]
	py13 = controlPoint.control_point_13[2]
	px13 = controlPoint.control_point_13[1]

	pz2 = controlPoint.control_point_2[3]
	pz11 = controlPoint.control_point_11[3]
	pz5 = controlPoint.control_point_5[3]
	pz14 = controlPoint.control_point_14[3]
	pz20 = controlPoint.control_point_20[3]
	pz23 = controlPoint.control_point_23[3]
	pz8 = controlPoint.control_point_8[3]
	pz17 = controlPoint.control_point_17[3]
	pz26 = controlPoint.control_point_26[3]
	py14 = controlPoint.control_point_14[2]
	px14 = controlPoint.control_point_14[1]
	px12 = controlPoint.control_point_12[1]
	px15 = controlPoint.control_point_15[1]
	px18 = controlPoint.control_point_18[1]
	py6 = controlPoint.control_point_6[2]
	py15 = controlPoint.control_point_15[2]
	py24 = controlPoint.control_point_24[2]

	--TAKING CONCAVE BODY CONTROL POINTS INTO CONSIDERATION--
	nx1 =nx1 + (px1*concavepercentage)
nx2 =nx2 + (px2*concavepercentage)
nx3 =nx3 + (px3*concavepercentage)
nx4 =nx4 + (px4*concavepercentage)
nx5 =nx5 + (px5*concavepercentage)
nx6 =nx6 + (px6*concavepercentage)
nx7 =nx7 + (px7*concavepercentage)
nx8 =nx8 + (px8*concavepercentage)
nx9 =nx9 + (px9*concavepercentage)
nx10 =nx10 + (px10*concavepercentage)
nx11 =nx11 + (px11*concavepercentage)
nx12 =nx12 + (px12*concavepercentage)
nx13 =nx13 + (px13*concavepercentage)
nx14 =nx14 + (px14*concavepercentage)
nx15 =nx15 + (px15*concavepercentage)
nx16 =nx16 + (px16*concavepercentage)
nx17 =nx17 + (px17*concavepercentage)
nx18 =nx18 + (px18*concavepercentage)
nx19 =nx19 + (px19*concavepercentage)
nx20 =nx20 + (px20*concavepercentage)
nx21 =nx21 + (px21*concavepercentage)
nx22 =nx22 + (px22*concavepercentage)
nx23 =nx23 + (px23*concavepercentage)
nx24 =nx24 + (px24*concavepercentage)
nx25 =nx25 + (px25*concavepercentage)
nx26 =nx26 + (px26*concavepercentage)
nx27 =nx27 + (px27*concavepercentage)

ny1 =ny1 + (py1*concavepercentage)
ny2 =ny2 + (py2*concavepercentage)
ny3 =ny3 + (py3*concavepercentage)
ny4 =ny4 + (py4*concavepercentage)
ny5 =ny5 + (py5*concavepercentage)
ny6 =ny6 + (py6*concavepercentage)
ny7 =ny7 + (py7*concavepercentage)
ny8 =ny8 + (py8*concavepercentage)
ny9 =ny9 + (py9*concavepercentage)
ny10 =ny10 + (py10*concavepercentage)
ny11 =ny11 + (py11*concavepercentage)
ny12 =ny12 + (py12*concavepercentage)
ny13 =ny13 + (py13*concavepercentage)
ny14 =ny14 + (py14*concavepercentage)
ny15 =ny15 + (py15*concavepercentage)
ny16 =ny16 + (py16*concavepercentage)
ny17 =ny17 + (py17*concavepercentage)
ny18 =ny18 + (py18*concavepercentage)
ny19 =ny19 + (py19*concavepercentage)
ny20 =ny20 + (py20*concavepercentage)
ny21 =ny21 + (py21*concavepercentage)
ny22 =ny22 + (py22*concavepercentage)
ny23 =ny23 + (py23*concavepercentage)
ny24 =ny24 + (py24*concavepercentage)
ny25 =ny25 + (py25*concavepercentage)
ny26 =ny26 + (py26*concavepercentage)
ny27 =ny27 + (py27*concavepercentage)

nz1 =nz1 + (pz1*concavepercentage)
nz2 =nz2 + (pz2*concavepercentage)
nz3 =nz3 + (pz3*concavepercentage)
nz4 =nz4 + (pz4*concavepercentage)
nz5 =nz5 + (pz5*concavepercentage)
nz6 =nz6 + (pz6*concavepercentage)
nz7 =nz7 + (pz7*concavepercentage)
nz8 =nz8 + (pz8*concavepercentage)
nz9 =nz9 + (pz9*concavepercentage)
nz10 =nz10 + (pz10*concavepercentage)
nz11 =nz11 + (pz11*concavepercentage)
nz12 =nz12 + (pz12*concavepercentage)
nz13 =nz13 + (pz13*concavepercentage)
nz14 =nz14 + (pz14*concavepercentage)
nz15 =nz15 + (pz15*concavepercentage)
nz16 =nz16 + (pz16*concavepercentage)
nz17 =nz17 + (pz17*concavepercentage)
nz18 =nz18 + (pz18*concavepercentage)
nz19 =nz19 + (pz19*concavepercentage)
nz20 =nz20 + (pz20*concavepercentage)
nz21 =nz21 + (pz21*concavepercentage)
nz22 =nz22 + (pz22*concavepercentage)
nz23 =nz23 + (pz23*concavepercentage)
nz24 =nz24 + (pz24*concavepercentage)
nz25 =nz25 + (pz25*concavepercentage)
nz26 =nz26 + (pz26*concavepercentage)
nz27 =nz27 + (pz27*concavepercentage)

--SPHERE CONTROL POINTS--
--SPHERE CONTROL POINTS--

	sx1 = controlPoint.control_point_1[1]
	sx2 = controlPoint.control_point_2[1]
	sx3 = controlPoint.control_point_3[1]
	sx4 = controlPoint.control_point_4[1]
	sx5 = controlPoint.control_point_5[1]
	sx6 = controlPoint.control_point_6[1]
	sx7 = controlPoint.control_point_7[1]
	sx8 = controlPoint.control_point_8[1]
	sx9 = controlPoint.control_point_9[1]
	sx10 = controlPoint.control_point_10[1]
	sx11 = controlPoint.control_point_11[1]
	sx12 = controlPoint.control_point_12[1]
	sx13 = controlPoint.control_point_13[1]
	sx14 = controlPoint.control_point_14[1]
	sx15 = controlPoint.control_point_15[1]
	sx16 = controlPoint.control_point_16[1]
	sx17 = controlPoint.control_point_17[1]
	sx18 = controlPoint.control_point_18[1]
	sx19 = controlPoint.control_point_19[1]
	sx20 = controlPoint.control_point_20[1]
	sx21 = controlPoint.control_point_21[1]
	sx22 = controlPoint.control_point_22[1]
	sx23 = controlPoint.control_point_23[1]
	sx24 = controlPoint.control_point_24[1]
	sx25 = controlPoint.control_point_25[1]
	sx26 = controlPoint.control_point_26[1]
	sx27 = controlPoint.control_point_27[1]
	sy1 = controlPoint.control_point_1[2]
	sy2 = controlPoint.control_point_2[2]
	sy3 = controlPoint.control_point_3[2]
	sy4 = controlPoint.control_point_4[2]
	sy5 = controlPoint.control_point_5[2]
	sy6 = controlPoint.control_point_6[2]
	sy7 = controlPoint.control_point_7[2]
	sy8 = controlPoint.control_point_8[2]
	sy9 = controlPoint.control_point_9[2]
	sy10 = controlPoint.control_point_10[2]
	sy11 = controlPoint.control_point_11[2]
	sy12 = controlPoint.control_point_12[2]
	sy13 = controlPoint.control_point_13[2]
	sy14 = controlPoint.control_point_14[2]
	sy15 = controlPoint.control_point_15[2]
	sy16 = controlPoint.control_point_16[2]
	sy17 = controlPoint.control_point_17[2]
	sy18 = controlPoint.control_point_18[2]
	sy19 = controlPoint.control_point_19[2]
	sy20 = controlPoint.control_point_20[2]
	sy21 = controlPoint.control_point_21[2]
	sy22 = controlPoint.control_point_22[2]
	sy23 = controlPoint.control_point_23[2]
	sy24 = controlPoint.control_point_24[2]
	sy25 = controlPoint.control_point_25[2]
	sy26 = controlPoint.control_point_26[2]
	sy27 = controlPoint.control_point_27[2]
	sz1 = controlPoint.control_point_1[3]
	sz2 = controlPoint.control_point_2[3]
	sz3 = controlPoint.control_point_3[3]
	sz4 = controlPoint.control_point_4[3]
	sz5 = controlPoint.control_point_5[3]
	sz6 = controlPoint.control_point_6[3]
	sz7 = controlPoint.control_point_7[3]
	sz8 = controlPoint.control_point_8[3]
	sz9 = controlPoint.control_point_9[3]
	sz10 = controlPoint.control_point_10[3]
	sz11 = controlPoint.control_point_11[3]
	sz12 = controlPoint.control_point_12[3]
	sz13 = controlPoint.control_point_13[3]
	sz14 = controlPoint.control_point_14[3]
	sz15 = controlPoint.control_point_15[3]
	sz16 = controlPoint.control_point_16[3]
	sz17 = controlPoint.control_point_17[3]
	sz18 = controlPoint.control_point_18[3]
	sz19 = controlPoint.control_point_19[3]
	sz20 = controlPoint.control_point_20[3]
	sz21 = controlPoint.control_point_21[3]
	sz22 = controlPoint.control_point_22[3]
	sz23 = controlPoint.control_point_23[3]
	sz24 = controlPoint.control_point_24[3]
	sz25 = controlPoint.control_point_25[3]
	sz26 = controlPoint.control_point_26[3]
	sz27 = controlPoint.control_point_27[3]
	
	--TAKING SPHERE CONTROL POINTS INTO EFFECT--
nx1 =nx1 + (sx1*spherepercentage)
nx2 =nx2 + (sx2*spherepercentage)
nx3 =nx3 + (sx3*spherepercentage)
nx4 =nx4 + (sx4*spherepercentage)
nx5 =nx5 + (sx5*spherepercentage)
nx6 =nx6 + (sx6*spherepercentage)
nx7 =nx7 + (sx7*spherepercentage)
nx8 =nx8 + (sx8*spherepercentage)
nx9 =nx9 + (sx9*spherepercentage)
nx10 =nx10 + (sx10*spherepercentage)
nx11 =nx11 + (sx11*spherepercentage)
nx12 =nx12 + (sx12*spherepercentage)
nx13 =nx13 + (sx13*spherepercentage)
nx14 =nx14 + (sx14*spherepercentage)
nx15 =nx15 + (sx15*spherepercentage)
nx16 =nx16 + (sx16*spherepercentage)
nx17 =nx17 + (sx17*spherepercentage)
nx18 =nx18 + (sx18*spherepercentage)
nx19 =nx19 + (sx19*spherepercentage)
nx20 =nx20 + (sx20*spherepercentage)
nx21 =nx21 + (sx21*spherepercentage)
nx22 =nx22 + (sx22*spherepercentage)
nx23 =nx23 + (sx23*spherepercentage)
nx24 =nx24 + (sx24*spherepercentage)
nx25 =nx25 + (sx25*spherepercentage)
nx26 =nx26 + (sx26*spherepercentage)
nx27 =nx27 + (sx27*spherepercentage)

ny1 =ny1 + (sy1*spherepercentage)
ny2 =ny2 + (sy2*spherepercentage)
ny3 =ny3 + (sy3*spherepercentage)
ny4 =ny4 + (sy4*spherepercentage)
ny5 =ny5 + (sy5*spherepercentage)
ny6 =ny6 + (sy6*spherepercentage)
ny7 =ny7 + (sy7*spherepercentage)
ny8 =ny8 + (sy8*spherepercentage)
ny9 =ny9 + (sy9*spherepercentage)
ny10 =ny10 + (sy10*spherepercentage)
ny11 =ny11 + (sy11*spherepercentage)
ny12 =ny12 + (sy12*spherepercentage)
ny13 =ny13 + (sy13*spherepercentage)
ny14 =ny14 + (sy14*spherepercentage)
ny15 =ny15 + (sy15*spherepercentage)
ny16 =ny16 + (sy16*spherepercentage)
ny17 =ny17 + (sy17*spherepercentage)
ny18 =ny18 + (sy18*spherepercentage)
ny19 =ny19 + (sy19*spherepercentage)
ny20 =ny20 + (sy20*spherepercentage)
ny21 =ny21 + (sy21*spherepercentage)
ny22 =ny22 + (sy22*spherepercentage)
ny23 =ny23 + (sy23*spherepercentage)
ny24 =ny24 + (sy24*spherepercentage)
ny25 =ny25 + (sy25*spherepercentage)
ny26 =ny26 + (sy26*spherepercentage)
ny27 =ny27 + (sy27*spherepercentage)

nz1 =nz1 + (sz1*spherepercentage)
nz2 =nz2 + (sz2*spherepercentage)
nz3 =nz3 + (sz3*spherepercentage)
nz4 =nz4 + (sz4*spherepercentage)
nz5 =nz5 + (sz5*spherepercentage)
nz6 =nz6 + (sz6*spherepercentage)
nz7 =nz7 + (sz7*spherepercentage)
nz8 =nz8 + (sz8*spherepercentage)
nz9 =nz9 + (sz9*spherepercentage)
nz10 =nz10 + (sz10*spherepercentage)
nz11 =nz11 + (sz11*spherepercentage)
nz12 =nz12 + (sz12*spherepercentage)
nz13 =nz13 + (sz13*spherepercentage)
nz14 =nz14 + (sz14*spherepercentage)
nz15 =nz15 + (sz15*spherepercentage)
nz16 =nz16 + (sz16*spherepercentage)
nz17 =nz17 + (sz17*spherepercentage)
nz18 =nz18 + (sz18*spherepercentage)
nz19 =nz19 + (sz19*spherepercentage)
nz20 =nz20 + (sz20*spherepercentage)
nz21 =nz21 + (sz21*spherepercentage)
nz22 =nz22 + (sz22*spherepercentage)
nz23 =nz23 + (sz23*spherepercentage)
nz24 =nz24 + (sz24*spherepercentage)
nz25 =nz25 + (sz25*spherepercentage)
nz26 =nz26 + (sz26*spherepercentage)
nz27 =nz27 + (sz27*spherepercentage)

--SETTING CUBIC CONTROL POINTS--
--SETTING CUBE CONTROL POINTS!!!--

	--making top layer shrink
	topShrink = -0.25
	px3 = controlPoint.control_point_3[1] + topShrink
	px9 = controlPoint.control_point_9[1] + topShrink
	px6 = controlPoint.control_point_6[1] + topShrink
	px24 = controlPoint.control_point_24[1] - topShrink
	px21 = controlPoint.control_point_21[1] - topShrink
	px27 = controlPoint.control_point_27[1] - topShrink
	py3 = controlPoint.control_point_3[2] + topShrink
	py9 = controlPoint.control_point_9[2] - topShrink
	py12 = controlPoint.control_point_19[2] + topShrink
	py18 = controlPoint.control_point_18[2] - topShrink
	py21 = controlPoint.control_point_21[2] + topShrink
	py27 = controlPoint.control_point_27[2] - topShrink
	
	--Making the top edges move inward
	topCornerInwards = 0
	px3 = controlPoint.control_point_3[1] + topCornerInwards
	px9 = controlPoint.control_point_9[1] + topCornerInwards
	px21 = controlPoint.control_point_21[1] - topCornerInwards
	px27 = controlPoint.control_point_27[1] - topCornerInwards
	py3 = controlPoint.control_point_3[2] + topCornerInwards
	py9 = controlPoint.control_point_9[2] - topCornerInwards
	py21 = controlPoint.control_point_21[2] + topCornerInwards
	py27 = controlPoint.control_point_27[2] - topCornerInwards
	
	
	--bottom layer expansion (making the length and width longer)
	bottomExpand = 0.25
	px1 = controlPoint.control_point_1[1] - bottomExpand
	px19 = controlPoint.control_point_19[1] + bottomExpand
	px4 = controlPoint.control_point_4[1] - bottomExpand
	px22 = controlPoint.control_point_22[1] + bottomExpand
	px7 = controlPoint.control_point_7[1] - bottomExpand
	px25 = controlPoint.control_point_25[1] + bottomExpand

	py1 = controlPoint.control_point_1[2] - bottomExpand
	py19 = controlPoint.control_point_19[2] - bottomExpand
	py10 = controlPoint.control_point_10[2] - bottomExpand
	py16 = controlPoint.control_point_16[2] + bottomExpand
	py7 = controlPoint.control_point_7[2] + bottomExpand
	py25 = controlPoint.control_point_25[2] + bottomExpand

		--Making the bottom edges move inward
	bottomCornerOutwards = 0
	px1 = controlPoint.control_point_1[1] - bottomCornerOutwards
	px7 = controlPoint.control_point_7[1] - bottomCornerOutwards
	px25 = controlPoint.control_point_25[1] + bottomCornerOutwards
	px19 = controlPoint.control_point_19[1] + bottomCornerOutwards
	py1 = controlPoint.control_point_1[2] - bottomCornerOutwards
	py19 = controlPoint.control_point_19[2] - bottomCornerOutwards	
	py7 = controlPoint.control_point_7[2] + bottomCornerOutwards
	py25 = controlPoint.control_point_25[2] + bottomCornerOutwards
	
	--middle layer expansion (making length and width longer)
	--affecting only corners since the midpoints are pushed inwards (hence 5,11,23,17 are commented out)
	middleExpand = -0.6
	--bottomExpand
	px2 = controlPoint.control_point_2[1] - middleExpand
	px20 = controlPoint.control_point_20[1] + middleExpand
	--x5 = controlPoint.control_point_5[1] - middleExpand
	--x23 = controlPoint.control_point_23[1] + middleExpand
	px8 = controlPoint.control_point_8[1] - middleExpand
	px26 = controlPoint.control_point_26[1] + middleExpand

	py2 = controlPoint.control_point_2[2] - middleExpand
	py20 = controlPoint.control_point_20[2] - middleExpand
	--y11 = controlPoint.control_point_11[2] - middleExpand
	--y17 = controlPoint.control_point_17[2] + middleExpand
	py8 = controlPoint.control_point_8[2] + middleExpand
	py26 = controlPoint.control_point_26[2] + middleExpand



	--middle layer midpoint compression inwards
	middlelayerInwards = -0.35
	px5 = controlPoint.control_point_5[1] + middlelayerInwards
	px23 = controlPoint.control_point_23[1] - middlelayerInwards
	py11 = controlPoint.control_point_11[2] + middlelayerInwards
	py17 = controlPoint.control_point_17[2] - middlelayerInwards

	--shifting bottom layer upwards
	bottomUp = -0.15
	pz1 = controlPoint.control_point_1[3] + bottomUp
	pz10 = controlPoint.control_point_10[3] + bottomUp
	pz19 = controlPoint.control_point_19[3] + bottomUp
	pz4 = controlPoint.control_point_4[3] + bottomUp
	pz22 = controlPoint.control_point_22[3] + bottomUp
	pz7 = controlPoint.control_point_7[3] + bottomUp
	pz16 = controlPoint.control_point_16[3] + bottomUp
	pz25 = controlPoint.control_point_25[3] + bottomUp
	pz13 = controlPoint.control_point_13[3] + bottomUp --bottom centre

	--shifting top layer downwards
	--Note: negative values mean the top is going up
	topDown = -0.15
	pz3 = controlPoint.control_point_3[3] - topDown
	pz12 = controlPoint.control_point_12[3] - topDown
	pz21 = controlPoint.control_point_21[3] - topDown
	pz6 = controlPoint.control_point_6[3] - topDown
	pz15 = controlPoint.control_point_15[3] - topDown --top centre
	pz24 = controlPoint.control_point_24[3] - topDown
	pz9 = controlPoint.control_point_9[3] - topDown
	pz18 = controlPoint.control_point_18[3] - topDown
	pz27 = controlPoint.control_point_27[3] - topDown
	
		--HELLO THERE
	--bottom centre Z shift (moving upwards)
	bottomcentreZshift = 0.9
	pz13 = controlPoint.control_point_13[3] + bottomcentreZshift
	
	--bottom centre Z shift (moving upwards)
	topcentreZshift = -0.9
	pz15 = controlPoint.control_point_15[3] + topcentreZshift --middle top

	--other control points
	py4 = controlPoint.control_point_4[2]
	py22 = controlPoint.control_point_22[2]
	px10 = controlPoint.control_point_10[1]
	px16 = controlPoint.control_point_16[1]
	px11 = controlPoint.control_point_11[1]
	px17 = controlPoint.control_point_17[1]
	py5 = controlPoint.control_point_5[2]
	py23 = controlPoint.control_point_23[2]
	py13 = controlPoint.control_point_13[2]
	px13 = controlPoint.control_point_13[1]

	pz2 = controlPoint.control_point_2[3]
	pz11 = controlPoint.control_point_11[3]
	pz5 = controlPoint.control_point_5[3]
	pz14 = controlPoint.control_point_14[3]
	pz20 = controlPoint.control_point_20[3]
	pz23 = controlPoint.control_point_23[3]
	pz8 = controlPoint.control_point_8[3]
	pz17 = controlPoint.control_point_17[3]
	pz26 = controlPoint.control_point_26[3]
	py14 = controlPoint.control_point_14[2]
	px14 = controlPoint.control_point_14[1]
	px12 = controlPoint.control_point_12[1]
	px15 = controlPoint.control_point_15[1]
	px18 = controlPoint.control_point_18[1]
	py6 = controlPoint.control_point_6[2]
	py15 = controlPoint.control_point_15[2]
	py24 = controlPoint.control_point_24[2]

--INCORPERATING CUBE CONTROL POINTS--
nx1 =nx1 + (px1*cubepercentage)
nx2 =nx2 + (px2*cubepercentage)
nx3 =nx3 + (px3*cubepercentage)
nx4 =nx4 + (px4*cubepercentage)
nx5 =nx5 + (px5*cubepercentage)
nx6 =nx6 + (px6*cubepercentage)
nx7 =nx7 + (px7*cubepercentage)
nx8 =nx8 + (px8*cubepercentage)
nx9 =nx9 + (px9*cubepercentage)
nx10 =nx10 + (px10*cubepercentage)
nx11 =nx11 + (px11*cubepercentage)
nx12 =nx12 + (px12*cubepercentage)
nx13 =nx13 + (px13*cubepercentage)
nx14 =nx14 + (px14*cubepercentage)
nx15 =nx15 + (px15*cubepercentage)
nx16 =nx16 + (px16*cubepercentage)
nx17 =nx17 + (px17*cubepercentage)
nx18 =nx18 + (px18*cubepercentage)
nx19 =nx19 + (px19*cubepercentage)
nx20 =nx20 + (px20*cubepercentage)
nx21 =nx21 + (px21*cubepercentage)
nx22 =nx22 + (px22*cubepercentage)
nx23 =nx23 + (px23*cubepercentage)
nx24 =nx24 + (px24*cubepercentage)
nx25 =nx25 + (px25*cubepercentage)
nx26 =nx26 + (px26*cubepercentage)
nx27 =nx27 + (px27*cubepercentage)
ny1 =ny1 + (py1*cubepercentage)
ny2 =ny2 + (py2*cubepercentage)
ny3 =ny3 + (py3*cubepercentage)
ny4 =ny4 + (py4*cubepercentage)
ny5 =ny5 + (py5*cubepercentage)
ny6 =ny6 + (py6*cubepercentage)
ny7 =ny7 + (py7*cubepercentage)
ny8 =ny8 + (py8*cubepercentage)
ny9 =ny9 + (py9*cubepercentage)
ny10 =ny10 + (py10*cubepercentage)
ny11 =ny11 + (py11*cubepercentage)
ny12 =ny12 + (py12*cubepercentage)
ny13 =ny13 + (py13*cubepercentage)
ny14 =ny14 + (py14*cubepercentage)
ny15 =ny15 + (py15*cubepercentage)
ny16 =ny16 + (py16*cubepercentage)
ny17 =ny17 + (py17*cubepercentage)
ny18 =ny18 + (py18*cubepercentage)
ny19 =ny19 + (py19*cubepercentage)
ny20 =ny20 + (py20*cubepercentage)
ny21 =ny21 + (py21*cubepercentage)
ny22 =ny22 + (py22*cubepercentage)
ny23 =ny23 + (py23*cubepercentage)
ny24 =ny24 + (py24*cubepercentage)
ny25 =ny25 + (py25*cubepercentage)
ny26 =ny26 + (py26*cubepercentage)
ny27 =ny27 + (py27*cubepercentage)
nz1 =nz1 + (pz1*cubepercentage)
nz2 =nz2 + (pz2*cubepercentage)
nz3 =nz3 + (pz3*cubepercentage)
nz4 =nz4 + (pz4*cubepercentage)
nz5 =nz5 + (pz5*cubepercentage)
nz6 =nz6 + (pz6*cubepercentage)
nz7 =nz7 + (pz7*cubepercentage)
nz8 =nz8 + (pz8*cubepercentage)
nz9 =nz9 + (pz9*cubepercentage)
nz10 =nz10 + (pz10*cubepercentage)
nz11 =nz11 + (pz11*cubepercentage)
nz12 =nz12 + (pz12*cubepercentage)
nz13 =nz13 + (pz13*cubepercentage)
nz14 =nz14 + (pz14*cubepercentage)
nz15 =nz15 + (pz15*cubepercentage)
nz16 =nz16 + (pz16*cubepercentage)
nz17 =nz17 + (pz17*cubepercentage)
nz18 =nz18 + (pz18*cubepercentage)
nz19 =nz19 + (pz19*cubepercentage)
nz20 =nz20 + (pz20*cubepercentage)
nz21 =nz21 + (pz21*cubepercentage)
nz22 =nz22 + (pz22*cubepercentage)
nz23 =nz23 + (pz23*cubepercentage)
nz24 =nz24 + (pz24*cubepercentage)
nz25 =nz25 + (pz25*cubepercentage)
nz26 =nz26 + (pz26*cubepercentage)
nz27 =nz27 + (pz27*cubepercentage)


--move control points appropriately
--original coordinate system was different because a different "ffd" modifier was being used
--once a new modifier was being used to create the renctangle object, all the old coordinate positions
--...had to be translated into the new system, hence the strange ordering presented here
controlPoint.control_point_1 = [nx1,ny1,nz1]
controlPoint.control_point_10 = [nx10,ny10,nz10]
controlPoint.control_point_19 = [nx19,ny19,nz19]
controlPoint.control_point_4 = [nx4,ny4,nz4]
controlPoint.control_point_13 = [nx13,ny13,nz13]
controlPoint.control_point_22 = [nx22,ny22,nz22]
controlPoint.control_point_7 = [nx7,ny7,nz7]
controlPoint.control_point_16 = [nx16,ny16,nz16]
controlPoint.control_point_25 = [nx25,ny25,nz25]
controlPoint.control_point_2 = [nx2,ny2,nz2]
controlPoint.control_point_11 = [nx11,ny11,nz11]
controlPoint.control_point_20 = [nx20,ny20,nz20]
controlPoint.control_point_5 = [nx5,ny5,nz5]
controlPoint.control_point_23 = [nx23,ny23,nz23]
controlPoint.control_point_8 = [nx8,ny8,nz8]
controlPoint.control_point_17 = [nx17,ny17,nz17]
controlPoint.control_point_26 = [nx26,ny26,nz26]
controlPoint.control_point_3 = [nx3,ny3,nz3]
controlPoint.control_point_12 = [nx12,ny12,nz12]
controlPoint.control_point_21 = [nx21,ny21,nz21]
controlPoint.control_point_6 = [nx6,ny6,nz6]
controlPoint.control_point_15 = [nx15,ny15,nz15]
controlPoint.control_point_24 = [nx24,ny24,nz24]
controlPoint.control_point_9 = [nx9,ny9,nz9]
controlPoint.control_point_18 = [nx18,ny18,nz18]
controlPoint.control_point_27 = [nx27,ny27,nz27]

--aligning object--
objbody.pivot = objbody.center
objbody.pos = [0,0,0]

local polygonner = TurboSmooth()
polygonner.iterations = 2
local polygonner2 = TesselLate()
--addModifier objbody(polygonner)
--addModifier objbody(polygonner2)



customBodyOutput = #(controlPoint,objbody,polygonner2)
return customBodyOutput
