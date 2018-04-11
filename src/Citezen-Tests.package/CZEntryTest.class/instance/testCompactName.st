tests
testCompactName
	"self debug: #testCompactName"

	self assert: dirty author rawValueObject people first compactLastName = 'Abdeen'.
	self assert: uqui author rawValueObject people second compactLastName = 'UquillasGomez'.