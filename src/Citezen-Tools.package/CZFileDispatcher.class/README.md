A CZFileDispatcher takes a bibset and splits it in several ones.
It is useful for creating files for a team or a person out of a large bibset. 

CZFileDispatcher new 
	inBibset: (CZFileMerger new inputFiles: #('lse.bib' 'scg.bib') ; merge);
	outputFilesDescription: {true -> 'rmod.bib' . false -> 'others.bib'};
	dispatchBlock: [:each | each isTeamEntry];
	generate