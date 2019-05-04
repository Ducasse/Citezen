tests
testLongParticleName
	| authorString author |
	authorString := 'Charles Louis Xavier Joseph de la Vallée Poussin'.
	author := (self parserClass parse: authorString) first.
	self
		assert: author firstNames asArray
		equals: #('Charles' 'Louis' 'Xavier' 'Joseph').
	self assert: author lastNames asArray equals: #('Vallée' 'Poussin').
	self assert: author particles asArray equals: #('de' 'la')