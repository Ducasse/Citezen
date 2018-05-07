generated
scan1X11
	self recordMatch: #(6).
	self step.
	currentCharacter == $o
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch