building
bibEntriesFor: aBibTag

	^ workingBibSet select: (self queryForKozenTag: aBibTag)