initialization
initialize
	super initialize.
	self setEncodedCharacterTransformationTable.
	writer := PRPillarWriter new.
	self initializeFieldEmbellishingTables.
