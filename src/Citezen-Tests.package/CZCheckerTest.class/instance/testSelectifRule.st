tests
testSelectifRule
	self assert: (CZRmodSelectifRule new check: self teamEntry).
	self deny: (CZRmodSelectifRule new check: self brokenTeamEntry)