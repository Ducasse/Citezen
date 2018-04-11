testForClass
testUndefined
	| undefinedField |
	undefinedField := CZField undefined: #undefined.
	self assert: (undefinedField class = CZUndefinedField).
	self assert: (undefinedField key = #undefined).
	self assert: (undefinedField rawValue = CZValue defaultValue notExpanded)