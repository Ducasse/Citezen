initialization
setUp 

	articleEntry := (CZBibParser
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

	techreportEntry := (CZBibParser
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

 inproceedingsEntry := (CZBibParser parse: 
' @inproceedings{Robb10a,
	Author = {Robbes, Romain and Pollet, Damien and Lanza, Michele},
	Title = {Replaying IDE Interactions to Evaluate and Improve Change Prediction Approaches},
	Booktitle = {7th IEEE Working Conference on Mining Software Repositories (MSR)},
	Publisher = {IEEE Computer Society},
	Month = may,
	Year = {2010},
	keywords = {lse-pub},
	annote       = {internationalconference},
	misc = {Acceptance rate: 16/51 = 31.4\%}
}
') entries first.

unpublishedEntry := (CZBibParser parse:
			'	@unpublished{testUnpublished,
	Author = {Barreau, Adrien},
	Title = {Entry test for citezen},
	Pages = {1},
	Year = 2007,
	Annotation = macro # "macro",
	Note = macro}
	') entries first.
	
mastersthesisEntry := (CZBibParser parse: 
	'@mastersthesis{Peirs08a,
  author       = {Romain Peirs},
  title	       = {Enhanced Dependency Structure Matrix},
  year	       = {2008},
  abstract     = {Dependency Structure Matrix (DSM) is an approach taken from
                  process optimization and it exists a variety of algorithms
                  to help organizing the matrix in a form that reflects the
                  architecture and highlights patterns and problematic
                  dependencies. However, the existing DSM implementations have
                  a lack of information in their visualization. That is why, we
                  enhanced DSM by adding written and colored information in the
                  visualization to improve the architecture understanding of a
                  software system and the support of its remodularization. This
                  visualization has been implemented on top of Moose which is a
                  collaborative research platform for Software Analysis and
                  Information Visualization. This report presents my
                  internship done at the research centre INRIA Lille - Nord
                  Europe with the RMoD Team led by S. Ducasse.},
  annote       = {master cook},
  school       = {Enseita}
 }')  entries first.

miscEntry := 	(CZBibParser parse: ' @misc { m1,
		author = {Toto, Robert},
		title = {title4},
		year = 2000
	}') entries first.
	
phdthesisEntry := (CZBibParser parse: '	@phdthesis{Gust00a,
		Author = {Gustafsson, Jan},
		Keywords = {abstract interpretation, smalltalk, object-oriented, static analysis},
		Month = may,
		Publisher = {Department of Computer Engineering, M{"a}lardalen University, Box 883, S-721 23 V{"a}ster{\aa}s, Sweden, and 		Department of Computer Systems, Information Technology, Uppsala University, Box 325, S-751 05 Uppsala, Sweden},
		School = {M{"a}lardalen University, Sweden and Upssala University, Sweden},
		Title = {Analyzing Execution-Time of Object-Oriented Programs Using Abstract Interpretation},
		Year = {2000}
	}') entries first.

bookEntry:= (CZBibParser parse: '	@book{Duca10a,
					author= {Stephane Ducasse},
					title= {Botsinc: Learning programming in Squeak},
					journal= {Apress},
					year= {2005}}') entries first.