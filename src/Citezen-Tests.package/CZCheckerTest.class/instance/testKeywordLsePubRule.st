tests
testKeywordLsePubRule

	| checker entry |
	checker := CZChecker new addRule: CZRmodKeywordLsePubRule new.	
	entry := self brokenTeamEntry.
	checker checkEntry: entry.
	self assert: (entry at: #keyword) value equals: 'lse-pub'.
	entry at: #keyword put: 'aKeyWord'.
	checker checkEntry: entry.
	self assert: (entry at: #keyword) value equals: 'aKeyWord lse-pub'.