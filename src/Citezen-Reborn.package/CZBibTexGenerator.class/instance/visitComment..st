visiting
visitComment: aCZCommentElement
	self outputStream 
		nextPut: $#;
		nextPutAll: aCZCommentElement text.
	self line.