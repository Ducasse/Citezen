tests
testEntryPhdGustafsson
	| bibset entry |
	bibset := self bibParserClass
		parse:
			'
	@phdthesis{Gust00a,
		Author = {Gustafsson, Jan},
		Keywords = {abstract interpretation, smalltalk, object-oriented, static analysis},
		Month = may,
		Publisher = {Department of Computer Engineering, M{"a}lardalen University, Box 883, S-721 23 V{"a}ster{\aa}s, Sweden, and 		Department of Computer Systems, Information Technology, Uppsala University, Box 325, S-751 05 Uppsala, Sweden},
		School = {M{"a}lardalen University, Sweden and Upssala University, Sweden},
		Title = {Analyzing Execution-Time of Object-Oriented Programs Using Abstract Interpretation},
		Year = {2000}
	}
'.
	entry := bibset entries first.
	self assert: entry type equals: CZEntry phdthesis.
	