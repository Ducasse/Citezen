layout
defaultLayout

	^SpBoxLayout newTopToBottom
		add: 'Author(s): ' expand: false ;
		add: (SpBoxLayout newLeftToRight
			add: #txtAuthors expand: true ;
			add: #txtYear width: ((self class defaultFont widthOfString: '9999') * 2) ;
			yourself)
		expand: false ;
		add: 'Title:'  expand: false ;
		add: #txtTitle expand: false ;
		add: (SpBoxLayout newLeftToRight
			add: (SpBoxLayout newTopToBottom
				add: 'Entry kind:' ;
				add: #txtKind ;
				yourself) ;
			add: (SpBoxLayout newTopToBottom
				add: 'Published in:' ;
				add: #txtVenue ;
				yourself) ;
			yourself)
		expand: false ;
		add: (SpBoxLayout newLeftToRight
			add: btnSave expand: false ;
			add: btnInspect expand: false ;
			yourself)
		expand: false ;
		yourself