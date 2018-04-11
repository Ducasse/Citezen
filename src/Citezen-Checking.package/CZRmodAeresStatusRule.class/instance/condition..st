as yet unclassified
condition: aCZEntry
	^ (aCZEntry hasField: #aeresstatus)
		ifFalse: [ false ]
		ifTrue: [ '*aeres*' match: (aCZEntry at: #aeresstatus) rawValue ]