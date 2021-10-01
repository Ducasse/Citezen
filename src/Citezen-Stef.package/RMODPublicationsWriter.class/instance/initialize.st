initialize
initialize
	super initialize.
	self teamMembers: self class team.

	self fileNamed: '/Users/ducasse/Workspace/SimpleFiles/LSEFiles/Bibliography/bib/rmod.bib'.
	self 
		keysOfBlackListedEntries: self blackListedEntries.
	self setFilteringOn.
	self filter.