as yet unclassified
condition: aCZEntry
	^ (aCZEntry hasField: #aeres)
		ifFalse: [ false ]
		ifTrue: [ #(ACL ACLN ASCL INV ACT COM AFF OS OV DO AP TH) includes: (aCZEntry at: #aeres) rawValue.]