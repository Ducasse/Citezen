as yet unclassified
basicRmodChecker
	| checker |
	checker := self new.
	
	checker addRule: CZRmodKeyRule new.
	
	^ checker