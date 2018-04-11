setup
testIsTeamAuthor
	"self debug: #testIsTeamAuthor"
	
	self assert: (bibset reject: [:each | each isTeamEntry]) size =2.
	self assert: (bibset select: [:each | each isTeamEntry]) size =4.