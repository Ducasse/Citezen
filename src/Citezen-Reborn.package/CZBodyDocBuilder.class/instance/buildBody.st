public API
buildBody

	self bodySpecification
		do: [ :each |  
				self 
					addSectionFromQuery: (self perform: (each, #Query) asSymbol)  
					withTitle: (localization perform: each) ] 
					