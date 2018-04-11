generated-scanner
scanForToken
	self recordMatch: #whitespace.
	self step.
	(currentCharacter = $!
		or: [ 
			currentCharacter = $$
				or: [ 
					currentCharacter = $&
						or: [ 
							(currentCharacter between: $* and: $+)
								or: [ 
									(currentCharacter between: $- and: $/)
										or: [ 
											(currentCharacter between: $: and: $<)
												or: [ 
													(currentCharacter between: $> and: $?)
														or: [ (currentCharacter between: $A and: $[) or: [ (currentCharacter between: $] and: $z) or: [ currentCharacter = $| ] ] ] ] ] ] ] ] ])
		ifTrue: [ 
			[ 
			self recordMatch: #(8).
			self step.
			currentCharacter = $!
				or: [ 
					currentCharacter = $$
						or: [ 
							currentCharacter = $&
								or: [ 
									(currentCharacter between: $* and: $+)
										or: [ 
											(currentCharacter between: $- and: $<)
												or: [ 
													(currentCharacter between: $> and: $?)
														or: [ (currentCharacter between: $A and: $[) or: [ (currentCharacter between: $] and: $z) or: [ currentCharacter = $| ] ] ] ] ] ] ] ] ]
				whileTrue.
			^ self reportLastMatch ].
	(currentCharacter between: $0 and: $9)
		ifTrue: [ 
			[ 
			self recordMatch: #(7 8).
			self step.
			(currentCharacter = $!
				or: [ 
					currentCharacter = $$
						or: [ 
							currentCharacter = $&
								or: [ 
									(currentCharacter between: $* and: $+)
										or: [ 
											(currentCharacter between: $- and: $/)
												or: [ 
													(currentCharacter between: $: and: $<)
														or: [ 
															(currentCharacter between: $> and: $?)
																or: [ (currentCharacter between: $A and: $[) or: [ (currentCharacter between: $] and: $z) or: [ currentCharacter = $| ] ] ] ] ] ] ] ] ])
				ifTrue: [ 
					[ 
					self recordMatch: #(8).
					self step.
					currentCharacter = $!
						or: [ 
							currentCharacter = $$
								or: [ 
									currentCharacter = $&
										or: [ 
											(currentCharacter between: $* and: $+)
												or: [ 
													(currentCharacter between: $- and: $<)
														or: [ 
															(currentCharacter between: $> and: $?)
																or: [ (currentCharacter between: $A and: $[) or: [ (currentCharacter between: $] and: $z) or: [ currentCharacter = $| ] ] ] ] ] ] ] ] ]
						whileTrue.
					^ self reportLastMatch ].
			currentCharacter between: $0 and: $9 ] whileTrue.
			^ self reportLastMatch ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter = Character cr or: [ currentCharacter = Character space ] ])
		ifTrue: [ 
			[ 
			self recordMatch: #whitespace.
			self step.
			(currentCharacter between: Character tab and: Character lf)
				or: [ currentCharacter = Character cr or: [ currentCharacter = Character space ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter = $"
		ifTrue: [ 
			[ 
			self step.
			currentCharacter ~= $" ] whileTrue.
			currentCharacter = $"
				ifTrue: [ ^ self recordAndReportMatch: #(9) ].
			^ self reportLastMatch ].
	currentCharacter = $#
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter = $%
		ifTrue: [ 
			[ 
			self recordMatch: #comment.
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage) or: [ currentCharacter >= (Character value: 14) ] ] ]
				whileTrue.
			^ self reportLastMatch ].
	currentCharacter = $(
		ifTrue: [ ^ self recordAndReportMatch: #parenthesizedString ].
	currentCharacter = $,
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter = $=
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter = $@
		ifTrue: [ ^ self scan1 ].
	currentCharacter = ${
		ifTrue: [ ^ self recordAndReportMatch: #bracedString ].
	^ self reportLastMatch