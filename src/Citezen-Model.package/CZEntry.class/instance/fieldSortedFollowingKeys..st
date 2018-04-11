enumerating
fieldSortedFollowingKeys: aCol
	"Returns a collection of fields as specified by the keys given in aCol, if a key is not present skip it."
	| col |
	col := OrderedCollection new: aCol size.
	aCol do: [:each | 
				| res |
				res := self at: each ifAbsent: nil.
				res ifNotNil: [col add: res] ].
	^ col