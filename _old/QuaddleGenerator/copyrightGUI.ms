
copyrightSchpiel = "QuaddleGenerator\n\n" + \
"Copyright \xa9 2017 Milad Naghizadeh, Marcus Watson, Thilo Womelsdorf, Attention Circuits Control Lab\n\n" + \
"Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the \"Software\")," + \
"to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies" + \
" of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\n" + \
"The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\n" + \
"THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE" + \
" WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT" + \
" HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT" + \
" OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\n\n"


rollout copyRight "Copyright License" width:800 height:300
(
	label 'mitInfo' copyrightSchpiel pos:[39,13] width:731 height:209 style_sunkenedge:false align:#left
	button 'continueButton' "Continue"
	on continueButton pressed do
	(
		print "hello"
	)
)
rof=newrolloutfloater "Copyright notice" 800 300
addRollout copyRight rof rolledUp:off