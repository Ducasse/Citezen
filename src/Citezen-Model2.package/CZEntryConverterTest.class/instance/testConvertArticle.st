initialization
testConvertArticle

	| conv |
	conv := (CZEntryConverter new convert: entry).
	self assert: conv class equals: CZArticle.
	self assert: conv author equals: entry author.
	self assert: conv title equals: entry title.
	self assert: conv journal equals: entry journal.
	self assert: conv volume equals: entry volume.
	self assert: conv number equals: entry number.
	self assert: conv year equals: entry year.
	self assert: conv issn equals: entry issn.
	self assert: conv pages equals: entry pages.
	self assert: conv doi equals: entry doi.
	self assert: conv publisher equals: entry publisher.
	self assert: conv address equals: entry address.
	
	
	
	

	
	

	
	