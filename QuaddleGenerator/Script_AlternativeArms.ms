
	--makes blunted and sharp arms
	local arm= Cone()
	
	--pointed = true

	arm.radius1 = startradius
	arm.radius2 = endradius
	arm.height = 25
	arm.heightsegs = 20
	arm.sides = 40 -- 3 sides makes a triangular cross section, 4 sides makes cubic cross section and many sides makes a circular cross section
	addmodifier arm (bend angle: bendAngle)
	--naming arms
	arm.name = objName + "_Arm001"
	
	if endradius > 0	 then
		arm.height = 25
	
	if endradius == 0 then 
		arm.height = 30

-- 	if (bendAngle > 0) then
-- 		arm.name = "Upwards_Arm "

-- 	if (bendAngle < 0) then
-- 		arm.name = "Downwards_Arm "
	
	--Branches made darker from 70 70 70 to 15 15 15
	--old way of adding color was to add it directly instead of refering to png; but it wasn't exporting for some reason
	--arm.material = standardMaterial diffuse:(color 15 15 15)
	
	branchPath= textureMainPath + "70_70_70" + ".png"
	arm.material = standardMaterial diffuseMap:(Bitmaptexture fileName: (branchPath)) showInViewport:true;


	
	
	
	local listOfArms = #(arm,instance arm,instance arm,instance arm)

	rotate listOfArms[1] (eulerangles 0 90 0)
	rotate listOfArms[2] (eulerangles 0 90 180)
	rotate listOfArms[3] (eulerangles -90 90 0)
	rotate listOfArms[4] (eulerangles 90 90 0)
	
	protrusionAmount = 5
	listOfArms[1].pos = [protrusionAmount,0,0]
	listOfArms[2].pos = [-protrusionAmount,0,0]
	listOfArms[3].pos = [0,protrusionAmount,0]
	listOfArms[4].pos = [0,-protrusionAmount,0]

	
	return listOfArms