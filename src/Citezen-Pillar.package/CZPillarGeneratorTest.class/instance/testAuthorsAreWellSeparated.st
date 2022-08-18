setUp
testAuthorsAreWellSeparated
	"self debug: #testAuthorsAreWellSeparated"

	| result |
	result := ((self generatorClass new  fieldOrder: #(#author #title #chapter #journal #booktitle #volume #pages #publisher #school #year #url #doi #'hal-id')) visit: articleEntry) contents.
	
	self assert: (self 
				isString: result  withInternalLineEndings equalsTo: '# I. Herman, G. Melançon and M. S. Marshall,  ""Graph Visualization and Navigation in Information Visualization: A Survey"",  In ''''IEEE Transactions on Visualization and Computer Graphics'''', 6, 24\-\-43, IEEE Educational Activities Department, 2000, *DOI>https://doi.org/10.1109/2945.841119*
' withInternalLineEndings)