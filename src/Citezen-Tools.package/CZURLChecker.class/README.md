I check if I can reach the pdf in the entries


| b |
Transcript open. 
Transcript clear.
b := (CZBibParser
			parse: (FileSystem workingDirectory / 'rmod.bib') readStream contents).
CZURLChecker new bibset: (b sortBy: [:x :y | x key > y key]); checkWrongEntries; yourself.

 