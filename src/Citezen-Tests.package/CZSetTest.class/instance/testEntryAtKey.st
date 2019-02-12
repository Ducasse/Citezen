running
testEntryAtKey
	"self debug: #testEntryAtKey"
	
	self assert: (bibset entryAt: #meuh) class equals: CZEntry.
	self assert: (bibset entryAt: #inexistant ifAbsent:'pas là') equals: 'pas là'.