language
setLanguage: aSymbol
	"right now only english and french are managed."
	| language |
	language := (#(english french) includes: aSymbol) 
		ifFalse: [ #english ]
		ifTrue: [ aSymbol ].
	self perform: aSymbol