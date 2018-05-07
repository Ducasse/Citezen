generated
scanForTokenX2
	self recordMatch: #(11).
	self step.
	currentCharacter == $b
		ifTrue: [ (self scanForString: 'ib')
				ifTrue: [ self step.
					currentCharacter == $c
						ifTrue: [ (self scanForString: 'ite')
								ifTrue: [ ^ self recordAndReportMatch: #(7) ].
							^ self reportLastMatch ].
					currentCharacter == $d
						ifTrue: [ (self scanForString: 'ata')
								ifTrue: [ ^ self recordAndReportMatch: #(9) ].
							^ self reportLastMatch ].
					currentCharacter == $s
						ifTrue: [ (self scanForString: 'tyle')
								ifTrue: [ ^ self recordAndReportMatch: #(8) ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $c
		ifTrue: [ (self scanForString: 'itation')
				ifTrue: [ ^ self recordAndReportMatch: #(6) ] ].
	^ self reportLastMatch