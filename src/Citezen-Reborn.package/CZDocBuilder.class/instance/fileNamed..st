public api
fileNamed: aStringDotBib
	"Parser and set the bib file."
	self onStream: (workingDirectory resolve: aStringDotBib) readStream