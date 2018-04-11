public
AND: aQuery
	^ (CZAndQuery new)
		leftAnd: self;
		rightAnd: aQuery;
		yourself