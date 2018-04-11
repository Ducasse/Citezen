private-building
buildEntry: tokens 
	| body |
	body := CZBibParser parse: (tokens at: 3) value allButFirst allButLast
				startingAt: self class startingStateForBodyContents.
	^ (CZEntry type: (tokens at: 2) value asSymbol)
		key: body key;
		addFields: body value