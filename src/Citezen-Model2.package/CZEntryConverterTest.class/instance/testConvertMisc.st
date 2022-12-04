initialization
testConvertMisc 

|misc|
	misc := (CZEntryConverter new convert: miscEntry ).
	self assert: misc class equals: CZMisc.
	self assert: misc author equals: miscEntry author.
	self assert: misc title equals: miscEntry title.
	self assert: misc year equals: miscEntry year.
	

	
	

	
	