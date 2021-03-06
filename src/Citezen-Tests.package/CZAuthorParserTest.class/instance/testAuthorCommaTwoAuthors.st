tests
testAuthorCommaTwoAuthors
	| authorString authors |
	authorString := 'Nierstrasz, Oscar and Ducasse, St\''ephane'.
	authors := self parserClass parse: authorString.
	self assert: (authors at: 1) firstNames asArray equals: #('Oscar').
	self
		assert: (authors at: 1) lastNames asArray
		equals: #('Nierstrasz').
	self
		assert: (authors at: 2) firstNames asArray
		equals: #('St\''ephane').
	self assert: (authors at: 2) lastNames asArray equals: #('Ducasse')