testing
testSingleAuthor
	"self debug: #testSingleAuthor"
	
	| authorString authors |
	authorString := 'Stéphane Ducasse'.
	authors := CZAuthorParser parse: authorString.
	self assert: (authors at: 1) firstNames asArray = #('Stéphane' ).
	self assert: (authors at: 1) lastNames asArray = #('Ducasse' )