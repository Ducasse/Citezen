as yet unclassified
buildLatex
	"self new buildLatex"
	
	| builder |
	builder := CZLaTeXDocBuilder new
		fileNamed: 'rmod.bib';
		authorMatchingString: self pattern;
		french; 
		fieldOrder: #(#author 
			  #title 
			  #journal 
			  #booktitle 
			  #volume 
			  #pages 
			  #publisher  
			  #year 
			  #school
			  #impactfactor 
			  #misc
			  #pdf); 
		headerString: self latexHeaderString; 
		setFilteringOn.
	builder generate.	