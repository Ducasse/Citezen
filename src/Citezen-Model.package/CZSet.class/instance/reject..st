arranging - combining
reject: aBlock
	^ self class new
		setEntries: (self entries reject: aBlock)