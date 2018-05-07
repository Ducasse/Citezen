generated
scan1
	(self scanForString: 'mment')
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch