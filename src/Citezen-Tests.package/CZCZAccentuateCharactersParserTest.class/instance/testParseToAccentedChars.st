tests
testParseToAccentedChars

	self 
		assert: (CZAccentuateCharactersParser  parseToAccentedChars: 'St\''ephane') 
		equals: 'Stéphane'