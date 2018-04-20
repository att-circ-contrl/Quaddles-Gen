
--CREATES PICTURE OF EACH OBJECT SPECIFIED BY ANGLE AND DISTANCE

qqArray.pivot = [0,0,0]
		
--making circle for camera to move on
circ = circle()

circ.radius = abs (cos(anglevalue) * camdistance)
circ.pos = [0,0,(sin(anglevalue) * camdistance)]


cam = freeCamera()
cam.type = #target
cam.target.pos = [0,0,0]

--path constraint
pc = path_constraint()
pc.path = circ --defining the path constraint
cam.position.controller = pc --camera  movement constrained to path constraint

--since camera is locked to path constraint of the circle, rotating circle will move camera
viewport.setType #view_camera
anglestring = anglevalue as string
fileNameForPic =  fileNameForPic + "pictures\\" + anglestring
makeDir fileNameForPic


--smoothhighlights is a render setting
viewport.SetRenderLevel #smoothhighlights
picturelocation = fileNameForPic + "\\" + anglestring + "_0deg_rotation_" + picname + ".jpg"
picturelocation = fileNameForPic + "\\" + anglestring + "_0deg_rotation_" + picname + ".png"

render outputFile: (picturelocation) vfb: off outputSize: [1280,720]

--rotate camera and take photos again
rotate qqArray (eulerangles 0 0 45 )
picturelocation = fileNameForPic + "\\" + anglestring + "_45deg_rotation_" + picname + ".jpg"
picturelocation = fileNameForPic + "\\" + anglestring + "_45deg_rotation_" + picname + ".png"

render outputFile: (picturelocation) vfb: off outputSize: [1280,720]

rotate qqArray  (eulerangles 0 0 -45)

delete circ
delete cam
	
	