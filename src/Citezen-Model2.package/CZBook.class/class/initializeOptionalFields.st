initialization
initializeOptionalFields

	self initializeFieldKeysToRemove. 
	self initializeExtendedFieldKeys.
	
	volume:= CZVolume new.
	series:= CZSeries new.
	address:= CZAddress new.
	edition:= CZEdition new.
	month:= CZMonth new.
	note:= CZNote new.
	key:= CZKey new.
	
	optionalFields := OrderedCollection new.
	optionalFields add: volume; add: series; add: address; add: edition ;add: month; add:note; add: key , self extendedFieldKeys.
	
	^optionalFields