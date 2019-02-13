Watchout does not work. It loses data and does not close the file. 

| bs oldSize |
bs := (CZFileLoader bibFromFileNamed: 'rmod.bib') bibset.
self halt.
oldSize := bs size.
bs sortByKey.
bs size. 
CZFileSaver new bibset: bs ; saveTo: 'rmodSorted.bib'
 