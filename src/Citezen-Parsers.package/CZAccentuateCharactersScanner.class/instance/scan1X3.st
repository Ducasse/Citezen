generated
scan1X3
	self recordMatch: #(6).
	self step.
	currentCharacter == $e
		ifTrue: [ self step.
			currentCharacter == $q
				ifTrue: [ ^ self recordAndReportMatch: #(45) ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	^ self reportLastMatch