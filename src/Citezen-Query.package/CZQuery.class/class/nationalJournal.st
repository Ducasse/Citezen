builder
nationalJournal
	^ CZFieldQuery named: #annote checks: [ :value | ('*nationaljournal*' match: value) and: [ ('*internationaljournal*' match: value) not ] ]