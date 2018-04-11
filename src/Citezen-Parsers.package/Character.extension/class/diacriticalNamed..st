*Citezen-Parsers
diacriticalNamed: aName
	"Answer a Character that represents the (non-spacing)
	diacritical character with the given name.  The list below
	is not complete, but covers the most common diacriticals.
	It will be expanded as needed."

	| names i |
	names := #(
"00"		grave acute circumflex tilde
			macron overscore breve dotAbove
			diaresis hookAbove ringAbove doubleAcute
			hacek verticalLineAbove doubleVerticalLineAbove doubleGrave
"10"		candrabindu invertedBreve turnedCommaAbove commaAbove
			nil nil nil nil
			nil nil nil horn
			nil nil nil nil
"20"		nil palatalizedHook retroflexHook nil
			nil nil nil cedilla
			ogonek nil nil nil
			nil nil nil nil
"30"		nil nil underscore nil
			nil shortBar nil shortSlash
			longSlash nil nil nil
			).
	i := names identityIndexOf: aName.
	i = 0
		ifTrue: [self error: (#errNoDiacritical << #dialogs >> 'No diacritical named: <1s>' expandMacrosWith: aName)]
		ifFalse: [^self value: 16r300 - 1 + i]