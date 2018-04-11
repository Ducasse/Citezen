private-building
buildAuthor: tokens 
	tokens second 
		ifNil: [^ CZAuthor named: (tokens first collect: [:each | each value])].
	tokens third ifNil: 
			[^ CZAuthor named: (tokens first collect: [:each | each value])
				firstNames: ((tokens second allButFirst: 1) collect: [:each | each value])].
	^ CZAuthor 
		named: (tokens first collect: [:each | each value])
		firstNames: ((tokens third allButFirst: 1) collect: [:each | each value])
		junior: ((tokens second allButFirst: 1) collect: [:each | each value])