*Citezen-Parsers
composeDiacritical: diacritical
	"Considering the receiver as a base character,
	answer the Character resulting from composing
	the receiver with the given diacritical (which must be
	a diacritical Character).

	Otherwise, answer nil. "

	| diaCode baseCode composedCode |
	diaCode := diacritical asInteger.
	baseCode := self asInteger.
	^(diaCode >= 16r300 
		and: [diaCode <= 16r340 
			and: [baseCode <= 255 
				and: [(composedCode := (self composedCharacters at: diaCode - 16r300 + 1) at: baseCode + 1) ~= 0]]])
		ifTrue: [Character value: composedCode]
		ifFalse: [nil]