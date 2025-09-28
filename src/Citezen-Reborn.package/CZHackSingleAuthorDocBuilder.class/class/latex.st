Bibtex
latex
	"self latex"
	
	| builder |
	builder := self new
		fileNamed: 'rmod.bib';
		toLatex;
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
			  #isbn); "removed doi and url since they may contain _ and the generator does not handle that well for the moment."
		setFilteringOn;
		yourself.
	builder generateLatexFile.
	