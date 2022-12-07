accessing
checkFile: aFileName
	| bibSet |
	bibSet := self parser parse: (aFileName asFileReference) contents.
	self checkAnalyzedBibSet: (self analyze: bibSet).