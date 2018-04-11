tests
testEntry
	| bibset entry |
	bibset := CZBibParser 
				parse: '
@article(foobar,
	Title = "Hello world",
	author = {Foo Bar},
	journal = foo,
	year = 2042
)
'.
	self assert: bibset macros isEmpty.
	entry := bibset entryAt: #foobar.
	self assert: entry type =  CZEntry article.
	self assert: entry size = 4.
	self assert: (entry title) value = 'Hello world'