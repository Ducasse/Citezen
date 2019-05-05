actions
sortFile: aString

	| bs oldSize fileRef |
	fileRef := (FileLocator workingDirectory / aString) asFileReference 
						exists ifFalse: [  
							Stdio stdout 
									nextPutAll: 'The file ';
									nextPutAll: aString;
									nextPutAll: ' is not found.'.
							^ self ].
	bs := CZBibParser bibFromFileReference: fileRef.
	oldSize := bs size.
	bs sortByKey.
	bs size. 
	oldSize = bs size 
		ifFalse: [ 
			Stdio stdout 
				nextPutAll: 'Problem identified! The original file: ';
				nextPutAll: aString ;
				nextPutAll: ' contained ';
				print: oldSize printString ;
				nextPutAll: ' entries and the sorted version contains ';
				print:  bs size printString ;
				nextPutAll: ' entries. So we saved the file to a new name:'.
			CZFileSaver new bibset: bs ; saveTo: aString, 'Sorted.bib'
			].
	Stdio stdout 
		nextPutAll:	'Sorted file: ';
		nextPutAll: aString;
		nextPutAll: ' It contains ';
		print: bs size;
		nextPutAll: ' entries.'.
	CZFileSaver new bibset: bs ; saveTo: aString
 