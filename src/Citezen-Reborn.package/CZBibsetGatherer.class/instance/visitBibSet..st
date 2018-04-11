visiting
visitBibSet: aSet
	
	bibset addAll: aSet.
	"addAll: has been specialized on CZSet so it iterates over the entries."