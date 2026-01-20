setup
setUp
	super setUp.
	entry := (CZArticle new)
		key: #Duca10a;
		author: 'St\''ephane Ducasse and Damien Pollet';
		title: 'Fingerprints';
		journal: 'Journal of Information System';
		year: '2010';
		yourself.
	entry2 := (CZInProceedings new )
		key: #Abde08a;
		author: 'Hani Abdeen and Ilham Alloui and St\''ephane Ducasse and Damien Pollet and Mathieu Suen';
		title:'Package Reference Fingerprint: a Rich and Compact Visualization to Understand Package Relationships';
		aeres: 'ACT';
		aeresstatus: 'aeres08';
		annote: 'internationalconference stefPub';
		booktitle:'European Conference on Software Maintenance and Reengineering (CSMR)';
		inria: 'ADAM';
		keywords: 'moose-pub';
		location: 'Athens, Greece';
		misc: 'Acceptance rate: 24/87 = 27\%';
		acceptTotal: 87;
		acceptNum: 24;
		pages: '213--222';
		publisher: 'IEEE Computer Society Press';
		rate: '27%';
		selectif: 'oui';
		url:'http://scg.unibe.ch/archive/external/Abde08a.pdf';
		year: 2008;
		bdskurl1:'http://scg.unibe.ch/archive/external/Abde08a.pdf'.
	
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