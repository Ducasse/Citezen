public api
fileNamed: aStringDotBib
	"Parser and set the bib file."
	self onStream: (fileSystem workingDirectory resolve: aStringDotBib) readStream