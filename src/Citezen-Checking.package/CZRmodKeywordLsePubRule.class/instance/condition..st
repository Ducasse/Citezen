as yet unclassified
condition: aCZEntry
	^ (aCZEntry hasField: #keyword)
		ifFalse: [ false ]
		ifTrue: [ '*lse-pub*' match: (aCZEntry at: #keyword) rawValue ]