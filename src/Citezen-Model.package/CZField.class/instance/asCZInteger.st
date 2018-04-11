converting
asCZInteger
	(value notExpanded isAllDigits)
		ifTrue: [ ^ CZInteger with: value notExpanded asNumber ]
		ifFalse: [ self error: 'Can not convert a string which does not represent an integer' ]