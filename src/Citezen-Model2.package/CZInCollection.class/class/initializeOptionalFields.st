initialization
initializeOptionalFields

	self initializeFieldKeysToRemove. 
	self initializeExtendedFieldKeys.
	
	editor:= CZEditor new.
	pages:= CZPages new.
	organization := CZOrganization new.
	publisher := CZPublisher new.
	address:= CZAddress new.
	month:= CZMonth new.
	note := CZNote new.
	key := CZKey new.
	
	optionalFields := OrderedCollection new.
	optionalFields add: editor; add: pages; add: organization; add: publisher ;add: address; add:month ; add: note; add: key , self extendedFieldKeys.
	
	^optionalFields