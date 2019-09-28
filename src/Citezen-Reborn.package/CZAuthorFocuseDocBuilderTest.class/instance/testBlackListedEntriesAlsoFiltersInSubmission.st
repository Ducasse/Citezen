tests
testBlackListedEntriesAlsoFiltersInSubmission
	"self debug: #testBlackListedEntriesAlsoFiltersInSubmission"
	"it could be orthogonal but for now this is not the case."
	
	| builder |
	builder := CZDocBuilder new bibset: bibset.
	"filtering not invoked"				
	self assert: builder workingBibSet size equals: 6.		
	
	"now testing that we removed the keys we do not want"	
	builder keysOfBlackListedEntries: #(Abde10a Chev11a).
	builder filter.
	self assert: builder workingBibSet size equals: 3.	