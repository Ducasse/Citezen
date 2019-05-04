tests (todo)
testBibEntryWithNoSpace

	 | bibset |
bibset := self bibParserClass parse: '@article{foobar,
title="HeY!",
author={Théodule du Cellier de Lagrange},
journal=foo,
year=2042}'.
	self assert: bibset entries first type equals: #article