instance creation
key: aSymbol rawValue: valueFromParser
	"have to test it, because there is no syntax to detect an author (example :)
		@type{key,
			author = {Barreau, Adrien}, -> should be CZPeople
			title = {Acomma, astring}   -> should be CZString}"

	(#(author editor) includes: aSymbol asLowercase) 
		ifTrue: [ ^ self 
					key: aSymbol asLowercase asSymbol 
					value: (CZPeople new setValue: valueFromParser )].
	
	^ self new
		setKey: aSymbol asLowercase asSymbol
		rawValue: valueFromParser