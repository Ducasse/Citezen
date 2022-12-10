tests
testAdd

	| logSet logSetSizeTwo |
	logSet := CZLogSet new.
	logSetSizeTwo := CZLogSet new.
	logSetSizeTwo add: CZError new.
	logSetSizeTwo add: CZError new.
	
	logSet add: CZWarning new.
	logSet add: CZLogSet new.
	logSet add: logSetSizeTwo.
	
	self assert: (logSet size) equals: 3
	
	