testing
testCedillaName
	"self debug: #testCedillaName"
	
	| authorString authors |
	authorString := 'Fran{\c c}oise Balmas'.
	authors := CZAuthorParser parse: authorString.
	self assert: (authors at: 1) firstNames asArray = #('Fran{\c c}oise' ).
	self assert: (authors at: 1) lastNames asArray = #('Balmas' )