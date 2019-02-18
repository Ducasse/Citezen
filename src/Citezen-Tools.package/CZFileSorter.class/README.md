I sort entries from files. 
In addition, I verify that the same amount of entities is saved than loaded.
In case of difference I will not touch the original file. 

An example of use is
	CZFileSorter new sortFile: 'rmod.bib'
	
	/Applications/Pharo/Pharo70-64.app/Contents/MacOS/Pharo --headless P7-Citezen.image eval "CZFileSorter new sortFile: 'rmod.bib'"