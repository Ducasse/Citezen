generated-scanner
scanForToken
	self step.
	(currentCharacter <= Character tab or: 
			[(currentCharacter between: (Character value: 11) and: Character newPage) 
				or: 
					[(currentCharacter between: (Character value: 14) and: Character space) 
						or: 
							[(currentCharacter between: $" and: $#) or: 
									[currentCharacter = $% or: 
											[(currentCharacter between: $' and: $)) or: 
													[currentCharacter = $= 
														or: [currentCharacter = $@ or: [currentCharacter >= $~]]]]]]]]) 
		ifTrue: [^ self recordAndReportMatch: #(11 )].
	(currentCharacter = $! or: 
			[currentCharacter = $$ or: 
					[currentCharacter = $& or: 
							[(currentCharacter between: $* and: $+) or: 
									[(currentCharacter between: $- and: $<) or: 
											[(currentCharacter between: $> and: $?) or: 
													[(currentCharacter between: $A and: $[) 
														or: [(currentCharacter between: $] and: $z) or: [currentCharacter = $|]]]]]]]]) 
		ifTrue: 
			[self recordMatch: #(5 11 ).
			self step.
			(currentCharacter = $! or: 
					[currentCharacter = $$ or: 
							[currentCharacter = $& or: 
									[(currentCharacter between: $* and: $+) or: 
											[(currentCharacter between: $- and: $<) or: 
													[(currentCharacter between: $> and: $?) or: 
															[(currentCharacter between: $A and: $[) 
																or: [(currentCharacter between: $] and: $z) or: [currentCharacter = $|]]]]]]]]) 
				ifTrue: 
					[
					[self recordMatch: #(5 ).
					self step.
					currentCharacter = $! or: 
							[currentCharacter = $$ or: 
									[currentCharacter = $& or: 
											[(currentCharacter between: $* and: $+) or: 
													[(currentCharacter between: $- and: $<) or: 
															[(currentCharacter between: $> and: $?) or: 
																	[(currentCharacter between: $A and: $[) 
																		or: [(currentCharacter between: $] and: $z) or: [currentCharacter = $|]]]]]]]]] 
							whileTrue.
					^ self reportLastMatch].
			^ self reportLastMatch].
	currentCharacter = Character lf 
		ifTrue: [^ self recordAndReportMatch: #(4 11 )].
	currentCharacter = Character cr 
		ifTrue: 
			[self recordMatch: #(4 11 ).
			self step.
			currentCharacter = Character lf 
				ifTrue: [^ self recordAndReportMatch: #(4 )].
			^ self reportLastMatch].
	currentCharacter = $, ifTrue: [^ self recordAndReportMatch: #(3 11 )].
	currentCharacter = $\ ifTrue: [^ self scan1].
	currentCharacter = ${ ifTrue: [^ self recordAndReportMatch: #(1 10 11 )].
	currentCharacter = $} ifTrue: [^ self recordAndReportMatch: #(2 11 )].
	^ self reportLastMatch