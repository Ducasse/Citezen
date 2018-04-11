initialization
initializeFieldEmbellishingTable
	"Rather ugly but it works!"
	
	fieldEmbellishingTable := Dictionary new. 
	fieldEmbellishingTable at: Author put: '\czauthors{'.
	fieldEmbellishingTable at: BookTitle put: 'In \czbooktitle{'.
	fieldEmbellishingTable at: Title put: '\cztitle{'.
	fieldEmbellishingTable at: Journal put: 'In \czjournal{'.

	