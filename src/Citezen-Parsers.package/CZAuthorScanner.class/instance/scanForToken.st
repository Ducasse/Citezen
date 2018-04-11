generated-scanner
scanForToken
	self recordMatch: #whitespace.
	self step.
	(currentCharacter <= Character backspace
		or: [ 
			(currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $+) or: [ (currentCharacter between: $- and: $z) or: [ currentCharacter >= $| ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	((currentCharacter between: Character tab and: Character cr) or: [ currentCharacter = Character space ])
		ifTrue: [ 
			[ 
			self recordMatch: #whitespace.
			self step.
			(currentCharacter between: Character tab and: Character cr) or: [ currentCharacter = Character space ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter = $,
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter = ${
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch