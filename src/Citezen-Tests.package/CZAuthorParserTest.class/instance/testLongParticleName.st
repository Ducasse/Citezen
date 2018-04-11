testing
testLongParticleName
	| authorString author |
	authorString := 'Charles Louis Xavier Joseph de la Vallée Poussin'.
	author := (CZAuthorParser parse: authorString) first.
	self 
		assert: author firstNames asArray = #('Charles' 'Louis' 'Xavier' 'Joseph' ).
	self assert: author lastNames asArray = #('Vallée' 'Poussin' ).
	self assert: author particles asArray = #('de' 'la' )