private-building
buildMacro: tokens 
	^ CZBibParser parse: (tokens at: 2) value allButFirst allButLast
		startingAt: self class startingStateForField