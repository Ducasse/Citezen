generated
scanForTokenX2
	self recordMatch: #(1).
	self step.
	currentCharacter == $C
		ifTrue: [ self step.
			currentCharacter == $O
				ifTrue: [ (self scanForString: 'MMENT')
						ifTrue: [ ^ self recordAndReportMatch: #(11) ].
					^ self reportLastMatch ].
			currentCharacter == $o
				ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	currentCharacter == $S
		ifTrue: [ self step.
			currentCharacter == $T
				ifTrue: [ (self scanForString: 'RING')
						ifTrue: [ ^ self recordAndReportMatch: #(10) ].
					^ self reportLastMatch ].
			currentCharacter == $t
				ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	currentCharacter == $c
		ifTrue: [ self step.
			currentCharacter == $o
				ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	currentCharacter == $s
		ifTrue: [ self step.
			currentCharacter == $t
				ifTrue: [ ^ self scan2 ] ].
	^ self reportLastMatch