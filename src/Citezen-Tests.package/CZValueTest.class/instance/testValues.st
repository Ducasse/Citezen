as yet unclassified
testValues
	self assert: entry author valueClass = CZPeople.
	self assert: entry title valueClass = CZString.
	self assert: entry year valueClass = CZInteger.
	