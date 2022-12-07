initialization
analyze: aBibSet
	| analyzedBibSet |
	analyzedBibSet := CZAnalyzedSet new.
	analyzedBibSet bibset: aBibSet.
	analyzedBibSet entryKeys: (self computeEntryKeys: aBibSet).
	^ analyzedBibSet 