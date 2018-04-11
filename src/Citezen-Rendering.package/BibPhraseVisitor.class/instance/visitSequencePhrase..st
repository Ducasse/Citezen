visiting-phrases
visitSequencePhrase: aPhrase
	^ aPhrase do: [:each | self visit: each]