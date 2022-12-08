initialization
checkAnalyzedBibSet: aBibSet
	rules do: [ :rule | (rule check: aBibSet) putInLogSet: logs ].
	^ logs