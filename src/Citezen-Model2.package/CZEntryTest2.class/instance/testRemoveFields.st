tests
testRemoveFields
	"self debug: #testRemoveFields"
	
	self assert: (dirty  hasField: #aeres).
	self assert: (dirty  hasField: #aeresstatus).
	self assert: (dirty  hasField: #'bdsk-url-1').
	self assert: (dirty  hasField: #'date-added').
	self assert: (dirty  hasField: #'date-modified').
	dirty removeFields: #(#aeres #'bdsk-url-1').
	self deny: (dirty  hasField: #aeres).
	self assert: (dirty  hasField: #aeresstatus).
	self deny: (dirty  hasField: #'bdsk-url-1').
	self assert: (dirty  hasField: #'date-added').
	self assert: (dirty  hasField: #'date-modified').
	

