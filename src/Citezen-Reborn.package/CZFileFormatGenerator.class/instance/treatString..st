string encoding hooks
treatString: aString
	"There are two aspects that should be covered: 
		- handling tex encodings ie. \' or \& or \'{o} to be turned into the correct glyph
		- strange characters that are meta characters in different outputs."

	^ self treatSignsInString: (self treatTexEncoding: aString)