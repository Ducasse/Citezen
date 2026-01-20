tests
testCompactName
	"self debug: #testCompactName"

	self assert: dirty author rawValueObject people first compactLastName equals: 'Abdeen'.
	self assert: uqui author rawValueObject people second compactLastName equals: 'UquillasGomez'.