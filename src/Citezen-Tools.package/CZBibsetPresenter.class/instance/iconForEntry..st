interaction
iconForEntry: entry

	^ self iconNamed: ((checkEntryBlock value: entry)
			   ifTrue: [ self checkEntryIcon ]
			   ifFalse: [ #blank ])