tests
testCheck

	| checker analyzedBibSet logs |
	checker := CZChecker2 new.
	analyzedBibSet := checker analyze: bibSet.
	logs := CZDuplicateKeysRule new check: analyzedBibSet.
	self assert: (logs size) equals: 2