adding
addAll: aCZSet
	
	aCZSet do: [:each | self addEntry: each].
	^ entries