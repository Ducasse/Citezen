generated
scan1
	[ self recordMatch: #(4).
	self step.
	currentCharacter == ${
		ifTrue: [ ^ self scan2 ].
	currentCharacter <= Character backspace
		or: [ (currentCharacter
				between: (Character value: 14)
				and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $+)
						or: [ (currentCharacter between: $- and: $z)
								or: [ currentCharacter >= $| ] ] ] ] ] whileTrue.
	^ self reportLastMatch