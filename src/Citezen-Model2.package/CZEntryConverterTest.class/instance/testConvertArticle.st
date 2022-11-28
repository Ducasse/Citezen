initialization
testConvertArticle

	| conv conv2|
	conv := (CZEntryConverter new convert: entry).
	self assert: conv class equals: CZArticle.
	self assert: conv author equals: entry author.
	self assert: conv title equals: entry title.
	self assert: conv journal equals: entry journal.
	self assert: conv volume equals: entry volume.
	self assert: conv number equals: entry number.
	
	conv2 := (CZEntryConverter new convert: entry2).
	self assert: conv2 class equals: CZTechReport.
	self assert: conv2 address equals: entry2 address.
	self assert: conv2 author equals: entry2 author.
	self assert: conv2 institution equals: entry2 institution.
	self assert: conv2 month equals: entry2 month.
	self assert: conv2 note equals: entry2 note.
	self assert: conv2 number equals: entry2 number.
	self assert: conv2 cztype equals: entry2 cztype.
	self assert: conv2 title equals: entry2 title.
	self assert: conv2 year equals: entry2 year.

	

	
	

	
	