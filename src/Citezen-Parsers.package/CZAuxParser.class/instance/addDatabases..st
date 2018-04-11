private-building
addDatabases: aCollection
	aCollection do: [:each | self addDatabase: each]