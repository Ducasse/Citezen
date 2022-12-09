running
setUp

	| entries |
	super setUp.
	
	entries := OrderedCollection new.
	
	entries add: ((CZEntry type: CZEntry article)
		key: #Duca10a;
		at: #author
			put: 'St\''ephane Ducasse and Damien Pollet';
		at: CZFieldPool title put: '';
		at: CZFieldPool journal
			put: 'Journal of Information System';
		at: CZFieldPool year put: '2010';
		yourself).
		
	entries add: ((CZEntry type: CZEntry article)
		key: #Duca11a;
		at: #author
			put: 'St\''ephane Ducasse and Damien Pollet';
		at: CZFieldPool title put: 'Fingerprints';
		at: CZFieldPool journal
			put: 'Journal of Information System';
		at: CZFieldPool year put: '';
		yourself).
		
	bibSet := CZSet new.
	bibSet setEntries: entries.
	