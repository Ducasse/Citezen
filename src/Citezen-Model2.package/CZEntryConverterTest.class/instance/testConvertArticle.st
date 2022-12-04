initialization
testConvertArticle

	| article |
	article := (CZEntryConverter new convert: articleEntry).
	self assert: article class equals: CZArticle.
	self assert: article author equals: articleEntry author.
	self assert: article title equals: articleEntry title.
	self assert: article journal equals: articleEntry journal.
	self assert: article volume equals: articleEntry volume.
	self assert: article number equals: articleEntry number.
	self assert: article year equals: articleEntry year.
	self assert: article issn equals: articleEntry issn.
	self assert: article pages equals: articleEntry pages.
	self assert: article doi equals: articleEntry doi.
	self assert: article publisher equals: articleEntry publisher.
	self assert: article address equals: articleEntry address.
	
	
	
	

	
	
	

	
	

	
	