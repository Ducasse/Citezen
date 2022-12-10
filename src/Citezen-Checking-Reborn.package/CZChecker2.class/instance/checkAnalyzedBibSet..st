initialization
checkAnalyzedBibSet: anAnalyzedBibSet

	rules do: [ :rule | logs add: (rule check: anAnalyzedBibSet) ].
	^ logs