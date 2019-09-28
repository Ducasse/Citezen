team utils
isTeamEntry
	"This is a hack we should have a real notion of what is a team."
	
	| author |
	author := self author value.
	^ author containsTeamMember: self class teamMemberPatterns