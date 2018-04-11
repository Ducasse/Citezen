add/remove
keepFields: aCollectionOfFieldKeys
	
	self fields copy
		do: [:each | (aCollectionOfFieldKeys includes: each key)
						ifFalse: [self removeField: each ]]
	