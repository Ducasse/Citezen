tests
testSingleAuthor
	"self debug: #testSingleAuthor"

	| authorString authors |
	authorString := 'Stéphane Ducasse'.
	authors := self parserClass parse: authorString.
	self assert: (authors at: 1) firstNames asArray equals: #('Stéphane').
	self assert: (authors at: 1) lastNames asArray equals: #('Ducasse')