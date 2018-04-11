testing
testRenderWithMissingField
	phrase add: (BibFieldRef field: #month).
	renderer render: phrase for: entry.
	self assert: renderer contents = 'ATJ4'