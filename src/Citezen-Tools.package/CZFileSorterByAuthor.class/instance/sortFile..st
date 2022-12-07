sorting
sortFile: aString

	| bs oldSize fileRef |
	fileRef := (FileLocator workingDirectory / aString) asFileReference.
	fileRef exists ifFalse: [ 
		Stdio stdout
			nextPutAll: 'The file ';
			nextPutAll: aString;
			nextPutAll: ' is not found.'.
		^ self ].
	bs := [ CZBibParser bibFromFileReference: fileRef ]
		      on: SmaCCParserError
		      do: [ :ex | 
			      | context |
			      context := ex signalerContext.
			      [ 
			      context sender isNil or: [ 
				      context sender selector = #buildEntry: ] ] whileFalse: [ 
				      context := context sender ].
			      "super ugly isn't!"
			      context sender isNil
				      ifTrue: [ 
					      Stdio stdout nextPutAll: 'Citezen cannot parse the file.'.
					      ^ self ]
				      ifFalse: [ 
					      context := context sender.
					      Stdio stdout
						      nextPutAll: 'Citezen cannot parse:  ';
						      nextPutAll:
							      ((context at: 1) at: 3) value allButFirst allButLast.
					      ^ self ] ].
	oldSize := bs size.
	bs sortByAuthor.
	bs size.
	oldSize = bs size ifFalse: [ 
		Stdio stdout
			nextPutAll: 'Problem identified! The original file: ';
			nextPutAll: aString;
			nextPutAll: ' contained ';
			print: oldSize printString;
			nextPutAll: ' entries and the sorted version contains ';
			print: bs size printString;
			nextPutAll: ' entries. So we saved the file to a new name:'.
		CZFileSaver new
			bibset: bs;
			saveTo: aString , 'Sorted.bib' , '.' ].
	Stdio stdout
		nextPutAll: 'Sorted file: ';
		nextPutAll: aString;
		nextPutAll: ' .';
		nextPutAll: ' It contains ';
		print: bs size;
		nextPutAll: ' entries.'.
	CZFileSaver new
		bibset: bs;
		saveTo: aString