initialization
setUp 

	entry := (CZBibParser
		parse:
			'	@article{Herm00a,
 author = {Herman, Ivan and Melan\c{c}on, Guy and Marshall, M. Scott},
 title = {Graph Visualization and Navigation in Information Visualization: A Survey},
 journal = {IEEE Transactions on Visualization and Computer Graphics},
 volume = {6},
 number = {1},
 year = {2000},
 issn = {1077-2626},
 pages = {24--43},
 doi = {10.1109/2945.841119},
 publisher = {IEEE Educational Activities Department},
 address = {Piscataway, NJ, USA}
 }') entries first.

	entry2 := (CZBibParser
		parse:
			'	
@techreport{Dias14b,
	Annote = {technicalReport},
	Author = {Mart\''in Dias and Uquillas G\''{o}mez, Ver\''onica  and Damien Cassou and St\''ephane Ducasse},
	Inria = {RMOD},
	Institution = {INRIA Lille},
	Keywords = {lse-pub},
	Title = {Software Integration Questions: A Quantitative Survey with \&},
	Url = {https://hal.inria.fr/hal-01093496},
	Year = {2014}}
') entries first.
