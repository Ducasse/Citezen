generated
scan1X5
	self recordMatch: #(6).
	self step.
	currentCharacter == $a
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter == $e
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	^ self reportLastMatch