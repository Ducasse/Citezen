interface
checkFile: aString

	| bs |
	bs := CZBibParser bibFromFileNamed: FileLocator image parent / aString.
	"first we should make sure that the "
	bs size