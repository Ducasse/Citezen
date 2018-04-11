building
verifyStatisticsGeneration
	| phds journals topconferences internationalconferences conferences vulgarisation books tr |
	phds := workingBibSet select: CZQuery phdthesis.
	journals := workingBibSet select: CZQuery article.
	"topconferences := workingBibSet select: CZQuery topconference.
	internationalconferences := workingBibSet
		select: CZQuery internationalconference.
	'bug here since we count two times the same'."
	conferences := workingBibSet select: CZQuery conference.
	vulgarisation := workingBibSet select: CZQuery vulgarisation.
	books := workingBibSet select: CZQuery book.
	tr := workingBibSet select: CZQuery techReport.
	self halt.
	workingBibSet entries size = (tr size + books size
		+ vulgarisation size + conferences size + journals size
		+ phds size)