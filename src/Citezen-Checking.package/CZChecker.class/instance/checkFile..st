interface
checkFile: aString
	macros := OrderedCollection new.
	macrosUsage := Dictionary new.
	entries := OrderedCollection new.

	fileContent := aString asFileReference readStreamDo: [ :s | s contents copyReplaceAll: String lf with: String cr].
	eof := false.

	errorStream := WriteStream on: String new.
	[eof] whileFalse: [ self bibtexBlockToCZEntry: self getBibtexBlock ].
	^ self checks
