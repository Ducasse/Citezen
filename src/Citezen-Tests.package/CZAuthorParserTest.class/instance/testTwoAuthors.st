testing
testTwoAuthors
	| authorString authors |
	authorString := 'Oscar Nierstrasz and St\''ephane Ducasse'.
	authors := CZAuthorParser parse: authorString.
	self assert: (authors at: 1) firstNames asArray = #('Oscar' ).
	self assert: (authors at: 1) lastNames asArray = #('Nierstrasz' ).
	self assert: (authors at: 2) firstNames asArray = #('St\''ephane' ).
	self assert: (authors at: 2) lastNames asArray = #('Ducasse' )