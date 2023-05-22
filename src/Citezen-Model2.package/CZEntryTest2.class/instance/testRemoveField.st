tests
testRemoveField
	"self debug: #testRemoveField"
	
	self assert: (dirty  hasField: #aeres).
	self assert: (dirty  hasField: #aeresstatus).
	self assert: (dirty  hasField: #'bdsk-url-1').
	self assert: (dirty  hasField: #'date-added').
	self assert: (dirty  hasField: #'date-modified').
	dirty removeFieldWithKey: #aeres.
	self deny: (dirty  hasField: #aeres).
	self assert: (dirty  hasField: #aeresstatus).
	self assert: (dirty  hasField: #'bdsk-url-1').
	self assert: (dirty  hasField: #'date-added').
	self assert: (dirty  hasField: #'date-modified').
	

