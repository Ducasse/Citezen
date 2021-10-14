public API
addSectionYear: aString

	self
		addSection:
			(CZSection new
				title: (CZString new setValue: aString);
				level: currentSectionLevel ;
				yourself) 