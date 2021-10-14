public API
buildBody

	perYear 
		ifTrue: [ 
			| yearDict |
			yearDict := workingBibSet groupedBy: CZQuery year.
			(yearDict keys select: [ :each | each isNumber ]) sorted do: 
				[ :k | 
					workingBibSet := (yearDict at: k).
					self treatBody.
					]
			
			
			 ]
		ifFalse: [ 
			self bodySpecification
				do: [ :each |  
						self 
							addSectionFromQuery: (self perform: (each, #Query) asSymbol)  
							withTitle: (localization perform: each) ] 
		]			