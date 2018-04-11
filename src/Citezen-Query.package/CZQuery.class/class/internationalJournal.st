builder
internationalJournal
	^ CZFieldQuery
		named: #annote
		checks: [ :value | 
			'*internationaljournal*' match: value ]