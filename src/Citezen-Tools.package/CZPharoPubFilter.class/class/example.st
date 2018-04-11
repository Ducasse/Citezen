as yet unclassified
example
	"self  example"
	
	| bibset |
	bibset := CZFileLoader  bibFromFileNamed: 'rmod.bib'.
	^ bibset select: [:each | each isPharoPub].