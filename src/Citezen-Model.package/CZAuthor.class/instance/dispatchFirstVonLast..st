private
dispatchFirstVonLast: aCollection
	| index |
	"locate the particle"
	index := aCollection findFirst: [:name | name first isLowercase].
	index = 0
		ifTrue: [^ self
			firstNames: aCollection allButLast;
			lastNames: (aCollection last: 1);
			yourself].
	self firstNames: (aCollection removeFirst: index - 1).
	self dispatchVonLast: aCollection