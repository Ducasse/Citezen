| bs oldSize |
bs := (CZBibParser bibFromFileNamed: 'rmod.bib') bibset.
oldSize := bs size.
bs sortByKey.
bs size. 
CZFileSaver new bibset: bs ; saveTo: 'rmodSorted.bib'
 