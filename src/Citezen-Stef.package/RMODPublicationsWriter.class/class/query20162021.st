generation
query20162021
	"normally this is four years so we should stop in 2011 but there are fuzy so let us go until 2012"

	"self query20162021"

	| builder |
	builder := self new
		fileNamed: '/Users/ducasse/Workspace/SimpleFiles/LSEFiles/Bibliography/bib/rmod.bib';
		startingYear: 2017;
		endingYear: 2021;
		teamMembers: self teamFor20162021;
		keysOfBlackListedEntries: self blackListedEntries ;
		setFilteringOn;
		yourself.
	builder filter.
	^ builder