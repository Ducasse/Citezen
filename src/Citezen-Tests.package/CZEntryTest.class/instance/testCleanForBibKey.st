tests
testCleanForBibKey
	"self debug: #testAsBibKey"

	self
		assert:
			(dirty author rawValueObject people first
				cleanForBibKey: 'Abdeen') = 'abdeen'.
	self
		assert:
			(uqui author rawValueObject people second
				cleanForBibKey: 'Uquillas') = 'uquillas'.
	self
		assert:
			(uqui author rawValueObject people second
				cleanForBibKey: 'B\''era') = 'bera'.
	self
		assert:
			(uqui author rawValueObject people second
				cleanForBibKey: 'G\''{o}mez') = 'gomez'