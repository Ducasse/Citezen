generated
scanForToken
	self recordMatch: #(5).
	self step.
	currentCharacter == $"
		ifTrue: [ [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self recordAndReportMatch: #(9) ].
			true ] whileTrue ].
	currentCharacter == $#
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $%
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $@
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	^ self scanForTokenX6