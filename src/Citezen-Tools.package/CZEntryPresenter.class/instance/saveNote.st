action
saveNote

	czEntry at: #author put: txtAuthors text.
	czEntry at: #year put: txtYear text.
	czEntry at: #title put: txtTitle text.

	Smalltalk snapshot: true andQuit: false. 