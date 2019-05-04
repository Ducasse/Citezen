tests
testEntry
	| bibset entry |
	bibset := self bibParserClass
		parse:
			'
@article(foobar,
	Title = "Hello world",
	author = {Foo Bar},
	journal = foo,
	year = 2042
)
'.
	self assert: bibset macros isEmpty.
	entry := bibset entryAt: #foobar.
	self assert: entry type equals: CZEntry article.
	self assert: entry size equals: 4.
	self assert: entry title value equals: 'Hello world'