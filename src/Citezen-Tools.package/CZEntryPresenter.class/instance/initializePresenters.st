initialization
initializePresenters 
	super initializePresenters.

	txtAuthors := self newText.
	txtTitle   := self newText.
	txtYear    := self newText.
	txtVenue   := self newText.
	txtKind    := self newText.

	btnSave    := self newButton
		icon: (self iconNamed: #smallSave) ;
		action: [ self saveNote ] ;
		yourself.

	btnInspect := self newButton
		icon: (self iconNamed: #smallInspectIt) ;
		action: [ self inspectEntry ] ;
		yourself