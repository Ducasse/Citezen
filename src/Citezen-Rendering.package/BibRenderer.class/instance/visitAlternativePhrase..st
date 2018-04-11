visiting-phrases
visitAlternativePhrase: aPhrase
	^ aPhrase do: [:each | self visit: each] for: currentEntry