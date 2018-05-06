file helper
generateFor: aDoc
	self generateFor: aDoc on: (File named: (Date today yyyymmdd , self extension)) writeStream.