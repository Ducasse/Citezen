bibset
moveToBibSet: aCZSet
	self scope
		ifNotNil: [ :it | "pull references if necessary" it removeEntry: self ].
	aCZSet addEntry: self