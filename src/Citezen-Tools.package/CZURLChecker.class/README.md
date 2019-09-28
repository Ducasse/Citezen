| b |
b := (CZBibParser
			parse: (FileSystem workingDirectory / 'rmod.bib') readStream contents)
			select: [ :each | '*Ducasse*' match: each author value ].
CZURLChecker new bibset: (b sortBy: [:x :y | x key > y key]); checkWrongEntries; yourself.

 