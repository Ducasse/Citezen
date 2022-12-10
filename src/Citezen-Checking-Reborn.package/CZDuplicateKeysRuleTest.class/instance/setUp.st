initialization
setUp

	| entries |
	super setUp.
	
	entries := OrderedCollection new.
	
	entries add: ((CZEntry type: CZEntry article)
		key: #Duca10a;
		yourself).
		
	entries add: ((CZEntry type: CZEntry inproceedings)
		key: #Abde08a;
		yourself).
		
	entries add: ((CZEntry type: CZEntry article)
		key: #Abde08a;
		yourself).
		
	entries add: ((CZEntry type: CZEntry inproceedings)
		key: #Abde08;
		yourself).
	
	entries add: ((CZEntry type: CZEntry inproceedings)
		key: #Duca10a;
		yourself).
		
	bibSet := CZSet new.
	bibSet setEntries: entries.
	