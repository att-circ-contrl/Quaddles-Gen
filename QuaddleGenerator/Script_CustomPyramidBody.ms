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

--controlPoint = ffd_3x3x3()


addmodifier objbody (spherify())

addmodifier objbody controlPoint		-- Gives the rectangle controllers for all it's points
animateAll controlPoint						-- Allows us access to the control points for modification
	

oblongpercentage = 1 - pyramidpercentage
pyramidpercentage = pyramidpercentage

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



pyramidOutput = #(controlPoint,objbody,polygonner2)
return pyramidOutput
