initialization
checkAnalyzedBibSet: aBibSet

	rules do: [ :rule | logs addLog: (rule check: aBibSet) ].
	^ logs