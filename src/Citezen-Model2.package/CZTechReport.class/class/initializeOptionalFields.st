initialization
initializeOptionalFields

	self initializeFieldKeysToRemove. 
	self initializeExtendedFieldKeys.
	
	type:= CZType new.
	number:= CZNumber new.
	address:= CZAddress new.
	month:= CZMonth new.
	note:= CZNote new.
	key:= CZKey new.
	
	optionalFields := OrderedCollection new.
	optionalFields add: type; add: number; add: address; add: month; add: note; add: key , self extendedFieldKeys.
	
	^optionalFields