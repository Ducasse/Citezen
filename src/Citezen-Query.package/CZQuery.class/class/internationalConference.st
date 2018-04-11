builder
internationalConference
	^ CZFieldQuery
		named: #annote
		checks: [ :value | 
			 '*internationalconference*' match: value ]