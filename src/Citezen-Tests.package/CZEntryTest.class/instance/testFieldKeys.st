tests
testFieldKeys
	"self debug: #testFieldKeys"

	self halt.
	self assert: (dirty  hasField: #aeres).
	self assert: (dirty  hasField: #aeresstatus).
	self assert: (dirty  hasField: #'bdsk-url-1').
	self assert: (dirty  hasField: #'date-added').
	self assert: (dirty  hasField: #'date-modified').
	dirty clean.
	self deny: (dirty hasField: #'date-added').
	self deny: (dirty hasField: #'date-modified').
	self deny: (dirty hasField: #'bdsk-url-1').
	CZEntry fieldKeysToRemove
		do: [ :each | self deny: (dirty hasFieldWithKey: each)].
