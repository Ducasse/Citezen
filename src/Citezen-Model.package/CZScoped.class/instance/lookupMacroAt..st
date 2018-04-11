accessing
lookupMacroAt: aKey
	"Return the value of macro named aKey, looking up the scope chain if necessary."
	^ self lookupMacroAt: aKey ifAbsent: [CZField undefined: aKey]