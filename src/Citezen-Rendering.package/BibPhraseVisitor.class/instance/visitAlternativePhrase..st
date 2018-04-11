visiting-phrases
visitAlternativePhrase: aPhrase 
	"walk everywhere by default"
	^ aPhrase do: [:each | self visit: each]