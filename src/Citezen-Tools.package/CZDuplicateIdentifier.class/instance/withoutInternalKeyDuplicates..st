key based
withoutInternalKeyDuplicates: aBibSet
	"Returns a version without duplicated entries based on keys"
	
	prioritaryBibSet := aBibSet.
	withoutDuplications := CZSet new.
	duplicates := CZSet new.
	prioritaryBibSet do: [:each | 
				(withoutDuplications includesKey:  each key)
					ifFalse: [withoutDuplications addEntry: each]
					ifTrue: [duplicates addEntry: each ]].
	^ withoutDuplications
	