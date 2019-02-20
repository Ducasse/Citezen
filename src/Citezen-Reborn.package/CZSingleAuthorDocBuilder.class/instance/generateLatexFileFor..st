utils
generateLatexFileFor: aDoc
	self generateFileNamed: self latexFileName withVisitor: CZLaTeXGenerator new for: aDoc