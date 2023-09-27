layout
defaultLayout

	^SpBoxLayout newLeftToRight
		add: (SpBoxLayout newTopToBottom 
			add: #lblEntries expand: false ;
			add: #lstEntries ;
			yourself) ;
		add: (SpBoxLayout newTopToBottom 
			add: 'Selected Entry' expand: false ;
			add: #spEntry ;
			yourself ) ;
		yourself