header/footer hooks
emitEntryHeader: anEntry
	"Add to the outputStream 
	\bibitem[1]{anquetil:tel-01086785}\RAsc{N.~Anquetil},"
	"the key is computed using hal convention for now."
	currentNumber := currentNumber + 1.
	self outputStream  
		nextPutAll: '\bibitem[', currentNumber printString, ']';
		nextPut: ${;
		nextPutAll: (self keyForEntry: anEntry);
		nextPut: $}.
	self outputStream nextPutAll: '\czauthors{', anEntry author rawValueObject shortenedName, '},'.
	self line.
	