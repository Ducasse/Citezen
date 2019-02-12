setup
testIsTeamAuthor
	"self debug: #testIsTeamAuthor"
	
	self assert: (bibset reject: [:each | each isTeamEntry]) size equals: 2.
	self assert: (bibset select: [:each | each isTeamEntry]) size equals: 4.