visiting-bibsets
visitFieldRef: aFieldRef
	| field |
	field := currentEntry at: aFieldRef fieldName.
	field ifNotNil: [self visit: (self formatFor: field)]