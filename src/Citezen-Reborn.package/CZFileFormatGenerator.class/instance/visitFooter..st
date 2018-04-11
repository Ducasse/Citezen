visit doc
visitFooter: aCZFooter

	aCZFooter isDefined
		ifTrue: [ self outputStream nextPutAll: aCZFooter text ]
		ifFalse: [ self outputStream nextPutAll: self defaultFooter ]