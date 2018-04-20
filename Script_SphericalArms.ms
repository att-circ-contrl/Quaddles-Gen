
	--makes blunted and sharp arms
	local arm= Sphere()
	arm.radius = 6
	arm.segs = 32
	arm.name = objName + "_Arm001"
	
	branchPath= textureMainPath + "70_70_70" + ".png"
	arm.material = standardMaterial diffuseMap:(Bitmaptexture fileName: (branchPath)) showInViewport:true;


	protrusionAmount = 18
	--Since some objects will be fatter or skinnier then others we want the arms to protrude by the same amount on each object
	--objbody.max will give top most coordinates of the object and objbody.min gives us the bottom most coordinates of the object
	--subtracting these will give us the dimensions of length and width
	--for the objects we've created, the length and width are the same however just in case, here I take the average of the two and divide by...
	--...two in order to get half the amount which is what we need to protrude
	protrusionAmount = (((objbody.max[1] - objbody.min[1])+(objbody.max[2] - objbody.min[2]))/2)/2
	
	if body == "Concave" then (protrusionAmount = 9)
	if body == "Cubic" then (protrusionAmount = 14.6)

		
	--local listOfArms = #(arm,instance arm,instance arm,instance arm)
	local listOfArms = #(arm)
	if numberOfArms >1 then (
		append listOfArms (instance arm)
		rotate listOfArms[2] (eulerangles 0 90 180)
		listOfArms[2].pos = [-protrusionAmount,0,0]
		)
	if numberOfArms >2 then (
		append listOfArms (instance arm)
		rotate listOfArms[3] (eulerangles -90 90 0)
		listOfArms[3].pos = [0,protrusionAmount,0]
		)
	if numberOfArms >3 then (
		append listOfArms (instance arm)
		rotate listOfArms[4] (eulerangles 90 90 0)
		listOfArms[4].pos = [0,-protrusionAmount,0]
		)
	rotate listOfArms[1] (eulerangles 0 90 0)
	listOfArms[1].pos = [protrusionAmount,0,0]		
		
		
	
	return listOfArms