accessing
notExpanded
	"return the bibtex # notation"
	
	"^ String streamContents: 
	[  :aStream |
			value do:
				[ :each | (each isKindOf: CZValue)
					ifTrue: [	each notExpanded printOn: aStream ]
					ifFalse: [ aStream nextPutAll: each].		
				]
			separatedBy: 
				[ aStream nextPutAll: ' # ']
	]."

	^ super notExpanded 