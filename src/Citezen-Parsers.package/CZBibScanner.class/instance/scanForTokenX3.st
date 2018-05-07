generated
scanForTokenX3
	[ self recordMatch: #(8).
	self step.
	('!$&' includes: currentCharacter)
		or: [ (currentCharacter between: $* and: $+)
				or: [ (currentCharacter between: $- and: $<)
						or: [ (currentCharacter between: $> and: $?)
								or: [ (currentCharacter between: $A and: $[)
										or: [ (currentCharacter between: $] and: $z)
												or: [ currentCharacter == $| ] ] ] ] ] ] ] whileTrue