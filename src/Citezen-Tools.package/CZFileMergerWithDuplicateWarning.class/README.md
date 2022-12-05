A CZFileMergerWithDuplicateWarning takes a list of bib files and generate one single bibset with check on duplication elements.
Return in the bibset a comment type. He say how many duplication are there and who.
	
CZFileMergerWithDuplicateWarning new 
	inputFiles: #('lse.bib' 'scg.bib');
	merge