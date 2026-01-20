tests
testCleanForBibKey
	"self debug: #testAsBibKey"

	self
		assert:
			(dirty author rawValueObject people first
				cleanForBibKey: 'Abdeen') 
		equals: 'abdeen'.
	self
		assert:
			(uqui author rawValueObject people second
				cleanForBibKey: 'Uquillas') 
		equals: 'uquillas'.
	self
		assert:
			(uqui author rawValueObject people second
				cleanForBibKey: 'B\''era') 
		equals: 'bera'.
	self
		assert:
			(uqui author rawValueObject people second
				cleanForBibKey: 'G\''{o}mez') 
		equals: 'gomez'