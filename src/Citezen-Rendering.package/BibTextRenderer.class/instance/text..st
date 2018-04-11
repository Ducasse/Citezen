rendering
text: aString
	aString ifNil: [^ self].
	stream nextPutAll: aString asString