public
value: aBibEntry
	^ (leftOr value: aBibEntry) or: [ rightOr value: aBibEntry ]