generated-scanner
scan1
	self recordMatch: #(11 ).
	self step.
	currentCharacter = $b 
		ifTrue: 
			[self step.
			currentCharacter = $i 
				ifTrue: 
					[self step.
					currentCharacter = $b 
						ifTrue: 
							[self step.
							currentCharacter = $c 
								ifTrue: 
									[self step.
									currentCharacter = $i 
										ifTrue: 
											[self step.
											currentCharacter = $t 
												ifTrue: 
													[self step.
													currentCharacter = $e ifTrue: [^ self recordAndReportMatch: #(7 )].
													^ self reportLastMatch].
											^ self reportLastMatch].
									^ self reportLastMatch].
							currentCharacter = $d 
								ifTrue: 
									[self step.
									currentCharacter = $a 
										ifTrue: 
											[self step.
											currentCharacter = $t 
												ifTrue: 
													[self step.
													currentCharacter = $a ifTrue: [^ self recordAndReportMatch: #(9 )].
													^ self reportLastMatch].
											^ self reportLastMatch].
									^ self reportLastMatch].
							currentCharacter = $s 
								ifTrue: 
									[self step.
									currentCharacter = $t 
										ifTrue: 
											[self step.
											currentCharacter = $y 
												ifTrue: 
													[self step.
													currentCharacter = $l 
														ifTrue: 
															[self step.
															currentCharacter = $e ifTrue: [^ self recordAndReportMatch: #(8 )].
															^ self reportLastMatch].
													^ self reportLastMatch].
											^ self reportLastMatch].
									^ self reportLastMatch].
							^ self reportLastMatch].
					^ self reportLastMatch].
			^ self reportLastMatch].
	currentCharacter = $c 
		ifTrue: 
			[self step.
			currentCharacter = $i 
				ifTrue: 
					[self step.
					currentCharacter = $t 
						ifTrue: 
							[self step.
							currentCharacter = $a 
								ifTrue: 
									[self step.
									currentCharacter = $t 
										ifTrue: 
											[self step.
											currentCharacter = $i 
												ifTrue: 
													[self step.
													currentCharacter = $o 
														ifTrue: 
															[self step.
															currentCharacter = $n ifTrue: [^ self recordAndReportMatch: #(6 )].
															^ self reportLastMatch].
													^ self reportLastMatch].
											^ self reportLastMatch].
									^ self reportLastMatch].
							^ self reportLastMatch].
					^ self reportLastMatch].
			^ self reportLastMatch].
	^ self reportLastMatch