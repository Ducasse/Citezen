tests
testInSubmissionPublicationAreRemovedWhenFilteringIsOn
	"self debug: #testBlackListedEntries"
	
	| builder |
	builder := CZDocBuilder new bibset: bibset.
	"filtering not invoked"				
	self assert: builder workingBibSet size = 6.		
			
	"now testing that we remove the insubmission"				
	builder setFilteringOn.
	builder filter.
	self assert: builder workingBibSet size = 5.		
	
	