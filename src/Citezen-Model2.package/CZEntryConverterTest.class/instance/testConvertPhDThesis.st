initialization
testConvertPhDThesis

|phdthesis|
	phdthesis := (CZEntryConverter new convert: phdthesisEntry ).
	self assert: phdthesis class equals: CZPhDThesis.
	self assert: phdthesis author equals: phdthesisEntry author.
	self assert: phdthesis keywords equals: phdthesisEntry keywords.
	self assert: phdthesis month equals: phdthesisEntry month.
	self assert: phdthesis publisher equals: phdthesisEntry publisher.
	self assert: phdthesis school equals: phdthesisEntry school.
	self assert: phdthesis title equals: phdthesisEntry title.
	self assert: phdthesis year equals: phdthesisEntry year.



	
	

	
	

	
	