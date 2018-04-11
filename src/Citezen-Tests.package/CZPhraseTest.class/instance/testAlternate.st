testing
testAlternate
	phrase add:
		(BibAlternativePhrase new
			add: (BibLiteralPhrase text: 'foo')
			condition: [:anEntry | anEntry hasField: #bar]).
	renderer render: phrase for: entry.
	self assert: renderer contents = 'ATJ4'.
	entry at: #bar put: #whatever.
	renderer render: phrase for: entry.
	self assert: renderer contents = 'ATJ4ATJ4foo'