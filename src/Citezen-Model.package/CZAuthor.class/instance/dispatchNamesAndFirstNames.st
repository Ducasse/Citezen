private
dispatchNamesAndFirstNames
	| names |
	names := self lastNames.
	names size <= 1 ifTrue: [^self].
	self firstNames: (self lastNames copyFrom: 1 to: names size - 1).
	self lastNames: (self lastNames copyFrom: names size to: names size)