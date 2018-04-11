printing
queryString
	^ '(' , self leftOr printString , ' or ' , self rightOr printString , ')'