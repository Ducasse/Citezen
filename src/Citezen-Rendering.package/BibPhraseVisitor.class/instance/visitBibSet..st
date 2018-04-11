visiting-bibsets
visitBibSet: aBibSet
	aBibSet do: [:each | self visit: each]