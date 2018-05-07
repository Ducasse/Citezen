generated
scanForTokenX1
	self recordMatch: #(5 11).
	self step.
	(('!$&' includes: currentCharacter)
		or: [ (currentCharacter between: $* and: $+)
				or: [ (currentCharacter between: $- and: $<)
						or: [ (currentCharacter between: $> and: $?)
								or: [ (currentCharacter between: $A and: $[)
										or: [ (currentCharacter between: $] and: $z)
												or: [ currentCharacter == $| ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(5).
			self step.
			('!$&' includes: currentCharacter)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $<)
								or: [ (currentCharacter between: $> and: $?)
										or: [ (currentCharacter between: $A and: $[)
												or: [ (currentCharacter between: $] and: $z)
														or: [ currentCharacter == $| ] ] ] ] ] ] ] whileTrue ].
	^ self reportLastMatch