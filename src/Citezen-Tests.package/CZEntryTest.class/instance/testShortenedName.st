tests
testShortenedName
	"self debug: #testShortenedName"

	self assert: dirty author rawValueObject useDisplayShortenedName expanded = 'H. Abdeen, I. Alloui, S. Ducasse, D. Pollet and M. Suen'.
	self assert: dirty author rawValueObject shortenedName = 'H. Abdeen, I. Alloui, S. Ducasse, D. Pollet and M. Suen'.