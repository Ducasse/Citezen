generated-scanner
scan2
	self step.
	currentCharacter = $m
		ifTrue: [ 
			self step.
			currentCharacter = $m
				ifTrue: [ 
					self step.
					currentCharacter = $e
						ifTrue: [ 
							self step.
							currentCharacter = $n
								ifTrue: [ 
									self step.
									currentCharacter = $t
										ifTrue: [ ^ self recordAndReportMatch: #(11) ].
									^ self reportLastMatch ].
							^ self reportLastMatch ].
					^ self reportLastMatch ].
			^ self reportLastMatch ].
	^ self reportLastMatch