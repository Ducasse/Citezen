generated
scanForToken
	self recordMatch: #(2).
	self step.
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == ${
		ifTrue: [ ^ self scan2 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(2).
			self step.
			currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ] ] whileTrue.
			^ self reportLastMatch ].
	^ self scan1