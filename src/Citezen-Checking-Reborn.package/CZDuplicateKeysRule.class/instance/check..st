validation
check: aBibSet

	| entryKeys |
	entryKeys := aBibSet entryKeys.
	entryKeys keysDo: [ :key |
		(entryKeys at: key) > 1
			ifTrue: [ self addLog: key ]].
	^ logs