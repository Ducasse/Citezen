instance creation
undefined: aSymbol
	^ CZUndefinedField
		key: aSymbol
		value: ("valueClasses at: aSymbol ifAbsent: ["CZValue) defaultValue