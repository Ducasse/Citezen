enumerating
do: aBlock for: anEntry
	| remainingSize actualSubphrases |
	actualSubphrases := subphrases reject: [:each |
		BibPhrasePrunableEvaluator new entry: anEntry; visit: each ].
	remainingSize := actualSubphrases size.
	remainingSize > 0 
		ifTrue: 
			[self initiatorDo: aBlock.
			actualSubphrases do: [:each | aBlock value: each]
				separatedBy: 
					[remainingSize := remainingSize - 1.
					remainingSize = 1 
						ifTrue: [self lastSeparatorDo: aBlock]
						ifFalse: [self separatorDo: aBlock]].
			self terminatorDo: aBlock]