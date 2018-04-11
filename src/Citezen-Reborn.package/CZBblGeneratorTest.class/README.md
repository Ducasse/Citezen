| visitor bibset |
bibset := CZBibParser parse: (FileStream readOnlyFileNamed: 'rmod.bib') contents.
bibset scope: CZSet standardDefinitions.
visitor := CZBblGenerator new.
visitor 
	fieldOrder: #(#author  #title  #journal  #booktitle #volume 
			  #pages   #publisher   #year   #school   #impactfactor 
			  #doi #url #hald-id); 
	filename: 'rmod.bbl'.
visitor visit: bibset.