tests
Booktest0
	^ CZBookEntry new
		key: #Booktest0;
		at: #author put: 'St\''ephane Ducasse and Damien Pollet';
		at: CZFieldPool title put: 'OOP';
		at: CZFieldPool publisher put: 'Publisher of Information System';
		at: CZFieldPool year put: '2018';
		yourself