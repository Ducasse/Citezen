testing
testRenderWithDecorations
	phrase
		initiatorText: '[42] ';
		terminatorText: '.';
		separatorText: '; ';
		lastSeparatorText: ', '.
	renderer render: phrase for: entry.
	self assert: renderer contents = '[42] A; T; J, 4.'