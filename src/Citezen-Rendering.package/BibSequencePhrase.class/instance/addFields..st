accessing-convenience
addFields: aCollection
	aCollection do: [:each | self addField: each]