tests
testFieldSorted
	"self debug: #testFieldSorted"

	| res |
	res := dirty fieldSortedFollowingKeys: #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	self assert: res size equals: #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year) size.
	
	res := dirty fieldSortedFollowingKeys: #(#ZORKTHEGREAT #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	self assert: res size equals: #(#title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year) size.
	