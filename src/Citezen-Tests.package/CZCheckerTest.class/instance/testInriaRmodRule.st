as yet unclassified
testInriaRmodRule
	self assert: (CZRmodInriaRmodRule new check: self teamEntry).
	self deny: (CZRmodInriaRmodRule new check: self brokenTeamEntry)