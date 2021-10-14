building
addEntitledSection: aString withBibEntries: entries
	self
		addSection:
			(CZSection new
				title: (CZString new setValue: aString);
				level: currentSectionLevel ;
				items:
					(CZSet new
						addAll: entries;
						yourself) yourself)