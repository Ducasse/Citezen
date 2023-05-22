tests
testFieldsFilteredAndSorted2
	"self debug: #testFieldsFilteredAndSorted2"
	|  filteredFields expected |
	filteredFields  := longEntry fieldsFilteredAndSortedAccordingTo: #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	expected := #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year) intersection: (longEntry fields collect: #key).
	self assert: filteredFields size equals: expected size.
	
	filteredFields := longEntry fieldsFilteredAndSortedAccordingTo: #(#ZORKTHEGREAT #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	self assert: filteredFields size equals: expected size -1 "since we remove author"
	