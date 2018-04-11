testsForInstances
testSetKeyValue
	
	| aField |
	aField := CZField new.
	aField setKey: #key rawValue: 'a key'.
	self assert: (aField key = #key).
	self assert: (aField rawValue = 'a key').
	
	aField setKey: #key value: (CZString new setValue: 'a key too').
	self assert: (aField rawValue = 'a key too').