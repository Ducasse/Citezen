setup
setUp
	
	hani := CZInProceedings new
		key: #Abde08a;
		author: 'Hani Abdeen and Ilham Alloui and St\''ephane Ducasse and Damien Pollet and Mathieu Suen'.
		
entry := (CZBibParser
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
 }') entries first.

	inproceedingsEntry := (CZBibParser
		parse:
			'	
@inproceedings{Nier04d,
  Abstract     = {In this paper we briefly review various kinds of
                  software changes and the issues that arise from
                  them. As a consequence, we propose research into
                  programming languages with explicit support for
                  representing first-class changes, and for
                  manipulating and merging multiple viewpoints of
                  evolving software systems.},
  Annote       = {internationalworkshop},
  Author       = {Oscar Nierstrasz and Marcus Denker},
  Booktitle    = {OOPSLA Workshop on Revival of Dynamic Languages},
  Cvs	       = {RDLchange},
  Keywords     = {snf05 scg-pub skip-doi jb05 pharo fromscgbib},
  Month	       = oct,
  Title	       = {Supporting Software Change in the Programming
                  Language},
  Url	       =
                  {http://rmod.lille.inria.fr/archives/workshops/Nier04d-RDL04-Change.pdf},
  Year	       = {2004}
}') entries at: 1.