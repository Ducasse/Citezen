file helper
filename: aString
	outputStream := (ZnNewLineWriterStream on:
							(aString asFileReference
								ensureDelete;
								writeStream))
							forLf;
							yourself