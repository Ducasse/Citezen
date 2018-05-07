generated
scanForTokenX3
	self recordMatch: #(4 11).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self reportLastMatch