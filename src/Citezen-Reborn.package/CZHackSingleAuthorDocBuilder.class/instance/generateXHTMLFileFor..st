utils
generateXHTMLFileFor: aDoc
	self generateFileNamed: self htmlFileName withVisitor: CZHTMLGenerator new for: aDoc