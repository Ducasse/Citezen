building
filter
	"set the working set to only the author entries"
	super filter.
	workingBibSet := workingBibSet select: (self authorQuery OR: self editorQuery)