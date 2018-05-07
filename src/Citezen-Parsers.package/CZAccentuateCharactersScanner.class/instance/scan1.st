generated
scan1
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $'
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scan1X11 ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $A
		ifTrue:
			[ ^ self scan1X10 ].
	currentCharacter == $H
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self scan1X13