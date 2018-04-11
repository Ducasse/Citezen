building
buildBody

	self sectionSpecification
		do: [ :each |  
				self 
					addBibSection: (self perform: (each, #Query) asSymbol)  
					withTitle: (localization  perform: each) ] 
					