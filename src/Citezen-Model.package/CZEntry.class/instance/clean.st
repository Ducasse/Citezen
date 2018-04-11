add/remove
clean
	
 	self class fieldKeysToRemove
		do: [:each | (self hasFieldWithKey: each)
						ifTrue: [self removeFieldWithKey: each]]