generated
scan1X9
	self recordMatch: #(6).
	self step.
	currentCharacter == Character space
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	^ self reportLastMatch