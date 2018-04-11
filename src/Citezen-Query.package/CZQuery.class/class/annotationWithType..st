builder
annotationWithType: aString

	^  CZFieldQuery 
			named: #annote 
			checks: [ :value | aString match: value ]