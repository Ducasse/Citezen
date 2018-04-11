as yet unclassified
checkMacroReferenced: aCZField
	| macroSymbols error |
	
	macroSymbols := OrderedCollection new.
	(aCZField valueClass = CZMacroReference)
		ifTrue: [ 
			macrosUsage at: aCZField rawValue put: true.
			macroSymbols add: aCZField rawValue ]
		ifFalse: [ (aCZField valueClass = CZCompositeValue)
			ifTrue: [ aCZField rawValue do: [ :each | 
				(each class = CZMacroReference)
					ifTrue: [ 
						macrosUsage at: each notExpanded put: true.
						macroSymbols add: each notExpanded ] ] ] ].
	
	error := false.	
	macroSymbols do: [ :each |
		(macroKeys includes: each)
			ifFalse: [ 
				errorStream nextPutAll: 'Warning: Removes field: ', aCZField key, ' references this undefined macro: ', each; cr.
				error := true ] ].
	
	^ error not