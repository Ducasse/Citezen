tests
testExpandedName
	"self debug: #testExpandedName"

	self 
		assert: dirty author value 
		equals: 
 'Abdeen, Hani and Alloui, Ilham and Ducasse, St\''ephane and Pollet, Damien and Suen, Mathieu'.
		
	self 
		assert: dirty author rawValueObject shortenedName 
		equals: 'H. Abdeen, I. Alloui, S. Ducasse, D. Pollet and M. Suen'.
		
		self 
		assert: dirty author rawValueObject normalizedName 
		equals: 'H. Abdeen, I. Alloui, S. Ducasse, D. Pollet and M. Suen'.