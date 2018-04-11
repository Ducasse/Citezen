as yet unclassified
condition: aCZEntry
	^ (aCZEntry key size = 7)
		ifFalse: [ false ]
		ifTrue: [ 
			| ret |
			ret := true.
			1 to: 4 do: [ :cpt | (aCZEntry key at: cpt) isLetter ifFalse: [ ret := false ] ].
			5 to: 6 do: [ :cpt | (aCZEntry key at: cpt) isDigit ifFalse: [ ret := false] ].
			(aCZEntry key at: 7) isLetter ifFalse: [ ret := false ].
			ret ]