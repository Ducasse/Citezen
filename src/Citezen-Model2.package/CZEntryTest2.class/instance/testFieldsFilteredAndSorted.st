tests
testFieldsFilteredAndSorted
	"self debug: #testFieldsFilteredAndSorted"

	| res |
	res := dirty fieldsFilteredAndSortedAccordingTo: #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	self assert: res size equals: #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year) size.
	
	res := dirty fieldsFilteredAndSortedAccordingTo: #(#ZORKTHEGREAT #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	self assert: res size equals: #(#title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year) size.
	
	self flag: #todo. "we should check that a field may not be specified in the argument and we should remove it."
	