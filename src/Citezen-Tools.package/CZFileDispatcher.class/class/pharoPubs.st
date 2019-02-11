example
pharoPubs
	"self pharoPubs"
	<example>
	^ self new
		bibset: (CZFileLoader  bibFromFileNamed: 'rmod.bib');
		outputFilesDescription: {true -> 'pharo.bib' . false -> 'plouf.bib'};
		dispatchBlock: [:each | each isPharoPub];
		generate