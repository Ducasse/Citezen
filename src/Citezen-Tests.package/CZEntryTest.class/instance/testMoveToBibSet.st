tests
testMoveToBibSet
	| bibsetFrom bibsetTo |
	bibsetFrom := CZSet new.
	bibsetTo := CZSet new.
	
	entry addToBibSet: bibsetFrom.
	entry moveToBibSet: bibsetTo.
	
	self assert: (bibsetFrom entries size = 0).
	self assert: (bibsetTo entries size = 1).
	self assert: (entry scope == bibsetTo).
	