generated
scanForTokenX6
	(currentCharacter between: $0 and: $9)
		ifTrue:
			[ ^ self scanForTokenX1 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr
				or: [ currentCharacter == Character space ] ])
		ifTrue:
			[ ^ self scanForTokenX5 ].
	(('!$&' includes: currentCharacter)
		or: [ (currentCharacter between: $* and: $+)
				or: [ (currentCharacter between: $- and: $/)
						or: [ (currentCharacter between: $: and: $<)
								or: [ (currentCharacter between: $> and: $?)
										or: [ (currentCharacter between: $A and: $[)
												or: [ (currentCharacter between: $] and: $z)
														or: [ currentCharacter == $| ] ] ] ] ] ] ])
		ifTrue:
			[ self scanForTokenX3 ].
	^ self reportLastMatch