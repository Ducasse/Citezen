as yet unclassified
testAeresStatusRule
	self assert: (CZRmodAeresStatusRule new check: self teamEntry).
	self deny: (CZRmodAeresStatusRule new check: self brokenTeamEntry)