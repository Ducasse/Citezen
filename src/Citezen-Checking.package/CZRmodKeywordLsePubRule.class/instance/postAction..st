as yet unclassified
postAction: aCZEntry
	(aCZEntry at: #keyword) isUndefined 
		ifTrue: [ aCZEntry at: #keyword put: 'lse-pub' ]
		ifFalse: [ aCZEntry at: #keyword put: (aCZEntry at: #keyword) value, ' lse-pub' ]