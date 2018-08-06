-- Attention-Circuits-Control Laboratory (www.attention-circuits-control.org) --

--For more information on how Quaddles are generated and may be used:
--Watson, MR., Voloh, B., Naghizadeh, M., Womelsdorf, T., (2018) “Quaddles: A multidimensional 3D object set with parametrically-controlled
-- and customizable features” Behav Res Methods.

--Website guide: http://accl.psy.vanderbilt.edu/resources/analysis-tools/3d-image-material/
--Brief instructions on how to use scripts: http://accl.psy.vanderbilt.edu/quaddlegenerator-brief-instructions/

--Scripts, objects and in depth manual available on github: https://github.com/att-circ-contrl/Quaddles-Gen


--MAKES THE OBLONG BODY

	local controlPoint = ffd_3x3x3()
	local objbody = Box()
	objbody.length = 20
	objbody.width = 20
	objbody.height = 40
		
	objbody.lengthsegs = 10
	objbody.widthsegs = 10
	objbody.heightsegs = 10
	
	--control points created--
	--controlPoint = ffd_3x3x3()

	--rectangle centred at centre of grid

	--adding spherify modifier to object
	addmodifier objbody (spherify())
	--adding control points to object
	addmodifier objbody controlPoint
		
	animateAll controlPoint
	
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
	
	--move control points appropriately
	--original coordinate system was different because a different "ffd" modifier was being used
	--once a new modifier was being used to create the renctangle object, all the old coordinate positions
	--...had to be translated into the new system, hence the strange ordering presented here
	controlPoint.control_point_1 = [ox1,oy1,oz1]
	controlPoint.control_point_10 = [ox10,oy10,oz10]
	controlPoint.control_point_19 = [ox19,oy19,oz19]
	controlPoint.control_point_4 = [ox4,oy4,oz4]
	controlPoint.control_point_13 = [ox13,oy13,oz13]
	controlPoint.control_point_22 = [ox22,oy22,oz22]
	controlPoint.control_point_7 = [ox7,oy7,oz7]
	controlPoint.control_point_16 = [ox16,oy16,oz16]
	controlPoint.control_point_25 = [ox25,oy25,oz25]
	controlPoint.control_point_2 = [ox2,oy2,oz2]
	controlPoint.control_point_11 = [ox11,oy11,oz11]
	controlPoint.control_point_20 = [ox20,oy20,oz20]
	controlPoint.control_point_5 = [ox5,oy5,oz5]
	controlPoint.control_point_23 = [ox23,oy23,oz23]
	controlPoint.control_point_8 = [ox8,oy8,oz8]
	controlPoint.control_point_17 = [ox17,oy17,oz17]
	controlPoint.control_point_26 = [ox26,oy26,ox26]
	controlPoint.control_point_3 = [ox3,oy3,oz3]
	controlPoint.control_point_12 = [ox12,oy12,oz12]
	controlPoint.control_point_21 = [ox21,oy21,oz21]
	controlPoint.control_point_6 = [ox6,oy6,oz6]
	controlPoint.control_point_15 = [ox15,oy15,oz15]
	controlPoint.control_point_24 = [ox24,oy24,oz24]
	controlPoint.control_point_9 = [ox9,oy9,oz9]
	controlPoint.control_point_18 = [ox18,oy18,oz18]
	controlPoint.control_point_27 = [ox27,oy27,oz27]
	
	objbody.pivot = objbody.center
	objbody.pos = [0,0,0]
	
-- 	local polygonner = TurboSmooth()
-- 	polygonner.iterations = 2
-- 	local polygonner2 = TesselLate()
-- 	addModifier objbody(polygonner)
-- 	--addModifier objbody(polygonner2)


oblongOutput = #(controlPoint,objbody,polygonner2)
return oblongOutput
