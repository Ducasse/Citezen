generation
query20122016
	"normally this is four years so we should stop in 2011 but there are fuzy so let us go until 2012"

	"self query20112016"

	| builder |
	builder := self new
		fileNamed: 'rmod.bib';
		startingYear: 2012;
		endingYear: 2016;
		teamMembers: self teamFor20112016;
		keysOfBlackListedEntries: #(Stein12a Stein12b);
		setFilteringOn;
		yourself.
	builder filter.
	^ builder