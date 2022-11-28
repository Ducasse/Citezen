initialization
initializeOptionalFields

	self initializeFieldKeysToRemove. 
	self initializeExtendedFieldKeys.
	
	address := CZAddress new.
	month := CZMonth new.
	note := CZNote new.
	key := CZKey new.
	
	optionalFields := OrderedCollection new.
	optionalFields add: address; add: month; add: note; add: key , self extendedFieldKeys.
	
	^optionalFields