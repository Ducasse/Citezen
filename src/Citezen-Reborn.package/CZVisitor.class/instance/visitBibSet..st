visiting
visitBibSet: aCZSet
	
	aCZSet macros do: [ :each | self visit: each ].
	aCZSet entries do: [ :each | self visit: each ].

	