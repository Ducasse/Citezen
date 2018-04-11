tests
testAux
	| aux |
	aux := CZAuxParser on: self class auxFile readStream.
	aux parse.
	self assert: aux citations size = 2.
	self assert: aux databases size = 1.
	self assert: aux style = 'alpha'