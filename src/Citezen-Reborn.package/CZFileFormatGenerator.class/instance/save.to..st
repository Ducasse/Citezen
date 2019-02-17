file helper
save: bibset to: aString

	[ self
		filename: aString;
		visitBibSet: bibset ] ensure: [ self close ]