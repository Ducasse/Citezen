visitor-double dispatch
visitFieldRef: aFieldRef
	^ (entry hasField: aFieldRef fieldName) not