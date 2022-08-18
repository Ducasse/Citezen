visit
visitSection: aCZSection

	outputStream nextPutAll: ('!' repeat: aCZSection level); space.
	self visitSectionTitle: aCZSection title. 
	self visitSectionText: aCZSection text.
	self visitSectionItems: aCZSection items