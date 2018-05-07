generated
scan1X7
	self recordMatch: #(6).
	self step.
	currentCharacter == $s
		ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	^ self reportLastMatch