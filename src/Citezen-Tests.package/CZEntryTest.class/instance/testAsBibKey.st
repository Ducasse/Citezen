tests
testAsBibKey
	"self debug: #testAsBibKey"

	self assert: dirty author rawValueObject people first asBibKey equals: 'abdeen'.			
	self assert: uqui author rawValueObject people second asBibKey equals: 'uquillasgomez'.
	self assert: uqui2 author rawValueObject people second asBibKey equals: 'uquillasgomez'.