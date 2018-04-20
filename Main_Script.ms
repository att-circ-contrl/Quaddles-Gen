--QuaddleGenerator

--Copyright (C) 2017 Milad Naghizadeh, Marcus Watson, Ben Voloh, Thilo Womelsdorf, Attention Circuits Control Lab

--Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
--to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
--of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

--The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

--THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
--WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
--HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT
--OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

copyrightSchpiel = "QuaddleGenerator\n\n" + \
"Copyright \xa9 2017 Milad Naghizadeh, Marcus Watson, Ben Voloh, Thilo Womelsdorf, Attention Circuits Control Lab\n\n" + \
"Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the \"Software\")," + \
"to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies" + \
" of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\n" + \
"The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\n" + \
"THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE" + \
" WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT" + \
" HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT" + \
" OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\n\n"
print copyrightSchpiel

--Functions are in other script
fileIn "FunctionsList.ms"

try (closeRolloutFloater rof) catch()

rof=newrolloutfloater "Copyright notice" 800 300
rollout copyRight "Copyright License" width:800 height:300
	

(
	label 'mitInfo' copyrightSchpiel pos:[39,13] width:731 height:209 style_sunkenedge:false align:#left
	button 'continueButton' "Continue"
	on continueButton pressed do
	(
		(
			--FOLDER PATHS--FOLDER PATHS--FOLDER PATHS !!!
			--all scripts need to be in sysInfo.currentdir
			sysInfo.currentdir = "***LOCATION OF SCRIPTS GOES HERE***"
			savePathBase =  "***SAVE PATH DIRECTORY GOES HERE***"
			makeDir savePathBase
			--textures for main body
			textureMainPath =  "***TEXTURE FOLDER DIRECTORY GOES HERE***"
			objTable = openFile "***OBJECT TABLE DIRECTORY GOES HERE***"

			dims = #("Body", "Colour", "Pattern",  "Arms")
			vals = #(#("Oblong","Pyramidal"),#("More_Red","More_Orange"),#("Diamond","Checkered"),#("Bent_Up","Bent_Down"))
				
				
			--if objects are set to be transparent, this number will determine how transparent the objects will be
			transparencyAmount = 25	
			objNames = #()
			--if you wish to make a custom object that is intermediate between shapes, you have to set one of the body dimensions as custom...
			--...and put in custom values here
			--Values must add up to 1!
			customObjectPercentages = #()
			pyramidpercentage = 0; 
			append customObjectPercentages pyramidpercentage;
				
			oblongpercentage = 0.2;
			append customObjectPercentages oblongpercentage;
				
			concavepercentage = 0.4;
			append customObjectPercentages oblongpercentage;
				
			octahedronpercentage = 0; 
			append customObjectPercentages octahedronpercentage;
				
			cubepercentage = 0.2; 
			append customObjectPercentages cubepercentage;
			
			spherepercentage= 0.2;
			append customObjectPercentages spherepercentage;


			if (objTable == undefined) then
				readTheTable = false
			else
				readTheTable = true
								
			global objVals = #()
			global allObjects = #()
			if readTheTable == false do (
				global i = 0
				DefineAllObjects(1)
				for objectCount = 1 to allObjects.count do (
					objVals = allObjects[objectCount]
					--savePathFinal = savePathBase + dims[1] + "(" + body + ")\\" + dims[2] + "(" + colour + ")+" + "(" + pattern + ")\\"
					savePathFinal = savePathBase
					inputdims = dims
-- 					if (findItem objvals "") != 0 do (
-- 						deleteItem inputdims (findItem objvals "")
-- 						deleteItem objvals (findItem objvals "")
-- 					)
					MakeObject()
					
				)
			)
			if (readTheTable == true) do (
				savePathFinal = savePathBase
				seek objTable 0
				while not(eof objTable) do (
					objDetails = readLine objTable
					for dimCount = 1 to ((objDetails.count + 1)/2) do (
						objvals[dimCount] = vals[dimCount][objDetails[((2*dimCount)-1)] as integer + 1]
					)
					--print objDetails				
					MakeObject()
					
					)
			)
		)
		closeRolloutFloater rof
	)
)
addRollout copyRight rof rolledUp:off
	