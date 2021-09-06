file helper
generateFor: aDoc

	((Date today yyyymmdd, self extension) asFileReference ensureDelete; ensureCreateFile ) writeStreamDo: [ :st | 
				self generateFor: aDoc on: st ]