visitor-double dispatch
visitSequencePhrase: aPhrase 
	^ aPhrase subphrases allSatisfy: [:each | self visit: each]