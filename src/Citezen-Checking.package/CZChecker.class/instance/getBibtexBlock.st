as yet unclassified
getBibtexBlock
	| block end change braces parentheses |
	
	block := WriteStream on: ByteString new.
	change := end := false.
	braces := parentheses := 0.
	
	(eof) ifFalse: [
		[(fileContent isEmpty) | end] whileFalse: [
			block nextPut: fileContent first.
			(fileContent first = ${)
				ifTrue: [ braces := braces + 1. change := true ].
			(fileContent first = $()
				ifTrue: [ parentheses := parentheses + 1. change := true ].
			(fileContent first = $})
				ifTrue: [ braces := braces - 1 ].
			(fileContent first = $))
				ifTrue: [ parentheses := parentheses - 1 ].
			
			(change) ifTrue: [
				((parentheses = 0) & (braces = 0))
					ifTrue: [ end := true ] ]. 
			
			fileContent := fileContent allButFirst.
		]	
	].

	fileContent := fileContent trimRight.
	fileContent ifEmpty: [ eof := true ].

	^ (block contents) trimBoth