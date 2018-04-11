visiting
visitString: aCZString
	
	| latexifiedString |
	latexifiedString := aCZString notExpanded asString.
	
	"latexifiedString := (latexifiedString copyReplaceAll: '&' with: '\&')."
	"could be done smarter but no time to be smart"
	outputStream nextPutAll: latexifiedString.