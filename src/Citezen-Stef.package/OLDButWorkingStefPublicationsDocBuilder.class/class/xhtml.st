generation
xhtml
	"self xhtml"
		
	|  builder|
	builder :=  self new
		english; 
		fileNamed: 'rmod.bib';
		setFilteringOn;
		yourself.
	builder generateXHTMLFile.
	builder generateBibtexFile.