testsForInstances
testAddToBibSet
	| bibset nbMacros |
	bibset := CZBibParser parse: CZTestResource bibTest.
	nbMacros := bibset macros size.
	
	(CZField key:'m' rawValue: 'M') addToBibSet: bibset.
	
	self assert: (bibset macros size) = (nbMacros + 1)