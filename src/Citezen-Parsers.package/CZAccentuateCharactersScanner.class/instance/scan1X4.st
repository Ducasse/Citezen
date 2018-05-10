generated
scan1X4
	self recordMatch: #(6).
	self step.
	currentCharacter == $e
		ifTrue: [ (self scanForString: 'dge')
				ifTrue: [ ^ self recordAndReportMatch: #(46) ] ].
	^ self reportLastMatch