private
dispatchVonLast: aCollection
	| index |
	"locate the last names"
	index := aCollection findFirst: [:name | name first isUppercase].
	index = 0 "no name after particles"
		ifTrue: [index := aCollection size].
	self particles: (aCollection removeFirst: index - 1).
	self lastNames: aCollection