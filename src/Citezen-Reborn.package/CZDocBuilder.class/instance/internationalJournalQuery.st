queries
internationalJournalQuery

	^ (CZFieldQuery 
			named: #annote 
			checks: [ :value | '*internationaljournal*' match: value ])