actions
sortFile: aString

	| bs oldSize |
	bs := CZBibParser bibFromFileNamed: FileLocator image parent / aString.
	oldSize := bs size.
	bs sortByKey.
	bs size. 
	oldSize = bs size 
		ifFalse: [ 
			Stdio stdout 
				nextPutAll: 'Problem identified! The original file: ', aString, ' contained ';
				print: oldSize printString ;
				nextPutAll: ' entries and the sorted version contains ';
				print:  bs size printString ;
				nextPutAll: ' entries. So we saved the file to a new name:'.
			CZFileSaver new bibset: bs ; saveTo: aString, 'Sorted.bib'
			].
	self halt.
	Stdio stdout 
		nextPutAll:	'Sorted file: ';
		nextPutAll: aString;
		nextPutAll: ' It contains ';
		print: bs size;
		nextPutAll: ' entries.'.
	CZFileSaver new bibset: bs ; saveTo: aString
 