setUp
setUp 

	formatGenerator := self generatorClass new fieldOrder: #(#author #title #chapter #journal #booktitle #volume #pages #publisher #school #year #url #doi #'hal-id'); yourself.
	articleEntry := (CZBibParser
		parse:
			'	@article{Herm00a,
 author = {Herman, Ivan and Melan\c{c}on, Guy and Marshall, M. Scott},
 title = {Graph Visualization and Navigation in Information Visualization: A Survey},
 journal = {IEEE Transactions on Visualization and Computer Graphics},
 volume = {6},
 number = {1},
 year = {2000},
 issn = {1077-2626},
 pages = {24--43},
 doi = {10.1109/2945.841119},
 publisher = {IEEE Educational Activities Department},
 address = {Piscataway, NJ, USA}
 }') entries first