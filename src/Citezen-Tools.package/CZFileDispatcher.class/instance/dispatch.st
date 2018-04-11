action
dispatch
	dispatchBlock ifNil: [self error: 'No dispatch block'].
	^ bibset groupedBy: dispatchBlock