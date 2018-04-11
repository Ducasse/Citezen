as yet unclassified
pharoPubs
	"self pharoPubs"
	^ self new
		inBibset: (CZFileLoader  bibFromFileNamed: 'rmod.bib');
		outputFilesDescription: {true -> 'pharo.bib' . false -> 'plouf.bib'};
		dispatchBlock: [:each | each isPharoPub];
		generate