visiting
visitString: aCZString
	
	| latexifiedString |
	aCZString fixCRs.
	latexifiedString := aCZString notExpanded asString.
	
	"latexifiedString := (latexifiedString copyReplaceAll: '&' with: '\&')."
	"could be done smarter but no time to be smart"
	outputStream nextPutAll: latexifiedString.