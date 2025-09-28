setup
testBookWithISBN
	"self debug: #testArticleWithISBN"
	
	| result |
	result := (CZLaTeXGenerator new visit: book) contents.
	self 
		assert: result trimBoth withInternalLineEndings
		equals: '\pub  \czauthors{S{\''e}phane Ducasse},  \cztitle{Building a minimal reflective kernel}, pp. 80, Book on Demand -- Keepers of the lighthouse, 2024, http://books.pharo.org, 9782322506187.'
