building
filter
	"Filter insubmission and other blacklisted entries"

	self shouldFilterNonPublic
		ifFalse: [ ^ self ].
	workingBibSet := workingBibSet reject: self inSubmissionQuery.
	workingBibSet := workingBibSet
		reject: [ :each | keysOfBlackListedEntries includes: each key ]