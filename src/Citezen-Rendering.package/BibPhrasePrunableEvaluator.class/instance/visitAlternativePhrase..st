visitor-double dispatch
visitAlternativePhrase: aPhrase 
	^ (aPhrase subPhraseFor: entry) ifNil: [true] ifNotNil: [false]