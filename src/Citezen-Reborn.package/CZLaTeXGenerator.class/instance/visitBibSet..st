visiting
visitBibSet: aCZSet

	aCZSet isEmpty ifTrue: [ ^self ].
	self outputStream nextPutAll: '\begin{itemize}'.
	super visitBibSet: aCZSet.
	self outputStream nextPutAll: '\end{itemize}'