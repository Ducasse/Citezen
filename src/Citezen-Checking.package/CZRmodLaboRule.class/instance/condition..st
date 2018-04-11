as yet unclassified
condition: aCZentry
	^ (aCZentry hasField: #labo)
		ifFalse: [ false ]
		ifTrue: [ #(dans hors) includes: (aCZentry at: #labo) rawValue ]