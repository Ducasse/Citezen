initialization
initializeOptionalFields

	self initializeFieldKeysToRemove. 
	self initializeExtendedFieldKeys.
	
	author:= CZAuthor new.
	howpublished := CZHowPublished new.
	address:= CZAddress new.
	month:= CZMonth new.
	year:= CZYear new.
	note:= CZNote new.
	key := CZKey new.
	
	optionalFields := OrderedCollection new.
	optionalFields add: author; add: howpublished; add: address; add: month ;add: year; add:note; add: key , self extendedFieldKeys.
	
	^optionalFields