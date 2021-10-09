setUp
setUp
	super setUp.
	bibset := CZSet new.
	entry := (CZEntry type: CZEntry article)
				key: #Duca10a;
				at: #author put: 'St\''ephane Ducasse and Damien Pollet';
				at: CZFieldPool title put: 'Fingerprints';
				at: CZFieldPool journal put: 'Journal of Information System';
				at: CZFieldPool year put: '2010';
				yourself.
	entry2 := (CZEntry type: CZEntry inproceedings)
				key: #Abde08a;
				at: #author put: 'Hani Abdeen and Ilham Alloui and St\''ephane Ducasse and Damien Pollet and Mathieu Suen';
				at: CZFieldPool title put: 'Package Reference Fingerprint: a Rich and Compact Visualization to Understand Package Relationships';
				at: #Aeres	 put: 'ACT';
 				at: #Aeresstatus   put:  'aeres08';
				at: #Annote       put:  'internationalconference stefPub';
 				at: CZFieldPool booktitle    put: 'European Conference on Software Maintenance and Reengineering (CSMR)';
  				at: #Inria	        put: 'ADAM';
  				at: #Keywords     put:  'moose-pub';
  				at: #Location     put: 'Athens, Greece';
  				at: #Misc	       put:  'Acceptance rate: 24/87 = 27\%';
  				at: #AcceptTotal  put:  87;
  				at: #AcceptNum    put:  24;
  				at: CZFieldPool pages	       put:  '213--222';
  				at: CZFieldPool publisher    put:  'IEEE Computer Society Press';
  				at: #Rate	       put:  '27%';
  				at: #Selectif     put:  'oui';
   				at: #Url	       put:  'http://scg.unibe.ch/archive/external/Abde08a.pdf';
   				at: CZFieldPool year	       put:  2008;
   				at: #'Bdsk-Url-1'  put: 'http://scg.unibe.ch/archive/external/Abde08a.pdf'.
	bibset addEntry: ((CZEntry type: CZEntry article)
					key: #Duca12a;
					at: #author put: 'St\''ephane Ducasse and Florence Ducasse';
					at: CZFieldPool title put: 'La maledication de la fille de la femme crocodile';
					at: CZFieldPool journal put: 'Journal of Hatred';
					at: CZFieldPool year put: '2012';
				yourself).
	bibset addEntry: ((CZEntry type: CZEntry book)
					key: #Duca10a;
					at: #author put: 'St\''ephane Ducasse';
					at: CZFieldPool title put: 'Botsinc: Learning programming in Squeak';
					at: CZFieldPool journal put: 'Apress';
					at: CZFieldPool year put: '2005';
				yourself).