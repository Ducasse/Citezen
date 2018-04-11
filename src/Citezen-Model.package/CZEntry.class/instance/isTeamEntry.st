team utils
isTeamEntry
	
	| author |
	author := self author value.
	^ author containsTeamMember: self class teamMemberPatterns