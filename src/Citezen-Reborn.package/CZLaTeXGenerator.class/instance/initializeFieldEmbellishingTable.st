initialization
initializeFieldEmbellishingTable
	"Rather ugly but it works!"
	
	fieldEmbellishingTable := Dictionary new. 
	fieldEmbellishingTable at: CZFieldPool author put: '\czauthors{'.
	fieldEmbellishingTable at: CZFieldPool booktitle put: 'In \czbooktitle{'.
	fieldEmbellishingTable at: CZFieldPool title put: '\cztitle{'.
	fieldEmbellishingTable at: CZFieldPool journal put: 'In \czjournal{'.

	