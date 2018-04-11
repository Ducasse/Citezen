instance creation
valueClasses
	^ valueClasses ifNil: [self initializeValueClasses]