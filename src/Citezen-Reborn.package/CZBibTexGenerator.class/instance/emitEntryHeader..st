entries
emitEntryHeader: anEntry
	"Add to the outputStream @type{key e.g.., @inproceedings{Key90a,"
	self outputStream  
		nextPut: $@;
		nextPutAll: anEntry type;
		nextPut: ${;
		nextPutAll: anEntry key;
		nextPut: $,.
	self line
	