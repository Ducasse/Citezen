builder
editor

	^ (CZFieldQuery
		named: #editor
		checks: [ :value | value containsTeamMember: CZEntry teamMemberPatterns ])
		OR: (self annotationWithType: '*workshopproceedings*')