file helper
generateFor: aDoc
	self generateFor: aDoc on: (FileStream forceNewFileNamed: Date today yyyymmdd , self extension).