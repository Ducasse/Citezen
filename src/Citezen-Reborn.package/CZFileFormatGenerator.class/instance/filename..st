file helper
filename: aString
	self flag: #bogus. "we should close the file somewhere. either we find a way to use writeStreamDo: or clients should close the file."
	outputStream := aString asFileReference ensureDelete; writeStream