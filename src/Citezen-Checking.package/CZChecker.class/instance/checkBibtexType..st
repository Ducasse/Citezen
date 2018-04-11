as yet unclassified
checkBibtexType: aCZEntry
	(bibtexTypes includes: aCZEntry type asLowercase)
		ifFalse: [ 
			errorStream nextPutAll: 'Error: Bad entry type'; cr.
			^ false].
	^ true