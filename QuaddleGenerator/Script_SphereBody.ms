
	--MakeSphereBody	
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

	--aligning object--
	objbody.pivot = objbody.center
	objbody.pos = [0,0,0]
	
	local polygonner = TurboSmooth()
	polygonner.iterations = 2
	local polygonner2 = TesselLate()
	--addModifier objbody(polygonner)
	addModifier objbody(polygonner2)
	
	cubicOutput = #(controlPoint,objbody,polygonner2)
	return cubicOutput
	
