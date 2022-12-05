initialization
testConvertBook

	| book  |
	book := (CZEntryConverter new convert: bookEntry).
	self assert: book class equals: CZBook2.
	self assert: book author equals: bookEntry author.
	self assert: book title equals: bookEntry title.
	self assert: book journal equals: bookEntry journal.
	self assert: book year equals: bookEntry year.

	
	
	
	

	
	

	
	