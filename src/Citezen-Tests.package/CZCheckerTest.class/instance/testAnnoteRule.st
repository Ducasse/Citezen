as yet unclassified
testAnnoteRule
	self assert: (CZRmodAnnoteRule new check: self teamEntry).
	self deny: (CZRmodAnnoteRule new check: self brokenTeamEntry)