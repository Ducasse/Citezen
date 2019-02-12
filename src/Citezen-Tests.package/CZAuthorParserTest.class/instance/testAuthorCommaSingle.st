testing
testAuthorCommaSingle
	| authorString authors |
	authorString := 'Nierstrasz, Oscar'.
	authors := CZAuthorParser parse: authorString.
	self assert: (authors at: 1) firstNames asArray equals: #('Oscar' ).
	self assert: (authors at: 1) lastNames asArray equals: #('Nierstrasz' )