tests
testFieldsFilteredAndSorted2
	"self debug: #testFieldsFilteredAndSorted2"
	|  filteredFields |
	filteredFields  := longEntry fieldsFilteredAndSortedAccordingTo: #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	self assert: filteredFields size equals: #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year) size.
	
	filteredFields := longEntry fieldsFilteredAndSortedAccordingTo: #(#ZORKTHEGREAT #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	self assert: filteredFields size equals: #(#title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year) size.
	
	self flag: #todo. "we should check that a field may not be specified in the argument and we should remove it."
	