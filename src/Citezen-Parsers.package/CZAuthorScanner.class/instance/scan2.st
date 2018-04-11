generated-scanner
scan2
	[ 
	self recordMatch: #(4).
	self step.
	currentCharacter <= Character backspace
		or: [ 
			(currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $+) or: [ (currentCharacter between: $- and: $|) or: [ currentCharacter >= $~ ] ] ] ] ]
		whileTrue.
	((currentCharacter between: Character tab and: Character cr)
		or: [ currentCharacter = Character space or: [ currentCharacter = $, ] ])
		ifTrue: [ 
			[ 
			self step.
			currentCharacter ~= $} ] whileTrue.
			currentCharacter = $}
				ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	currentCharacter = $}
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch