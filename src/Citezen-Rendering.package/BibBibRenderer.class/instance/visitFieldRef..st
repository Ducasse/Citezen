visitor-double dispatch
visitFieldRef: aFieldRef
	self text: aFieldRef fieldName; text: ' = '.
	aFieldRef fieldName = 'year' ifFalse: [
		self
			text: '{';
			text: (currentEntry at: aFieldRef fieldName) rawValue;
			text: '},'; newline
	]
	ifTrue: [
		self text: (currentEntry at: aFieldRef fieldName) rawValue; newline
	]