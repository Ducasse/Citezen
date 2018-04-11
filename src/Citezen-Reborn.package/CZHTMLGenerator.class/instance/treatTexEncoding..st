string encoding hooks
treatTexEncoding: aString
	"we want the HTML encodings to tex encoded characters"

	^ CZAccentuateCharactersParser parse: aString