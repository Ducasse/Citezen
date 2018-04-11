generated-reduction actions
reduceActionForBibfile1: nodes
	^ CZSet fromDeclarations: ((nodes at: 1) reject: [ :it | it isNil ])