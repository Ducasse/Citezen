tests
testlaboRule
	self assert: (CZRmodLaboRule new check: self teamEntry).
	self deny: (CZRmodLaboRule new check: self brokenTeamEntry)