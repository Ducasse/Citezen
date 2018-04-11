arranging - combining
includesKey: aKey
	^ self entries anySatisfy: [:each | each key = aKey]