tests
testSelectingJournalEffectivelyReturnsOnlyJournals
	"self debug: #testSelectingJournalEffectivelyReturnsOnlyJournals"

	| builder |
	builder := CZDocBuilder new bibset: bibset.
	self assert: builder workingBibSet size = 6.
	self assert: (builder workingBibSet select: builder internationalJournalQuery) size = 2