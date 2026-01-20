enumerating
fieldsFilteredAndSortedAccordingTo: aCollectionOfSymbols
	"Returns a collection of fields as specified by the keys given in aCol, if a key is not present skip it. In addition if a key is present in the receiver but not in the argument we should ignore it."
	
	| col |
	col := OrderedCollection new: aCollectionOfSymbols size.
	aCollectionOfSymbols do: [:each | 
				| res |
				res := self at: each ifAbsent: nil.
				res ifNotNil: [col add: res] ].
	^ col