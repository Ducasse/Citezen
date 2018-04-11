visiting
visitSection: aCZSection

	super visitSection: aCZSection. 
	self line. 
	self outputStream nextPutAll: '\end{thebibliography}'.
	self line