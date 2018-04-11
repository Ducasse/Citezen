as yet unclassified
build

	| builder |
	builder :=  self new
		french; 
		fileNamed: 'rmod.bib';
		setFilteringOn;
		yourself.
	builder generate.
	"builder generateBibtexFile."