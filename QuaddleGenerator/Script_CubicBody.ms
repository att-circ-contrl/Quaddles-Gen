
	--Making Cubic body shape

	local controlPoint = ffd_3x3x3()
	local objbody = Box()
	objbody.length = 20
	objbody.width = 20
	objbody.height = 40
		
	objbody.lengthsegs = 10
	objbody.widthsegs = 10
	objbody.heightsegs = 10

	--centre of Octahedron is centred at centre of grid
	objbody.pos = [0, 0, -28]
	--body.pos = [0,0, -(body.height/2)];
	
	--change--
	controlPoint = ffd_3x3x3()


	addmodifier objbody (spherify())

	addmodifier objbody controlPoint		-- Gives the rectangle controllers for all it's points
	animateAll controlPoint						-- Allows us access to the control points for modification
		

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



	--ACTUAL CONTROL POINTS
	--bottom layer
	controlPoint.control_point_1 = [px1,py1,pz1]
	controlPoint.control_point_10= [px10,py10,pz10]
	controlPoint.control_point_19 = [px19,py19,pz19]
	controlPoint.control_point_4 = [px4,py4,pz4]
	controlPoint.control_point_13= [px13,py13,pz13] --centre
	controlPoint.control_point_22 = [px22,py22,pz22]
	controlPoint.control_point_7 = [px7,py7,pz7]
	controlPoint.control_point_16= [px16,py16,pz16]
	controlPoint.control_point_25 = [px25,py25,pz25]

	--middle layer	
	controlPoint.control_point_2 = [px2,py2,pz2]
	controlPoint.control_point_11= [px11,py11,pz11] --centre
	controlPoint.control_point_20 =[px20,py20,pz20]
	controlPoint.control_point_5 = [px5,py5,pz5] --centre
	controlPoint.control_point_14= [px14,py14,pz14] --actual centre
	controlPoint.control_point_23 = [px23,py23,pz23]
	controlPoint.control_point_8 = [px8,py8,pz8]
	controlPoint.control_point_17= [px17,py17,pz17] --centre
	controlPoint.control_point_26 = [px26,py26,pz26]

	--top layer
	controlPoint.control_point_3 = [px3,py3,pz3]
	controlPoint.control_point_12= [px12,py12,pz12]
	controlPoint.control_point_21 = [px21,py21,pz21]
	controlPoint.control_point_6 = [px6,py6,pz6]
	
	controlPoint.control_point_15= [px15,py15,pz15] --middle top
	controlPoint.control_point_24 = [px24,py24,pz24]
	controlPoint.control_point_9 = [px9,py9,pz9]
	controlPoint.control_point_18= [px18,py18,pz18]
	controlPoint.control_point_27 = [px27,py27,pz27]
	
	
	local polygonner = TurboSmooth()
	polygonner.iterations = 2
	local polygonner2 = TesselLate()
	--addModifier objbody(polygonner)
	--addModifier objbody(polygonner2)
	
	objbody.pivot = objbody.center
	objbody.pos = [0,0,0]
	
	
	--the way that the cube is currently made, is it's angled so we need to rotate it. This allows the arms to be aligned on the faces of the cube
	rotate objbody (eulerangles 0 0 45 )	
	
	cubicOutput = #(controlPoint,objbody,polygonner2)
	return cubicOutput