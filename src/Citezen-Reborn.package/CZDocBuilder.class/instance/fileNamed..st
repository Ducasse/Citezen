public api
fileNamed: aStringDotBib
	"Parser and set the bib file."
	self onStream: (ZnCharacterReadStream
							on: (File openForReadFileNamed: aStringDotBib) 	encoding: 'utf8')
				