tests
testFieldKeys
	"self debug: #testFieldKeys"

	self assert: dirty fieldKeys asArray equals: #(#author #title #aeres #'hal-id' #aeresstatus #annote #booktitle #inria #keywords #location #misc #accepttotal #acceptnum #pages #publisher #rate #selectif #url #year #'bdsk-url-1' #'date-added' #'date-modified').
	dirty clean. 
	self assert: dirty fieldKeys asArray equals: #(#author #title #'hal-id' #annote #booktitle #keywords #location #misc #accepttotal #acceptnum #pages #publisher #rate #url #year)