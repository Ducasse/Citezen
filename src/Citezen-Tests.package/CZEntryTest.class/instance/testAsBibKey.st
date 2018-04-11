tests
testAsBibKey
	"self debug: #testAsBibKey"

	self assert: dirty author rawValueObject people first asBibKey = 'abdeen'.			
	self assert: uqui author rawValueObject people second asBibKey = 'uquillasgomez'.
	self assert: uqui2 author rawValueObject people second asBibKey = 'uquillasgomez'.