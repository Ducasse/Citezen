accessing
value: aValue
	block ifNil: [ ^ true ].
	(aValue = '') ifTrue: [ ^ false ].
	^ block value: aValue 