tests
testAux
	| aux |
	aux := self auxParserClass on: self class auxFile readStream.
	aux parse.
	self assert: aux citations size equals: 2.
	self assert: aux databases size equals: 1.
	self assert: aux style equals: 'alpha'