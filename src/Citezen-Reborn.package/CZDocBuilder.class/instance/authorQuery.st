queries
authorQuery

	^ CZFieldQuery 
		named: #author 
		checks: [ :value | self authorMatchingString match: value ]