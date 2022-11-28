initialization
initializeOptionalFields
	
	self volume: CZVolume new.
	self number: CZNumber new.
	self pages: CZPages new.
	self month: CZMonth new.
	self note: CZNote new.
	self key: CZKey new.
	
	optionalFields := OrderedCollection new.
	optionalFields add: self volume; add: self number; add: self pages; add: self month; add: self note; add: self key , self extendedFieldKeys.
	
	^optionalFields