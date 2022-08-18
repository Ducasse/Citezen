initialization
initializeFieldEmbellishingTables
	"Rather ugly but it works!"
	
	fieldEmbellishingTableStart := Dictionary new.
	fieldEmbellishingTableEnd := Dictionary new.
	fieldEmbellishingTableStart at: BookTitle put: 'In '''''.
	fieldEmbellishingTableStart at: Title put: '""'.
	fieldEmbellishingTableStart at: Journal put: 'In '''''.
	fieldEmbellishingTableEnd at: BookTitle put: ''''''.
	fieldEmbellishingTableEnd at: Title put: '""'.
	fieldEmbellishingTableEnd at: Journal put: ''''''.
	