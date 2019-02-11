example
example
	"self example"
	
	^ self new
		bibset: (CZFileMerger new inputFiles: #('lse.bib' 'scg.bib') ; merge);
		outputFilesDescription: {true -> 'rmod.bib' . false -> 'other.bib'};
		dispatchBlock: [:each | each isTeamEntry];
		generate