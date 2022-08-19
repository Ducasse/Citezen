setup
testLatexAndCharacter
	"self debug: #testLatexAndCharacter"

	| result |
	result := (CZLaTeXGenerator new visit: uqui2) contents.
	self assert: result  equals: '
	\pub  \czauthors{Mart\''in Dias, Ver\''onica Uquillas G\''{o}mez, Damien Cassou and St\''ephane Ducasse},  \cztitle{Software Integration Questions: A Quantitative Survey with \&}, 2014, https://hal.inria.fr/hal-01093496.
' 