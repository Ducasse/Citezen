setup
setUp
	entry := (CZBibParser parse: CZTestResource bibTest) entries at: 1.
	duplicateEntry := (CZBibParser parse: CZTestResource bibTest) entries at: 1.
	articleEntry := CZBibParser
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
 }'.
	inproceedingsEntry := (CZBibParser
		parse:
			'	
@inproceedings{Nier04d,
  Abstract     = {In this paper we briefly review various kinds of
                  software changes and the issues that arise from
                  them. As a consequence, we propose research into
                  programming languages with explicit support for
                  representing first-class changes, and for
                  manipulating and merging multiple viewpoints of
                  evolving software systems.},
  Annote       = {internationalworkshop},
  Author       = {Oscar Nierstrasz and Marcus Denker},
  Booktitle    = {OOPSLA Workshop on Revival of Dynamic Languages},
  Cvs	       = {RDLchange},
  Keywords     = {snf05 scg-pub skip-doi jb05 pharo fromscgbib},
  Month	       = oct,
  Title	       = {Supporting Software Change in the Programming
                  Language},
  Url	       =
                  {http://rmod.lille.inria.fr/archives/workshops/Nier04d-RDL04-Change.pdf},
  Year	       = {2004}
}') entries at: 1.
	masterEntry := (CZBibParser
		parse:
			'	
@mastersthesis{Peirs08a,
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
 }') entries at: 1.
	dirty := (CZEntry type: CZEntry inproceedings)
		key: #Abde08a;
		at: #author
			put: 'Hani Abdeen and Ilham Alloui and St\''ephane Ducasse and Damien Pollet and Mathieu Suen';
		at: #title
			put:
			'Package Reference Fingerprint: a Rich and Compact Visualization to Understand Package Relationships';
		at: #Aeres put: 'ACT';
		at: #'Hal-ID' put: 'hal-01344842}';
		at: #Aeresstatus put: 'aeres08';
		at: #Annote put: 'internationalconference stefPub';
		at: #Booktitle
			put: 'European Conference on Software Maintenance and Reengineering (CSMR)';
		at: #Inria put: 'ADAM';
		at: #Keywords put: 'moose-pub';
		at: #Location put: 'Athens, Greece';
		at: #Misc put: 'Acceptance rate: 24/87 = 27\%';
		at: #AcceptTotal put: 87;
		at: #AcceptNum put: 24;
		at: #Pages put: '213--222';
		at: #Publisher put: 'IEEE Computer Society Press';
		at: #Rate put: '27%';
		at: #Selectif put: 'oui';
		at: #Url put: 'http://scg.unibe.ch/archive/external/Abde08a.pdf';
		at: #Year put: 2008;
		at: #'Bdsk-Url-1' put: 'http://scg.unibe.ch/archive/external/Abde08a.pdf';
		at: #'Date-Added' put: '{2009-10-20 14:54:13 +0200}';
		at: #'Date-Modified' put: '{2009-10-20 15:05:13 +0200}'.
	uqui := (CZBibParser
		parse:
			'	
@techreport{Dias14b,
	Annote = {technicalReport},
	Author = {Mart\''in Dias and Uquillas Gomez, Ver\''onica  and Damien Cassou and St\''ephane Ducasse},
	Hal-Id = {hal-01093496},
	Inria = {RMOD},
	Institution = {INRIA Lille},
	Keywords = {lse-pub},
	Title = {Software Integration Questions: A Quantitative Survey},
	Url = {https://hal.inria.fr/hal-01093496},
	Year = {2014}}
') entries at: 1.
	uqui2 := (CZBibParser
		parse:
			'	
@techreport{Dias14b,
	Annote = {technicalReport},
	Author = {Mart\''in Dias and Uquillas G\''{o}mez, Ver\''onica  and Damien Cassou and St\''ephane Ducasse},
	Hal-Id = {hal-01093496},
	Inria = {RMOD},
	Institution = {INRIA Lille},
	Keywords = {lse-pub},
	Title = {Software Integration Questions: A Quantitative Survey with \&},
	Url = {https://hal.inria.fr/hal-01093496},
	Year = {2014}}
') entries at: 1