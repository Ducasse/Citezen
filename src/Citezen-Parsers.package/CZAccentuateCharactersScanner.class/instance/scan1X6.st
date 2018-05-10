generated
scan1X6
	self recordMatch: #(6).
	self step.
	currentCharacter == $a
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ ^ self recordAndReportMatch: #(43) ] ].
	^ self reportLastMatch