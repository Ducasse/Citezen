printing
printOn: aStream
	aStream
		nextPut: $@;
		nextPutAll: self type;
		nextPut: $(;
		nextPutAll: self key;
		nextPut: $)