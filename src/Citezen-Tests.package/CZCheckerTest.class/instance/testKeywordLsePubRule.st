as yet unclassified
testKeywordLsePubRule
	| checker entry |
	checker := CZChecker new addRule: CZRmodKeywordLsePubRule new.
	
	entry := self brokenTeamEntry.
	checker checkEntry: entry.
	
	self assert:  ((entry at: #keyword) value = 'lse-pub').
	
	entry at: #keyword put: 'aKeyWord'.
	checker checkEntry: entry.
	
	self assert:  ((entry at: #keyword) value = 'aKeyWord lse-pub').