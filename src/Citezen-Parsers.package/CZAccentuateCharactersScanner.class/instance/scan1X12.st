generated
scan1X12
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	(currentCharacter isSafeForHTTP
		or: [ currentCharacter isSpecial
				or: [ currentCharacter isSeparator
						or: [ currentCharacter isArrow
								or: [ currentCharacter <= Character backspace
										or: [ (currentCharacter
												between: (Character value: 14)
												and: Character escape)
												or: [ (currentCharacter between: $# and: $$)
														or: [ (currentCharacter between: $( and: $))
																or: [ (currentCharacter between: $: and: $;)
																		or: [ ('[]{}' includes: currentCharacter)
																				or: [ currentCharacter >= (Character value: 127) ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	^ self reportLastMatch