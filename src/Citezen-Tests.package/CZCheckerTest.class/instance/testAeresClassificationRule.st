as yet unclassified
testAeresClassificationRule
	self assert: (CZRmodAeresClassificationRule new check: self teamEntry).
	self deny: (CZRmodAeresClassificationRule new check: self brokenTeamEntry)