building
addEntitledSection: aString withBibEntries: entries
	self
		addSection:
			(CZSection new
				title: (CZString new setValue: aString);
				items:
					(CZSet new
						addAll: entries;
						yourself) yourself)