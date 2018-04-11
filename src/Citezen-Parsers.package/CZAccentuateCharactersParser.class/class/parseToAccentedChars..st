as yet unclassified
parseToAccentedChars: aString
	"Needs to be rewritten to use an instance variable instead."

	| result |
	conversionTable := self toAccentedCharTable.
	result := ''.
	result := self parse: aString "valueNowOrOnUnwindDo: [self resetConversionTable]".
	^result