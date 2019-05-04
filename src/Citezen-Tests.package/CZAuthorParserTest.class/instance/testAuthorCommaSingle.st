tests
testAuthorCommaSingle
	| authorString authors |
	authorString := 'Nierstrasz, Oscar'.
	authors := self parserClass parse: authorString.
	self assert: (authors at: 1) firstNames asArray equals: #('Oscar').
	self
		assert: (authors at: 1) lastNames asArray
		equals: #('Nierstrasz')