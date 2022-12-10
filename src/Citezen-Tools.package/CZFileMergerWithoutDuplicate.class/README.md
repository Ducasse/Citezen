A CZFileMergerWithoutDuplicate takes a list of bib files and generate one single bibset with check on duplication elements.
Return in the bibset a single reference of duplicate items.
	
CZFileMergerWithoutDuplicate new 
	inputFiles: #('lse.bib' 'scg.bib');
	merge