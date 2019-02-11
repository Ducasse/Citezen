action
load: inputFile

	bibset addAll:  (CZBibParser parse: (inputFile asFileReference readStream) contents)
	