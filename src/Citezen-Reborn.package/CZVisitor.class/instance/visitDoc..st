visiting doc
visitDoc: aDocument
	self visitDocTitle: aDocument title. 
	self visit: aDocument header.
	aDocument elements do: [ :each | self visit: each ].
	self visit: aDocument footer.