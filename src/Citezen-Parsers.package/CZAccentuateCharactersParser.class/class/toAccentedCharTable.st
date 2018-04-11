as yet unclassified
toAccentedCharTable
	| table |
	
	table := IdentityDictionary new.
	table
		at: #acute put: [:charString | String with: (charString first composeDiacritical: (Character diacriticalNamed: #acute)) ];
		at: #grave put: [:charString | String with: (charString first composeDiacritical: (Character diacriticalNamed: #grave)) ];
		at: #circumflex put: [:charString | String with: (charString first composeDiacritical: (Character diacriticalNamed: #circumflex))];
		at: #umlaut put: [:charString | String with: (charString first composeDiacritical: (Character diacriticalNamed: #diaresis))];
		at: #tilde put: [:charString | String with: (charString first composeDiacritical: (Character diacriticalNamed: #tilde))];

		at: #ccedilla put: (String with: ($c composeDiacritical: (Character diacriticalNamed: #cedilla))) ;
		at: #scedilla put: (String with: ($s composeDiacritical: (Character diacriticalNamed: #cedilla))) ;
		at: #tcedilla put: (String with: ($t composeDiacritical: (Character diacriticalNamed: #cedilla))) ;
		at: #oe put: (Character value: 339) ;
		at: #ae put: (Character value: 230) ;
		at: #ss put: 'ss' ;
		at: #smallRingedA put: (String with: ($a composeDiacritical: (Character diacriticalNamed: #ringAbove))) ;
		at: #capitalRingedA put: (String with: ($A composeDiacritical: (Character diacriticalNamed: #ringAbove))) ;
		at: #smallSlashedO put: '&oslash;' ;
		at: #capitalSlashedO put: '&Oslash;' ;
		at: #nonBreakingSpace put: ' ' ;
		at: #iForm put: 'i';
		at: #jForm put: 'j';
		at: #barredL put: 'l' ;

		at: #circlea put: 'a';
		at: #nu put: '&#957;';
		at: #omega put: '&#969;';
		at: #pi put: '&#960;';
		at: #tau put: '&#964;';
		at: #neq put: '&#8800;';
		at: #wedge put: '&#1783;' ;

		at: #capitalBarredL put: 'L';
		at: #doubleSlash put: '\';
		at: #ampersand put: '&';
		at: #percent put: '%';
		at: #hash put: '#'	;
		at: #endash put: '--'	"	;
		at: #emdash put: '&#8212'	"
	.
	^ table