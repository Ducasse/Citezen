setUp
setUp 

	super setUp.
	uqui2 := (CZBibParser
		parse:
			'	
@techreport{Dias14b,
	Annote = {technicalReport},
	Author = {Uquillas G\''{o}mez, Ver\''onica  and Damien Cassou and St\''ephane Ducass\''e},
	hal-id = {hal-01093496},
	Inria = {RMOD},
	Institution = {INRIA Lille},
	Keywords = {lse-pub},
	Title = {Software Integration Questions: A Quantitative Survey with \&},
	pdf = {http://rmod-files/Team/Papers/foo.pdf },
	hal-url = {https://hal.inria.fr/hal-01093496},
	Year = {2014}}
') entries at: 1.
