add/remove
removeFields: aCollectionOfFieldKeys

	aCollectionOfFieldKeys
		do: [:each |  self removeFieldWithKey: each ]
	