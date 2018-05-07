generated
scan1X10
	self recordMatch: #(6).
	self step.
	currentCharacter == $A
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch