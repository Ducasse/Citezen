as yet unclassified
listOfDuplicatesKey: aBibSet
	"Returns a set with duplicated keys entries based on keys"
	| listDoublon |
	listDoublon := CZSet new.
	prioritaryBibSet := aBibSet.
	withoutDuplications := CZSet new.
	prioritaryBibSet do: [:each | 
                (withoutDuplications includesKey:  each key)
                    ifFalse: [ withoutDuplications addEntry: each ]
                    ifTrue: [ listDoublon entryAt: #Dupplication put: (each)]].
	^ listDoublon
	