tests
testFieldSorted
	"self debug: #testFieldSorted"

	| res |
	res := dirty fieldSortedFollowingKeys: #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	self assert: res size = #(#author #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year) size.
	

	res := dirty fieldSortedFollowingKeys: #(#ZORKTHEGREAT #title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year).
	self assert: res size = #(#title #annote #booktitle #location #misc #accepttotal #acceptnum #pages #publisher #rate  #url #year) size.
	