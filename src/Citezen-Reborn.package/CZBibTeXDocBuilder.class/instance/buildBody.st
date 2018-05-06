public API
buildBody
	
	| allSelectedEntries |
	allSelectedEntries := CZSet new.
	self bodySpecification
		do: [ :each |  
				allSelectedEntries addAll: (workingBibSet select: (self perform: (each, #Query) asSymbol))  
				].
	allSelectedEntries sortByAuthor.
	self addElement: allSelectedEntries.
					