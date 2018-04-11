as yet unclassified
example
	"self example"
	
	^ self new
		inBibset: (CZFileMerger new inputFiles: #('lse.bib' 'scg.bib') ; merge);
		outputFilesDescription: {true -> 'rmod.bib' . false -> 'other.bib'};
		dispatchBlock: [:each | each isTeamEntry];
		generate