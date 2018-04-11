To build a latex document


| builder |
builder := self new
		fileNamed: 'rmod.bib';
		authorMatchingString: '*Ducasse*';
		french; 
		setFilteringOn.
	builder generate.	
		

