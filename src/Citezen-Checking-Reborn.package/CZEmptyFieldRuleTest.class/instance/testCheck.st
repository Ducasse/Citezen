tests
testCheck

	| checker analyzedBibSet logs |
	checker := CZChecker2 new.
	analyzedBibSet := checker analyze: bibSet.
	logs := CZEmptyFieldRule new check: analyzedBibSet.
	self assert: (logs size) equals: 2