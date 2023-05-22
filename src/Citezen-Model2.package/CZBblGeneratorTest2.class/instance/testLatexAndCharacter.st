tests
testLatexAndCharacter
	"self debug: #testLatexAndCharacter"

	| result |
	result := ((self generatorClass new  fieldOrder: #(#author #title #chapter #journal #booktitle #volume #pages #publisher #school #year #url #doi #'hal-id'))visit: uqui2) contents.
	self assert: (self 
				isString: result withInternalLineEndings  
				equalsTo: '\bibitem[1]{dias:hal-01093496}\czauthors{M. Dias, V. Uquillas G\''{o}mez, D. Cassou and S. Ducasse},
\newblock  \cztitle{Software Integration Questions: A Quantitative Survey with \&}, 2014, \href{https://hal.inria.fr/hal-01093496}{[rmodUrl]}, \href{http://hal.inria.fr/hal-01093496}{\path{[hal:hal-01093496]}}


' withInternalLineEndings)
