initialization
testConvertMastersThesis

| mastersthesis |

mastersthesis := (CZEntryConverter new convert: mastersthesisEntry).
	self assert: mastersthesis class equals: CZMastersThesis.
	self assert: mastersthesis author equals: mastersthesisEntry author.
	self assert: mastersthesis title equals: mastersthesisEntry title.
	self assert: mastersthesis year equals: mastersthesisEntry year.
	self assert: mastersthesis abstract equals: mastersthesisEntry abstract.
	self assert: mastersthesis annote equals: mastersthesisEntry annote.
	self assert: mastersthesis school equals: mastersthesisEntry school.



	
	

	
	

	
	