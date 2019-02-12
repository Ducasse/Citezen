tests
testValues
	self assert: entry author valueClass equals: CZPeople.
	self assert: entry title valueClass equals: CZString.
	self assert: entry year valueClass equals: CZInteger.
	