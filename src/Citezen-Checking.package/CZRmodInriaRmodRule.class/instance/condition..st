conditions
condition: aCZEntry
	^ (aCZEntry hasField: #inria)
		ifFalse: [ false ]
		ifTrue: [ (aCZEntry at: #inria) rawValue = 'RMOD' ]