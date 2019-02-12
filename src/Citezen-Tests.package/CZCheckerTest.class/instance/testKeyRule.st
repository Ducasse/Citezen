tests
testKeyRule
	self assert: (CZRmodKeyRule new check: self teamEntry).
	self deny: (CZRmodKeyRule new check: self brokenTeamEntry)