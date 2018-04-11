visiting
visitSectionTitle: aCZString

	self outputStream nextPutAll: '\begin{thebibliography}{100}[', aCZString notExpanded , ']'.
	self line.
	self outputStream nextPutAll: '\small'.
	self line.