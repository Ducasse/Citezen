generated
scan2
	[ self recordMatch: #(4).
	self step.
	currentCharacter == $}
		ifTrue: [ ^ self scan1 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp or: [ currentCharacter == $, ] ])
		ifTrue: [ [ self step.
			currentCharacter == $}
				ifTrue: [ ^ self scan1 ].
			true ] whileTrue ].
	true ] whileTrue