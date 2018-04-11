adding
add: aValue
	| realValueToAdd |
	
	(aValue isKindOf: CZScoped) 
		ifTrue: [ aValue scope: self. realValueToAdd := aValue ]
		ifFalse: [
			(aValue isKindOf: Number)	
				ifTrue: [ realValueToAdd := CZInteger new setValue: aValue ]
				ifFalse: [ realValueToAdd := CZString new setValue: aValue ]
			].
		
	value add: realValueToAdd 