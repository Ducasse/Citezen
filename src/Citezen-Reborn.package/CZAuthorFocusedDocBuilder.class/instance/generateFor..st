file helper
generateFor: aDoc

	((self nameOfResultingFile , self extension) asFileReference ensureDelete; ensureCreateFile ) writeStreamDo: [ :st | 
				self generateFor: aDoc on: st ]