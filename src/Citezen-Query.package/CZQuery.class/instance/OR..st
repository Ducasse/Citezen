public
OR: aQuery
	^ (CZOrQuery new)
		leftOr: self;
		rightOr: aQuery;
		yourself