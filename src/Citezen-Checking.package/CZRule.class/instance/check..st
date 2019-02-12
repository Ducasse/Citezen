as yet unclassified
check: aCZEntry
	(self preCondition: aCZEntry)
		ifFalse: [ ^ true ].
	^ (self condition: aCZEntry)
		ifFalse: [ self hasPostAction
				ifTrue: [ self postAction: aCZEntry. true ]
				ifFalse: [ false ] ]
		ifTrue: [ true ]