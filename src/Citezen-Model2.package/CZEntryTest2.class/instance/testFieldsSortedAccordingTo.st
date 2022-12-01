tests
testFieldsSortedAccordingTo
	"self debug: #testFieldsSortedAccordingTo"
	
	| res |
	
	"This test check that first no field are lost."
	res := dirty fieldsSortedAccordingTo: #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	self assert: res size equals: dirty fieldKeys size.
	
	res := dirty fieldsSortedAccordingTo: #(#ZORKTHEGREAT #author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year #zorkish).
	self assert: res size equals: dirty fieldKeys size.
	
	res := dirty fieldsSortedAccordingTo: #(#ZORKTHEGREAT #author #title).
	self assert: res size equals: dirty fieldKeys size.
	
	"second that the order is respected"
	res := dirty fieldsSortedAccordingTo: #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	self assert: res first key equals: #author.
	self assert: (res at: 3) key equals: #annote.
	self assert: (res at: 12) key equals: #url.
	self assert: (res at: 13) key equals: #year.
	"but we have the same length so we have all the fields after the order that are kept."
	self assert: res size equals: dirty fieldKeys size.
	
