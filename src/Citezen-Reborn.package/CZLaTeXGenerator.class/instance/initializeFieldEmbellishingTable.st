initialize
initializeFieldEmbellishingTable
	"Rather ugly but it works!"
	
	fieldEmbellishingTable := Dictionary new. 
	fieldEmbellishingTable at: CZPool author put: '\czauthors{'.
	fieldEmbellishingTable at: CZPool booktitle put: 'In \czbooktitle{'.
	fieldEmbellishingTable at: CZPool title put: '\cztitle{'.
	fieldEmbellishingTable at: CZPool journal put: 'In \czjournal{'.

	