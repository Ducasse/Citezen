Bibtex
bibtex
	"self bibtex"
	| builder|
	builder := self new
		fileNamed: 'rmod.bib';
		setFilteringOn;
		yourself.
	builder generateBibtexFile