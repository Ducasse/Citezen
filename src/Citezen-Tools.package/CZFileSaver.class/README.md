Watchout does not work. It loses data and does not close the file. 

| bs |
bs := (CZFileLoader bibFromFileNamed: 'rmod.bib') bibset.
self halt.
bs sortByKey.
self halt.
CZFileSaver new bibset: bs ; saveTo: 'rmodSorted.bib'
 