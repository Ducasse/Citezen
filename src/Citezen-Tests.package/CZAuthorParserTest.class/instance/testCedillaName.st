tests
testCedillaName
	"self debug: #testCedillaName"

	| authorString authors |
	authorString := 'Fran{\c c}oise Balmas'.
	authors := self parserClass parse: authorString.
	self
		assert: (authors at: 1) firstNames asArray
		equals: #('Fran{\c c}oise').
	self assert: (authors at: 1) lastNames asArray equals: #('Balmas')