accessing
lookup: type
	^ self conversionTable at: type ifAbsent: [ '' ]