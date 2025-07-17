as yet unclassified
toHtmlTable
	| table |
	
	table := IdentityDictionary new.
	table
		at: #acute put: [:charString | '&', charString,'acute;'];
		at: #grave put: [:charString | '&', charString,'grave;'];
		at: #circumflex put: [:charString | '&', charString, 'circ;'];
		at: #umlaut put: [:charString | '&', charString,'uml;'];
		at: #tilde put: [:charString | '&', charString,'tilde;'];

		at: #ccedilla put: '&ccedil;' ;
		at: #scedilla put: '&#351;' ;
		at: #tcedilla put: '&#355;' ;
		at: #inversedQuestionMark put: '&iquest;' ;
		at: #oe put: '&#339;' ;
		at: #ae put: '&aelig;' ;
		at: #ss put: '&szlig;' ;
		at: #smallRingedA put: '&aring;' ;
		at: #capitalRingedA put: '&Aring;' ;
		at: #smallSlashedO put: '&oslash;' ;
		at: #capitalSlashedO put: '&Oslash;' ;
		at: #nonBreakingSpace put: '&nbsp;' ;
		at: #iForm put: 'i';
		at: #jForm put: 'j';
		at: #barredL put: 'l';

		at: #circlea put: '&#229;';
		at: #nu put: '&#957;';
		at: #omega put: '&#969;';
		at: #pi put: '&#960;';
		at: #tau put: '&#964;';
		at: #neq put: '&#8800;';
		at: #wedge put: '&#1783;';

		at: #capitalBarredL put: 'L';
		at: #doubleSlash put: '\';
		at: #ampersand put: '&';
		at: #percent put: '%';
		at: #hash put: '#';
		at: #endash put: '&#8211;';
		at: #emdash put: '&#8212;'.
	conversionTable := table.
	^ table