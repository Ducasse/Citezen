running
testEntryAtKey
	"self debug: #testEntryAtKey"
	
	self assert: (bibset entryAt: #meuh) class = CZEntry.
	self assert: (bibset entryAt: #inexistant ifAbsent:'pas là') = 'pas là'.