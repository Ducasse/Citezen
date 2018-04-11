public api
fileNamed: aStringDotBib
	"Parser and set the bib file."
	| bibset2 |
	bibset2 := CZBibParser parse: (FileStream readOnlyFileNamed: aStringDotBib) contents.
	bibset2 scope: CZSet standardDefinitions.
	self bibset: bibset2