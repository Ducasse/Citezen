setUp
testAccents
	"self debug: #testAccents"

	| result |
	result := ((self generatorClass new  fieldOrder: #(#author #title #chapter #journal #booktitle #volume #pages #publisher #school #year #url #doi #'hal-id')) visit: uqui2) contents.
	
	self assert: (self isString: result  withInternalLineEndings equalsTo: '# V. Uquillas Gómez, D. Cassou and S. Ducassé,  ""Software Integration Questions: A Quantitative Survey with &"", 2014, *PDF>https://hal.inria.fr/hal-01093496*, hal-01093496
' withInternalLineEndings)