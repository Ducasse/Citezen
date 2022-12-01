initialization
testConvertInProceedings

| conv3 |

	conv3 := (CZEntryConverter new convert: entry3).
	self assert: conv3 class equals: CZInProceedings .
	self assert: conv3 author equals: entry3 author.
	self assert: conv3 title equals: entry3 title.
	self assert: conv3 booktitle equals: entry3 booktitle.
	self assert: conv3 publisher equals: entry3 publisher.
	self assert: conv3 month equals: entry3 month.
	self assert: conv3 year equals: entry3 year.
	self assert: conv3 keywords equals: entry3 keywords.
	self assert: conv3 annote equals: entry3 annote.


	
	

	
	

	
	