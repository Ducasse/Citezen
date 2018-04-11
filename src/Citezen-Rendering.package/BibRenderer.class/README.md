Abstract superclass for renderers of biliographic objects or phrases.
Responsible for finding a phrase for each visited entry, and a format for fields.

Quick example (doit):
Transcript show: ((CZHtmlRenderer library: BibPhraseLibrary default)
		render: (CZBibParser parse: CZTestResource myBibFile)) contents.