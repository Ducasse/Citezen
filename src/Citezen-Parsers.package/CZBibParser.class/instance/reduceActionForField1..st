generated-reduction actions
reduceActionForField1: nodes
	^ ((nodes at: 3) isKindOf: CZValue)
		ifTrue: [ CZField key: (nodes at: 1) value asSymbol value: (nodes at: 3) ]
		ifFalse: [ CZField key: (nodes at: 1) value asSymbol rawValue: (nodes at: 3) ]