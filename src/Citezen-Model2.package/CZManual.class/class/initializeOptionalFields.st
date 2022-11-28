initialization
initializeOptionalFields

	self initializeFieldKeysToRemove. 
	self initializeExtendedFieldKeys.
	
	author := CZAuthor new.
	organization := CZOrganization new.
	address:= CZAddress new.
	edition:= CZEdition new.
	month:= CZMonth new.
	year:= CZYear new.
	note:= CZNote new.
	key := CZKey new.
	
	optionalFields := OrderedCollection new.
	optionalFields add: author; add: organization; add: address; add: edition ;add: month; add:year ; add: note; add: key , self extendedFieldKeys.
	
	^optionalFields