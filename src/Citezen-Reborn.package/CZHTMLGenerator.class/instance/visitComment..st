visiting
visitComment: aCZCommentElement
	self outputStream 
		nextPutAll: '<!-- ';
		nextPutAll: aCZCommentElement comment;
		nextPutAll: ' -->'.
	self line