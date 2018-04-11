as yet unclassified
isWrittenByRModMember: aCZEntry
	| authorField |
	
	(aCZEntry hasField: #author) ifFalse: [ ^ false ].
	authorField := (aCZEntry at: #author) value.
	^ #('*ducasse*' '*pollet*' '*laval*') anySatisfy: [ :each | each match: authorField ]