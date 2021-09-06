tests
testComposedName
	| authorString author |
	authorString := 'van den Papen, Wilfried Alfonse'.
	author := (self parserClass parse: authorString) first.
	self assert: author firstNames asArray equals: #('Wilfried' 'Alfonse').
	self
		assert: author lastNames asArray
		equals: #('Papen').
	self assert: author particles asArray equals: #('van' 'den')