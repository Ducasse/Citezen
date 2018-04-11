string encoding hooks
treatTexEncoding: aString
	"How to handle the text accent encoding such as \'e 
	parse: use the previously set table 
		toHtmlTable    -> <acute>...
		toAccentedCharTable -> à
	"

	"This method will do nothing in bib, latex and bbl formats."
	"Check implementors of setEncodedCharacterTransformationTable."

	^ CZAccentuateCharactersParser parse: aString