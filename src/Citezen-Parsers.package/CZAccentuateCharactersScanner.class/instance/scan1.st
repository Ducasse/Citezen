generated-scanner
scan1
	self step.
	(currentCharacter <= Character lf
		or: [ 
			(currentCharacter between: Character newPage and: $!)
				or: [ 
					(currentCharacter between: $# and: $&)
						or: [ 
							(currentCharacter between: $( and: $-)
								or: [ 
									(currentCharacter between: $0 and: $<)
										or: [ 
											(currentCharacter between: $> and: $@)
												or: [ 
													(currentCharacter between: $B and: $G)
														or: [ 
															(currentCharacter between: $I and: $])
																or: [ 
																	currentCharacter = $_
																		or: [ 
																			(currentCharacter between: $d and: $m)
																				or: [ 
																					(currentCharacter between: $q and: $r)
																						or: [ currentCharacter = $v or: [ (currentCharacter between: $x and: $}) or: [ currentCharacter >= $ ] ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter = $"
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter = $'
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	currentCharacter = $.
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter = $/
		ifTrue: [ 
			self recordMatch: #(6).
			self step.
			currentCharacter = $o
				ifTrue: [ ^ self recordAndReportMatch: #(29) ].
			^ self reportLastMatch ].
	currentCharacter = $=
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter = $A
		ifTrue: [ 
			self recordMatch: #(6).
			self step.
			currentCharacter = $A
				ifTrue: [ ^ self recordAndReportMatch: #(28) ].
			^ self reportLastMatch ].
	currentCharacter = $H
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	currentCharacter = $^
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter = $`
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	currentCharacter = $a
		ifTrue: [ 
			self recordMatch: #(6).
			self step.
			currentCharacter = $a
				ifTrue: [ ^ self recordAndReportMatch: #(27) ].
			currentCharacter = $e
				ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			^ self reportLastMatch ].
	currentCharacter = $b
		ifTrue: [ 
			self recordMatch: #(6).
			self step.
			currentCharacter = Character space
				ifTrue: [ ^ self recordAndReportMatch: #(47) ].
			^ self reportLastMatch ].
	currentCharacter = $c
		ifTrue: [ 
			self recordMatch: #(6).
			self step.
			currentCharacter = Character space
				ifTrue: [ 
					self step.
					currentCharacter = $c
						ifTrue: [ ^ self recordAndReportMatch: #(20) ].
					currentCharacter = $s
						ifTrue: [ ^ self recordAndReportMatch: #(21) ].
					currentCharacter = $t
						ifTrue: [ ^ self recordAndReportMatch: #(22) ].
					^ self reportLastMatch ].
			currentCharacter = ${
				ifTrue: [ 
					self step.
					currentCharacter = $c
						ifTrue: [ 
							self step.
							currentCharacter = $}
								ifTrue: [ ^ self recordAndReportMatch: #(20) ].
							^ self reportLastMatch ].
					currentCharacter = $s
						ifTrue: [ 
							self step.
							currentCharacter = $}
								ifTrue: [ ^ self recordAndReportMatch: #(21) ].
							^ self reportLastMatch ].
					currentCharacter = $t
						ifTrue: [ 
							self step.
							currentCharacter = $}
								ifTrue: [ ^ self recordAndReportMatch: #(22) ].
							^ self reportLastMatch ].
					^ self reportLastMatch ].
			^ self reportLastMatch ].
	currentCharacter = $n
		ifTrue: [ 
			self recordMatch: #(6).
			self step.
			currentCharacter = $e
				ifTrue: [ 
					self step.
					currentCharacter = $q
						ifTrue: [ ^ self recordAndReportMatch: #(45) ].
					^ self reportLastMatch ].
			currentCharacter = $u
				ifTrue: [ ^ self recordAndReportMatch: #(41) ].
			^ self reportLastMatch ].
	currentCharacter = $o
		ifTrue: [ 
			self recordMatch: #(6).
			self step.
			currentCharacter = $a
				ifTrue: [ ^ self recordAndReportMatch: #(40) ].
			currentCharacter = $e
				ifTrue: [ ^ self recordAndReportMatch: #(24) ].
			currentCharacter = $m
				ifTrue: [ 
					self step.
					currentCharacter = $e
						ifTrue: [ 
							self step.
							currentCharacter = $g
								ifTrue: [ 
									self step.
									currentCharacter = $a
										ifTrue: [ ^ self recordAndReportMatch: #(44) ].
									^ self reportLastMatch ].
							^ self reportLastMatch ].
					^ self reportLastMatch ].
			^ self reportLastMatch ].
	currentCharacter = $p
		ifTrue: [ 
			self recordMatch: #(6).
			self step.
			currentCharacter = $i
				ifTrue: [ ^ self recordAndReportMatch: #(42) ].
			^ self reportLastMatch ].
	currentCharacter = $s
		ifTrue: [ 
			self recordMatch: #(6).
			self step.
			currentCharacter = $s
				ifTrue: [ ^ self recordAndReportMatch: #(26) ].
			^ self reportLastMatch ].
	currentCharacter = $t
		ifTrue: [ 
			self recordMatch: #(6).
			self step.
			currentCharacter = $a
				ifTrue: [ 
					self step.
					currentCharacter = $u
						ifTrue: [ ^ self recordAndReportMatch: #(43) ].
					^ self reportLastMatch ].
			^ self reportLastMatch ].
	currentCharacter = $u
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter = $w
		ifTrue: [ 
			self recordMatch: #(6).
			self step.
			currentCharacter = $e
				ifTrue: [ 
					self step.
					currentCharacter = $d
						ifTrue: [ 
							self step.
							currentCharacter = $g
								ifTrue: [ 
									self step.
									currentCharacter = $e
										ifTrue: [ ^ self recordAndReportMatch: #(46) ].
									^ self reportLastMatch ].
							^ self reportLastMatch ].
					^ self reportLastMatch ].
			^ self reportLastMatch ].
	currentCharacter = $~
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch