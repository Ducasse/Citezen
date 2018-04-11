add/remove
addFields: aCollection
	fields addAll: aCollection.
	aCollection do: [:each | each scope: self]
