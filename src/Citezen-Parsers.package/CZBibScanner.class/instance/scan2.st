generated
scan2
	(self scanForString: 'ring')
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self reportLastMatch