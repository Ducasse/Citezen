generated-reduction actions
reduceActionForValue1: nodes
	^ (nodes at: 2) isEmpty
		ifTrue: [ ((nodes at: 1) isKindOf: String)
				ifTrue: [ (nodes at: 1) trimBoth ]
				ifFalse: [ nodes at: 1 ] ]
		ifFalse: [ (CZCompositeValue with: (nodes at: 1))
				addAll: ((nodes at: 2) collect: [ :subcoll | subcoll at: 2 ]);
				yourself ]