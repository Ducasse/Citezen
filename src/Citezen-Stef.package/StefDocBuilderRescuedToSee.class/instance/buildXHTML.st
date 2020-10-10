as yet unclassified
buildXHTML
	"self new buildXHTML"

	| builder |
	builder := CZXHTMLDocBuilder new
		fileNamed: 'rmod.bib';
		authorMatchingString: self pattern;
		english; 
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
			  #url
			  #doi); "removed doi and url since they may contain _ and the generator does not handle that well for the moment."
		headerString: self xmlHeaderString;
		footerString: self xmlFooterString; 
		setFilteringOn.
	builder generate.	