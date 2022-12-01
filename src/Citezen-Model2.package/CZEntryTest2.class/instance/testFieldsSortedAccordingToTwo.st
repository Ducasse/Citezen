tests
testFieldsSortedAccordingToTwo
	"self debug: #testFieldsSortedAccordingToTwo"
	
	| sorted |
	
	"when we sort we do not change the amount of fields."
	sorted := longEntry fieldsSortedAccordingTo: #(#author #title #chapter #journal #booktitle #volume #pages #publisher #year #impactfactor #school #misc #url #doi).
	self assert: sorted size equals: longEntry fieldKeys size.
	sorted := longEntry fieldsSortedAccordingTo: #(#ZORKTHEGREAT #author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year #zorkish).
	self assert: (sorted at: 3) key equals: #annote.
	self assert: sorted size equals: longEntry fieldKeys size.
	sorted := longEntry fieldsSortedAccordingTo: #(#ZORKTHEGREAT #author #title).
	self assert: sorted size equals: longEntry fieldKeys size.
	self assert: sorted first key equals: #author.
	self assert: (sorted at: 2) key equals: #title.
	
	
	"The order is respected even if we have less properties (in the entry) than in the specification then the order is shifted."
	sorted := longEntry fieldsSortedAccordingTo: #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	self assert: sorted first key equals: #author.
	self assert: (sorted at: 3) key equals: #annote.
	self assert: (sorted at: 6) key equals: #year.
	"but we have the same length so we have all the fields after the order that are kept."
	self assert: sorted size equals: longEntry fieldKeys size.
	
