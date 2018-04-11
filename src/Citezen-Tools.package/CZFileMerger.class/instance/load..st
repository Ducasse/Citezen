action
load: inputFile

	bibSet addAll:  (CZBibParser parse: ((FileStream readOnlyFileNamed: inputFile) contents)).
	