tests
testKeepFields
	"self debug: #testKeepFields"
	
	self assert: (dirty  hasField: #aeres).
	self assert: (dirty  hasField: #aeresstatus).
	self assert: (dirty  hasField: #'bdsk-url-1').
	self assert: (dirty  hasField: #'date-added').
	self assert: (dirty  hasField: #'date-modified').
	dirty keepFields: #(#aeres #'bdsk-url-1').
	self assert: (dirty  hasField: #aeres).
	self deny: (dirty hasField: #author).
	self deny: (dirty  hasField: #aeresstatus).
	self assert: (dirty  hasField: #'bdsk-url-1').
	self deny: (dirty  hasField: #'date-added').
	self deny: (dirty  hasField: #'date-modified').
	

