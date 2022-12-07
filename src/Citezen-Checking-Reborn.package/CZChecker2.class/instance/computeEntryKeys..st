as yet unclassified
computeEntryKeys: aBibSet
	| entryKeys |
	entryKeys := Dictionary new.
	aBibSet entries do: [ :entry | 
		(entryKeys includesKey: entry key)
			ifTrue: [ entryKeys add: (entry key) -> ((entryKeys at: entry key) + 1) ]
			ifFalse: [ entryKeys add: (entry key) -> 1 ]
			].
	^ entryKeys