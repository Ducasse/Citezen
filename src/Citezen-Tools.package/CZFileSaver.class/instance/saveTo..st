save
saveTo: aString
	"I could be pushed to CZBibTextGenerator"
	
	CZBibTexGenerator new 
		save: self bibset to: aString
	