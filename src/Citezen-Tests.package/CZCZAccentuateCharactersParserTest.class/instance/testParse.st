tests
testParse
	
	CZAccentuateCharactersParser resetConversionTable.
	"Apparently we should reset the table. Not really design in fact."
	self 
		assert: (CZAccentuateCharactersParser parse: 'St\''ephane') 
		equals: 'St&eacute;phane'