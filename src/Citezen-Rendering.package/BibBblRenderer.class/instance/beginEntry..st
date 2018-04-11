rendering
beginEntry: anEntry
	self flag: 'TODO compute displayKey'.
	self
		text: '\bibitem[displayKey]{' , anEntry key , '}';
		newline.
	firstBlock := true.
