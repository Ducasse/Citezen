setUp
setUp
	super setUp.
	bibset := CZSet new.
	entry := (CZArticle new)
				key: #Duca10a;
				author: 'St\''ephane Ducasse and Damien Pollet';
				title: 'Fingerprints';
				journal: 'Journal of Information System';
				year: '2010';
				yourself.
	entry2 := (CZInProceedings new)
				key: #Abde08a;
				author: 'Hani Abdeen and Ilham Alloui and St\''ephane Ducasse and Damien Pollet and Mathieu Suen';
				title: 'Package Reference Fingerprint: a Rich and Compact Visualization to Understand Package Relationships';
				aeres: 'ACT';
 				aeresstatus:  'aeres08';
				annote:  'internationalconference stefPub';
 				booktitle: 'European Conference on Software Maintenance and Reengineering (CSMR)';
  				inria: 'ADAM';
  				keywords:  'moose-pub';
  				location: 'Athens, Greece';
  				misc:  'Acceptance rate: 24/87 = 27\%';
  				acceptTotal:  87;
  				acceptNum:  24;
  				pages:  '213--222';
  				publisher:  'IEEE Computer Society Press';
  				rate:  '27%';
  				selectif:  'oui';
   				url:  'http://scg.unibe.ch/archive/external/Abde08a.pdf';
   				year:  2008;
   				bdskurl1: 'http://scg.unibe.ch/archive/external/Abde08a.pdf'.
	bibset addEntry: ((CZArticle new)
					key: #Duca12a;
					author: 'St\''ephane Ducasse and Florence Ducasse';
					title: 'La maledication de la fille de la femme crocodile';
					journal: 'Journal of Hatred';
					year: '2012';
				yourself).
	bibset addEntry: ((CZBook new)
					key: #Duca10a;
					author: 'St\''ephane Ducasse';
					title: 'Botsinc: Learning programming in Squeak';
					journal: 'Apress';
					year: '2005';
				yourself).