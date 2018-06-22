
--CREATES VIDEO OF EACH OBJECT


qqArray.pivot = [0,0,0]

--anglevalue = 30
	--making circle for camera to move on
--if radius and z-axis position are the same then the angle is positioned downward at 45 degrees
circ = circle()
--distance from camera
--camdistance = 210

circ.radius = abs (cos(anglevalue) * camdistance)
circ.pos = [0,0,(sin(anglevalue) * camdistance)]


cam = freeCamera()
cam.type = #target
--cam.pos = [-200,0,200]
cam.target.pos = [0,0,0]


--path constraint
pc = path_constraint()
pc.path = circ --defining the path constraint
cam.position.controller = pc --camera  movement constrained to path constraint

--since camera is locked to path constraint of the circle, rotating circle will move camera
rotate circ (eulerangles 0 0 0)
viewport.setType #view_camera
anglestring = anglevalue as string
fileNameForPic =  fileNameForPic +"videos\\"
makeDir fileNameForPic

light1 = Targetspot pos:[0,70,70] target:(targetObject pos:[0,0,0])
light2 = Targetspot pos:[0,-70,70] target:(targetObject pos:[0,0,0])
light3 = Targetspot pos:[0,-70,-70] target:(targetObject pos:[0,0,0])
light4 = Targetspot pos:[0,70,-70] target:(targetObject pos:[0,0,0])

light5 = Targetspot pos:[70,0,70] target:(targetObject pos:[0,0,0])
light6 = Targetspot pos:[-70,0,70] target:(targetObject pos:[0,0,0])
light7 = Targetspot pos:[-70,0,-70] target:(targetObject pos:[0,0,0])
light8 = Targetspot pos:[70,0,-70] target:(targetObject pos:[0,0,0])


with animate on 
(
	at time 100 rotate qqArray (eulerangles 0 0 360)
)



viewport.SetRenderLevel #smoothhighlights
picturelocation = fileNameForPic + "360_rotation" + picname + ".avi"
render outputFile: (picturelocation) vfb: off outputSize: [640,360] fromframe: 0 toframe: 100

delete light1
delete light2
delete light3
delete light4
delete light5
delete light6
delete light7
delete light8
	

delete circ
delete cam