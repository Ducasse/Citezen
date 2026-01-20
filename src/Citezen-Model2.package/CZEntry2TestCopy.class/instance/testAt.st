tests
testAt
	|article|
	article := CZEntryConverter new convert: entry.
	self assert: (entry at:#pages) class equals: CZField.
	"should work as <self assert: (entry at:#pages) class equals: CZArticle> "
	self assert: (entry at:#absent) class equals: CZUndefinedField.
	self assert: (entry at:#absent ifAbsent:'a pas') equals: 'a pas'.
	