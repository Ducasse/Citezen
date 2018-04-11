enumerating
do: aBlock 
	| remainingSize |
	remainingSize := subphrases size.
	remainingSize > 0 
		ifTrue: 
			[self initiatorDo: aBlock.
			subphrases do: [:each | aBlock value: each]
				separatedBy: 
					[remainingSize := remainingSize - 1.
					remainingSize = 1 
						ifTrue: [self lastSeparatorDo: aBlock]
						ifFalse: [self separatorDo: aBlock]].
			self terminatorDo: aBlock]