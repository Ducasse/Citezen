generated-scanner
scanForToken
	self step.
	(currentCharacter <= $#
		or: [ 
			(currentCharacter between: $% and: $,)
				or: [ 
					(currentCharacter between: $. and: $>)
						or: [ 
							currentCharacter = $@
								or: [ 
									currentCharacter = $[
										or: [ (currentCharacter between: $] and: $`) or: [ currentCharacter = $| or: [ currentCharacter >= $ ] ] ] ] ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	((currentCharacter between: $A and: $Z) or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter = $$
		ifTrue: [ ^ self recordAndReportMatch: #(4 7) ].
	currentCharacter = $-
		ifTrue: [ 
			self recordMatch: #(4).
			self step.
			currentCharacter = $-
				ifTrue: [ 
					self recordMatch: #(8).
					self step.
					currentCharacter = $-
						ifTrue: [ ^ self recordAndReportMatch: #(9) ].
					^ self reportLastMatch ].
			^ self reportLastMatch ].
	currentCharacter = $?
		ifTrue: [ 
			self recordMatch: #(4).
			self step.
			currentCharacter = $'
				ifTrue: [ ^ self recordAndReportMatch: #(23) ].
			^ self reportLastMatch ].
	currentCharacter = $\
		ifTrue: [ ^ self scan1 ].
	currentCharacter = ${
		ifTrue: [ ^ self recordAndReportMatch: #(2 4) ].
	currentCharacter = $}
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter = $~
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	^ self reportLastMatch