tests
testTwoAuthors
	| authorString authors |
	authorString := 'Oscar Nierstrasz and St\''ephane Ducasse'.
	authors := self parserClass parse: authorString.
	self assert: (authors at: 1) firstNames asArray equals: #('Oscar').
	self
		assert: (authors at: 1) lastNames asArray
		equals: #('Nierstrasz').
	self
		assert: (authors at: 2) firstNames asArray
		equals: #('St\''ephane').
	self assert: (authors at: 2) lastNames asArray equals: #('Ducasse')