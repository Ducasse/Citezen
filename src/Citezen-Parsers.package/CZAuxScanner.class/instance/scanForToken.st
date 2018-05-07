generated
scanForToken
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(4 11) ].
	currentCharacter == Character cr
		ifTrue: [ ^ self scanForTokenX3 ].
	^ self scanForTokenX4