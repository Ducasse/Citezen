class initialization
initialize
	"self initialize"
	self initializeFieldKeysToRemove.
	"we could say that all the keyx not in the extended set should be removed. This would simplify the logic."
	
	self initializeExtendedFieldKeys.
	self initializeNeededFields.
	self initializeOptionalFields 