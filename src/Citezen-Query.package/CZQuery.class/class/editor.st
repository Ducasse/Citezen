builder
editor
	"This is a hack we should have a real notion of what is a team."
	^ (CZFieldQuery
		named: #editor
		checks: [ :value | 
			value containsTeamMember: CZEntry teamMemberPatterns ])
		OR: (self annotationWithType: '*workshopproceedings*')