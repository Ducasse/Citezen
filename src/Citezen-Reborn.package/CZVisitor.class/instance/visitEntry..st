visiting
visitEntry: anEntry
	"Visit a bib entry"
	anEntry do: [:each | self visit: each]
	
	