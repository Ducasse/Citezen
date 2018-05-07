generated
scan1X8
	self recordMatch: #(6).
	self step.
	currentCharacter == $i
		ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	^ self reportLastMatch