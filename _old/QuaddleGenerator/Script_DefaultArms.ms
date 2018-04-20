
--CREATES ARMS OF OBJECTS

	local arm= cylinder()
	arm.radius = 4.0
	arm.height = 25
	arm.heightsegs = 10
	addmodifier arm (bend angle: bendAngle)
	--naming arms
	arm.name = objName + "_Arm001"
	

	
	branchPath= textureMainPath + "70_70_70" + ".png"
	arm.material = standardMaterial diffuseMap:(Bitmaptexture fileName: (branchPath)) showInViewport:true;


	
	
	
	local listOfArms = #(arm,instance arm,instance arm,instance arm)

	rotate listOfArms[1] (eulerangles 0 90 0)
	rotate listOfArms[2] (eulerangles 0 90 180)
	rotate listOfArms[3] (eulerangles -90 90 0)
	rotate listOfArms[4] (eulerangles 90 90 0)

	listOfArms[1].pos = [5,0,0]
	listOfArms[2].pos = [-5,0,0]
	listOfArms[3].pos = [0,5,0]
	listOfArms[4].pos = [0,-5,0]
		
	return listOfArms

		