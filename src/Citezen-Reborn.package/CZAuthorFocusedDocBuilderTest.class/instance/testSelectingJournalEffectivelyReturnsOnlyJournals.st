tests
testSelectingJournalEffectivelyReturnsOnlyJournals
	"self debug: #testSelectingJournalEffectivelyReturnsOnlyJournals"

	| builder |
	builder := CZDocBuilder new bibset: bibset.
	self assert: builder workingBibSet size equals: 6.
	self assert: (builder workingBibSet select: builder internationalJournalQuery) size equals: 2