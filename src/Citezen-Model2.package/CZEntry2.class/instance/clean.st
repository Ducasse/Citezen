arranging - combining
clean
	self class initializeFieldKeysToRemove.
 	self class fieldKeysToRemove
		do: [:each | (self hasFieldWithKey: each)
						ifTrue: [self removeFieldWithKey: each]]