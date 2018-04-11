building
filter
	super filter.
	"here we do not want to remove from the working set so that 
	the articles can have multiple categories"
	"Yes but this is not there the problem"
	workingBibSet := originalBibSet select: self authorQuery