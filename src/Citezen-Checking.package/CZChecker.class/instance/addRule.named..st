interface
addRule: aBlock named: aString
	| name |
	aString isEmptyOrNil
		ifTrue: [ name := 'rule', rules size asString ]
		ifFalse: [ name := aString ].
	
	((aBlock isNil not) & (aString isNil not))
		ifTrue: [ rules add: (name -> aBlock) ]