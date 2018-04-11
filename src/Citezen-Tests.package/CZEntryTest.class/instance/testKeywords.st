tests
testKeywords
	"self debug: #testKeywords"
	
	| keywords |
	self assert: (inproceedingsEntry hasField: #author).
	keywords := inproceedingsEntry at: #keywords.
	self assert: keywords value = 'snf05 scg-pub skip-doi jb05 pharo fromscgbib'.
	self assert: inproceedingsEntry isPharoPub
