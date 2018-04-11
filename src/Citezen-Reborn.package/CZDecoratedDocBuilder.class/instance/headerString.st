accessing
headerString
	
	^ headerString ifNil: [ headerString := self defaultHeaderString ]