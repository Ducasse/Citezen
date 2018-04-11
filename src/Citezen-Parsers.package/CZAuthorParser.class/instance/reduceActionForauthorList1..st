generated-reduction actions
reduceActionForauthorList1: nodes
	^ (OrderedCollection with: (nodes at: 1))
		addAll: ((nodes at: 2) collect: [ :subcoll | subcoll at: 2 ]);
		yourself