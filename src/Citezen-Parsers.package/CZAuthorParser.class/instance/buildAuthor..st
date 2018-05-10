private-building
buildAuthor: tokens
	| names firstNames juniorNames |
	names := tokens first collect: [ :each | each value ].
	tokens second
		ifNil: [ ^ CZAuthor named: names ]
		ifNotNil: [ :second | 
			(ReadStream on: second)
				in: [ :input | 
					input next.
					firstNames := OrderedCollection
						streamContents: [ :s | 
							| n |
							[ input atEnd
								or: [ (n := input next value) = ',' or: [ n isNil ] ] ]
								whileFalse: [ s nextPut: n ] ].
					input atEnd
						ifTrue: [ ^ CZAuthor named: names firstNames: firstNames ]
						ifFalse: [ ^ CZAuthor
								named: names
								firstNames: firstNames
								junior: (input upToEnd collect: [ :each | each value ]) ] ] ]