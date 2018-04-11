testing
testNewBblPhrase
	|result|
	renderer render: phrase for: entry.
	result := renderer contents.
	self assert: result = 'U!? 
\newblock K!? 
\newblock W| F...'