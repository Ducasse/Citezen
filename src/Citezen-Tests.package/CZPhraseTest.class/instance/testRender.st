testing
testRender
	renderer render: phrase for: entry.
	self assert: renderer contents = 'ATJ4'