initialization
initializeOptionalFields

	self initializeFieldKeysToRemove. 
	self initializeExtendedFieldKeys.
	
	month := CZMonth new.
	year := CZYear new.
	key:= CZKey new.
	
	optionalFields := OrderedCollection new.
	optionalFields add: month; add: year; add: key , self extendedFieldKeys.
	
	^optionalFields