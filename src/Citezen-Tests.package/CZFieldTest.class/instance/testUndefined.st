testForClass
testUndefined
	| undefinedField |
	undefinedField := CZField undefined: #undefined.
	self assert: undefinedField class equals: CZUndefinedField.
	self assert: undefinedField key equals: #undefined.
	self assert: undefinedField rawValue equals: CZValue defaultValue notExpanded