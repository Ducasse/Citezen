actions
sortFile: aString

	| bs oldSize |
	bs := CZBibParser bibFromFileNamed: FileLocator image / aString.
	oldSize := bs size.
	bs sortByKey.
	bs size. 
	oldSize = bs size 
		ifFalse: [ 
			Stdio stdout 
				nextPutAll: 'Problem identified the original file contained ';
				print: oldSize printString ;
				nextPutAll: ' and the sorted version contains ';
				print:  bs size printString ;
				nextPutAll: ' . So we saved the file to a new name'.
			CZFileSaver new bibset: bs ; saveTo: aString, 'Sorted.bib'
			].
	Stdio stdout 
		nextPutAll:	'Sorted file: ';
		nextPutAll: aString;
		nextPutAll: ' It contains ';
		print: bs size;
		nextPutAll: ' entries.'.
	CZFileSaver new bibset: bs ; saveTo: aString
 