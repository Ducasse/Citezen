testing
testMultiParticleName
	| authorString author |
	authorString := 'Théodule du Cellier de Lagrange'.
	author := (CZAuthorParser parse: authorString) first.
	self assert: author firstNames asArray = #('Théodule' ).
	self assert: author lastNames asArray = #('Cellier' 'de' 'Lagrange' ).
	self assert: author particles asArray = #('du' )