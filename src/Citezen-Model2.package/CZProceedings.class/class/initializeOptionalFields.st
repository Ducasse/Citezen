initialization
initializeOptionalFields

	self initializeFieldKeysToRemove. 
	self initializeExtendedFieldKeys.
	
	editor:= CZEditor new.
	publisher := CZPublisher new.
	organization := CZOrganization new.
	address:= CZAddress new.
	month:= CZMonth new.
	note:= CZNote new.
	key:= CZKey new.
	
	optionalFields := OrderedCollection new.
	optionalFields add: editor; add: publisher; add: organization; add: address; add: month; add: note; add: key , self extendedFieldKeys.
	
	^optionalFields