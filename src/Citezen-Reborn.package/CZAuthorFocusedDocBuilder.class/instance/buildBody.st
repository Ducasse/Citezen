public API
buildBody

	perYear 
		ifTrue: [ 
			| yearDict |
			yearDict := workingBibSet groupedBy: CZQuery year.
			(((yearDict keys select: [ :each | each isNumber ]) sort: [:a :b| a>b]) 
				select: [:each | years includes: each asNumber]) do: 
				[ :k | 
					workingBibSet := (yearDict at: k).
					currentSectionLevel := 2.
					self addSectionYear: k asString.
					currentSectionLevel := 3.
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