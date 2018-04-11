accessing
library
	^ library ifNil: [BibPhraseLibrary default]