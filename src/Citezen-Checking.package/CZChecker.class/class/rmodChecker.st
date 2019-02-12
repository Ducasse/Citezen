as yet unclassified
rmodChecker
	| checker |
	checker := self new.
	CZRmodRule allSubclassesDo: [ :each | checker addRule: each new ].
	^ checker