initialization
checkAnalyzedBibSet: aBibSet

	rules do: [ :rule | logs add: (rule check: aBibSet) ].
	^ logs