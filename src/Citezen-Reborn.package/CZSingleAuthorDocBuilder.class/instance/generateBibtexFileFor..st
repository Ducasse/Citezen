utils
generateBibtexFileFor: aDoc
	self generateFileNamed: self bibtexFileName withVisitor: CZBibTexGenerator new for: aDoc