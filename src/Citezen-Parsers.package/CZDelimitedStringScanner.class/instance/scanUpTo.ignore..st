scanning
scanUpTo: stopChar ignore: startChar 
	| level |
	level := 0.
	self step.
	[currentCharacter = stopChar
		and: [level = 0]]
		whileFalse: [currentCharacter = startChar
				ifTrue: [level := level + 1].
			currentCharacter = stopChar
				ifTrue: [level := level - 1].
			self atEnd
				ifTrue: [SmaCCParserError signal: 'Unmatched '
							, (String with: startChar)]
				ifFalse: [self step]]