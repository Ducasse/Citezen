visiting
visitField: aField

	self outputStream nextPutAll: '<span class="', aField key,'">'.
	(#(#pdf #url #doi) includes: aField key) ifTrue: [ Transcript show: aField; cr ]. 
	[outputStream nextPutAll: [aField output: self]].
	outputStream nextPutAll: '</span>'.

