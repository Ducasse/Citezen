generated
scanForTokenX1
	[ self recordMatch: #(7 8).
	self step.
	currentCharacter between: $0 and: $9 ] whileTrue.
	(('!$&' includes: currentCharacter)
		or: [ (currentCharacter between: $* and: $+)
				or: [ (currentCharacter between: $- and: $/)
						or: [ (currentCharacter between: $: and: $<)
								or: [ (currentCharacter between: $> and: $?)
										or: [ (currentCharacter between: $A and: $[)
												or: [ (currentCharacter between: $] and: $z)
														or: [ currentCharacter == $| ] ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(8).
			self step.
			('!$&' includes: currentCharacter)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $<)
								or: [ (currentCharacter between: $> and: $?)
										or: [ (currentCharacter between: $A and: $[)
												or: [ (currentCharacter between: $] and: $z)
														or: [ currentCharacter == $| ] ] ] ] ] ] ] whileTrue ].
	^ self reportLastMatch