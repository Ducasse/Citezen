initialization
initializeOptionalFields

	self class initializeFieldKeysToRemove. 
	self class initializeExtendedFieldKeys.
	
	self editor: CZEditor new.
	self series: CZSeries new.
	self pages: CZPages new.
	self organization: CZOrganization new.
	self publisher: CZPublisher new.
	self address: CZAddress new.
	self month: CZMonth new.
	self note: CZNote new.
	self key: CZKey new.
	
	optionalFields := OrderedCollection new.
	optionalFields add: self editor; add: self series; add: self pages; add: self organization; add: self publisher ;add: self address; add:self month ; add: self note; add: self key , CZEntry  extendedFieldKeys.
	
	^optionalFields