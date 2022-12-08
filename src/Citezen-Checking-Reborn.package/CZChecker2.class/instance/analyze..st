initialization
analyze: aBibSet

	| analyzedBibSet |
	analyzedBibSet := CZAnalyzedSet new.
	analyzedBibSet bibSet: aBibSet.
	analyzedBibSet entryKeys: (self computeEntryKeys: aBibSet).
	^ analyzedBibSet 