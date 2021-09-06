utils
generateXHTMLFileFor: aDoc

	self
		generateFileNamed: self htmlFileName
		withVisitor: self htmlGeneratorClass new
		for: aDoc