example
scgDownaloader
	"to download all the pdfs from unibe"
	<example>
	| b c |
	b := (CZBibParser
			parse: (FileSystem workingDirectory / 'rmod.bib') readStream contents)
			select: [ :each | '*Ducasse*' match: each author value ].

	c := OrderedCollection new. 
	b do: [ :each | 
				each url value ifNotEmpty: [ :s | 
					('*unibe*' match: s) ifTrue: [  
						c add: (each key value -> s)]]].
	c do: [ :each | 
		ZnClient new 
			url: each value ; 		
			downloadTo: FileSystem workingDirectory ]