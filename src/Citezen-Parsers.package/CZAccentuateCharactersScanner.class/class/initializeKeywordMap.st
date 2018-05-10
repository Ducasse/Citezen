generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(6 '\#' 39) #(6 '\%' 38) #(6 '\&' 37) #(6 '\-' 36) #(6 '\L' 32) #(6 '\O' 30) #(6 '\\' 5) #(6 '\i' 33) #(6 '\j' 34) #(6 '\l' 31) #(6 '\v' 17))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap