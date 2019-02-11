example
pharoBibs
	"self pharoBibs"
	<example>
	| bibset |
	bibset := CZFileLoader bibFromFileNamed: 'rmod.bib'; bibset.
	^ bibset select: [:each | each isPharoPub].