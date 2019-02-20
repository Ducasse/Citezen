setup
testArticle
	"self debug: #testArticle"

	| result |
	result := (CZLaTeXGenerator new visit: entry) contents.
	self
		assert: result trimBoth withSqueakLineEndings
		equals:
			'
	\pub  \czauthors{St\''ephane Ducasse and Damien Pollet},  \cztitle{Fingerprints},  In \czjournal{Journal of Information System}, 2010.
' trimBoth withSqueakLineEndings