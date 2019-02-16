setup
testLatexAndCharacter
	"self debug: #testLatexAndCharacter"

	| result |
	result := (CZLaTeXGenerator new visit: uqui2) contents.
	self
		assert:
			(self isString: result equalsTo:
 '
	\pub  \czauthors{Mart\''in Dias and Uquillas G\''{o}mez, Ver\''onica  and Damien Cassou and St\''ephane Ducasse},  \cztitle{Software Integration Questions: A Quantitative Survey with \&}, 2014, https://hal.inria.fr/hal-01093496, technicalReport, hal-01093496, RMOD, INRIA Lille, lse-pub.
')