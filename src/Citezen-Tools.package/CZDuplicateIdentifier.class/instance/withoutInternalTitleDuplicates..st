titlebased
withoutInternalTitleDuplicates: aBibSet
	"Returns a version without duplicated entries based on title"

	prioritaryBibSet := aBibSet.
	withoutDuplications := CZSet new.
	duplicates := CZSet new.
	prioritaryBibSet do: [:each | 
				(withoutDuplications anySatisfy: [:ent | (ent at: #title) value = (each at: #title) value])
					ifFalse: [withoutDuplications addEntry: each]
					ifTrue: [duplicates addEntry: each ]].
	^ withoutDuplications
	