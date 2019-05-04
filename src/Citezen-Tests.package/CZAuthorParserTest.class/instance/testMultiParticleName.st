tests
testMultiParticleName
	| authorString author |
	authorString := 'Théodule du Cellier de Lagrange'.
	author := (self parserClass parse: authorString) first.
	self assert: author firstNames asArray equals: #('Théodule').
	self
		assert: author lastNames asArray
		equals: #('Cellier' 'de' 'Lagrange').
	self assert: author particles asArray equals: #('du')