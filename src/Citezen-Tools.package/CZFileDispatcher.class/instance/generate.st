action
generate
	
	| splitDict |
	splitDict := self dispatch.
	outputFilesDescription associationsDo: [:ass |
		CZBibTexGenerator new 
			filename: ass value;
			visitBibSet: (splitDict at: ass key)
			]