example
pharoBibs
	"self pharoBibs"
	<example>
	| bibset |
	bibset := CZBibParser bibFromFileNamed: 'rmod.bib'.
	^ bibset select: [:each | each isPharoPub].