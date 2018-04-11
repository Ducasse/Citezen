generated-scanner
scan1
	self recordMatch: #(1).
	self step.
	currentCharacter = $C
		ifTrue: [ 
			self step.
			currentCharacter = $O
				ifTrue: [ 
					self step.
					currentCharacter = $M
						ifTrue: [ 
							self step.
							currentCharacter = $M
								ifTrue: [ 
									self step.
									currentCharacter = $E
										ifTrue: [ 
											self step.
											currentCharacter = $N
												ifTrue: [ 
													self step.
													currentCharacter = $T
														ifTrue: [ ^ self recordAndReportMatch: #(11) ].
													^ self reportLastMatch ].
											^ self reportLastMatch ].
									^ self reportLastMatch ].
							^ self reportLastMatch ].
					^ self reportLastMatch ].
			currentCharacter = $o
				ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	currentCharacter = $S
		ifTrue: [ 
			self step.
			currentCharacter = $T
				ifTrue: [ 
					self step.
					currentCharacter = $R
						ifTrue: [ 
							self step.
							currentCharacter = $I
								ifTrue: [ 
									self step.
									currentCharacter = $N
										ifTrue: [ 
											self step.
											currentCharacter = $G
												ifTrue: [ ^ self recordAndReportMatch: #(10) ].
											^ self reportLastMatch ].
									^ self reportLastMatch ].
							^ self reportLastMatch ].
					^ self reportLastMatch ].
			currentCharacter = $t
				ifTrue: [ ^ self scan3 ].
			^ self reportLastMatch ].
	currentCharacter = $c
		ifTrue: [ 
			self step.
			currentCharacter = $o
				ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	currentCharacter = $s
		ifTrue: [ 
			self step.
			currentCharacter = $t
				ifTrue: [ ^ self scan3 ].
			^ self reportLastMatch ].
	^ self reportLastMatch