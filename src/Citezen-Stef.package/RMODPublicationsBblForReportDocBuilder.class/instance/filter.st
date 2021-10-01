building
filter

	super filter.
	workingBibSet := workingBibSet select: self validTeamQuery  "could be also teamEntry"