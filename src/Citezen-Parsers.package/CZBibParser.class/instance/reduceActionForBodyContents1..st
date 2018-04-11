generated-reduction actions
reduceActionForBodyContents1: nodes
	^ (nodes at: 1) value asSymbol -> ((nodes at: 2) collect: [ :each | each at: 2 ])