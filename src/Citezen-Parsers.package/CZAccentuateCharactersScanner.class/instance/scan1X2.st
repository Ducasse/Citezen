generated
scan1X2
	self recordMatch: #(6).
	self step.
	currentCharacter == $a
		ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	currentCharacter == $e
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == $m
		ifTrue: [ (self scanForString: 'ega')
				ifTrue: [ ^ self recordAndReportMatch: #(44) ] ].
	^ self reportLastMatch