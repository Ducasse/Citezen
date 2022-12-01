initialization
testConvertTechReport

| conv2 |

conv2 := (CZEntryConverter new convert: entry2).
	self assert: conv2 class equals: CZTechReport.
	self assert: conv2 author equals: entry2 author.
	self assert: conv2 annote equals: entry2 annote.
	self assert: conv2 inria equals: entry2 inria.
	self assert: conv2 institution equals: entry2 institution.
	self assert: conv2 title equals: entry2 title.
	self assert: conv2 year equals: entry2 year.
	self assert: conv2 keywords equals: entry2 keywords.
	self assert: conv2 url equals: entry2 url.
	
	

	
	

	
	