utility-queries
annotationWithType: aString

	^  CZFieldQuery 
			named: #annote 
			checks: [ :value | aString match: value ]