initialization
checkAnalyzedBibSet: aBibSet
	^ rules collect: [ :rule | rule check: aBibSet ]