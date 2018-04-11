builder
booklet
	^ CZFieldQuery
		named: #annote
		checks: [ :value | 
			 '*booklet*' match: value ]