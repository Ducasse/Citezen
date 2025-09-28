setup
testBookHasISBNField

	self 
		assert: (book fields select: [ :each | each key = #isbn ]) size 
		equals: 1.
	self 
		assert: (book fields select: [ :each | each key = #isbn ]) first value 
		equals: '9782322506187'