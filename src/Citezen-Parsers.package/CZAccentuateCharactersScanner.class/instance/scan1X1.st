generated
scan1X1
	self recordMatch: #(6).
	self step.
	currentCharacter == Character space
		ifTrue: [ self step.
			currentCharacter == $c
				ifTrue: [ ^ self recordAndReportMatch: #(20) ].
			currentCharacter == $s
				ifTrue: [ ^ self recordAndReportMatch: #(21) ].
			currentCharacter == $t
				ifTrue: [ ^ self recordAndReportMatch: #(22) ].
			^ self reportLastMatch ].
	currentCharacter == ${
		ifTrue: [ self step.
			currentCharacter == $c
				ifTrue: [ self step.
					currentCharacter == $}
						ifTrue: [ ^ self recordAndReportMatch: #(20) ].
					^ self reportLastMatch ].
			currentCharacter == $s
				ifTrue: [ self step.
					currentCharacter == $}
						ifTrue: [ ^ self recordAndReportMatch: #(21) ].
					^ self reportLastMatch ].
			currentCharacter == $t
				ifTrue: [ self step.
					currentCharacter == $}
						ifTrue: [ ^ self recordAndReportMatch: #(22) ] ] ].
	^ self reportLastMatch