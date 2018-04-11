as yet unclassified
condition: aCZEntry
	^ (aCZEntry hasField: #selectif)
		ifFalse: [ false ]
		ifTrue: [ #(non oui) includes: (aCZEntry at: #selectif) rawValue ]