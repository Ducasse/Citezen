generated
scan1X13
	currentCharacter == $^
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan1X5 ].
	currentCharacter == $b
		ifTrue:
			[ ^ self scan1X9 ].
	currentCharacter == $c
		ifTrue:
			[ ^ self scan1X1 ].
	currentCharacter == $n
		ifTrue:
			[ ^ self scan1X3 ].
	currentCharacter == $o
		ifTrue:
			[ ^ self scan1X2 ].
	currentCharacter == $p
		ifTrue:
			[ ^ self scan1X8 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan1X7 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan1X6 ].
	currentCharacter == $u
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $w
		ifTrue:
			[ ^ self scan1X4 ].
	^ self scan1X12