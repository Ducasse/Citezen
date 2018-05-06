initialize
initialize
	super initialize.
	doc := self rootDocumentClass new.
	self authorMatchingString: '*'.
	localization := self localizationClass new.
	self
		fieldOrder:
			#(#author #title #chapter #journal #booktitle #volume #pages #publisher #school #year #url #doi).
	self doNotAllowEmptySections.
	self setFilteringOn.
	self keysOfBlackListedEntries: self defaultKeysOfBlackListedEntries