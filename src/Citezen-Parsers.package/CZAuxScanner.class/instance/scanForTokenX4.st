generated
scanForTokenX4
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(3 11) ].
	currentCharacter == $\
		ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(1 10 11) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(2 11) ].
	(('!$&' includes: currentCharacter)
		or: [ (currentCharacter between: $* and: $+)
				or: [ (currentCharacter between: $- and: $<)
						or: [ (currentCharacter between: $> and: $?)
								or: [ (currentCharacter between: $A and: $[)
										or: [ (currentCharacter between: $] and: $z)
												or: [ currentCharacter == $| ] ] ] ] ] ])
		ifTrue: [ ^ self scanForTokenX1 ].
	^ self recordAndReportMatch: #(11)