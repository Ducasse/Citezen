generated-scanner
scan3
	self step.
	currentCharacter = $r
		ifTrue: [ 
			self step.
			currentCharacter = $i
				ifTrue: [ 
					self step.
					currentCharacter = $n
						ifTrue: [ 
							self step.
							currentCharacter = $g
								ifTrue: [ ^ self recordAndReportMatch: #(10) ].
							^ self reportLastMatch ].
					^ self reportLastMatch ].
			^ self reportLastMatch ].
	^ self reportLastMatch