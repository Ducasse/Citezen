testing
validTeamQuery

	^ self teamEntryQuery
		AND:
			(CZFieldQuery
				named: #year
				checks: [ :value | self isFromWithinReportingPeriod: value asNumber ])