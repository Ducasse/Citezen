save
saveTo: aString
	"I could be pushed to CZBibTextGenerator"
	
	CZBibTexGenerator new 
		filename: aString;
		visitBibSet: self bibset;
		close