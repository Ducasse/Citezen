setup
setUp

	bibset := CZBibParser parse: '
	@article{Herm00a,
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
 }

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
  Keywords     = {snf05 scg-pub skip-doi jb05 fromscgbib},
  Month	       = oct,
  Title	       = {Supporting Software Change in the Programming
                  Language},
  Url	       =
                  {http://rmod.lille.inria.fr/archives/workshops/Nier04d-RDL04-Change.pdf},
  Year	       = {2004}
}

@article{Lava10b,
  title = {Supporting Simultaneous Versions for Software Evolution Assessment},
  author       = {Jannik Laval and Simon Denier and Stephane Ducasse and Jean-Remy Falleri},
  journal	   = {Journal of Science of Computer Programming (SCP) (Accepted with minor revisions)},
  annote       = {internationaljournal},
  keywords     = {insubmission sub lse-pub moose-pub},
  year	= {2010},
  month = may,
  inriaOPT = {RMOD},
  aeres	       = {ACL},
  aeresstatus  = {aeres12},
  labo		   = {dans},
  inria	       = {RMOD},
  selectif     = {oui},
  abstract = {No abstract}
}
	
	@mastersthesis{Peirs08a,
  author       = {Romain Peirs},
  title	       = {Enhanced Dependency Structure Matrix},
  year	       = {2008},
  abstract     = {Dependency Structure Matrix (DSM) is an approach taken from
                  process optimization and it exists a variety of algorithms
                  to help organizing the matrix in a form that reflects the
                  architecture and highlights patterns and problematic
                  dependencies. However, the existing DSM implementations have
                  a lack of information in their visualization. That is why, we
                  enhanced DSM by adding written and colored information in the
                  visualization to improve the architecture understanding of a
                  software system and the support of its remodularization. This
                  visualization has been implemented on top of Moose which is a
                  collaborative research platform for Software Analysis and
                  Information Visualization. This report presents my
                  internship done at the research centre INRIA Lille - Nord
                  Europe with the RMoD Team led by S. Ducasse.},
  annote       = {master cook},
  school       = {Enseita}
 }

@inproceedings{Robb10a,
	Author = {Robbes, Romain and Pollet, Damien and Lanza, Michele},
	Title = {Replaying IDE Interactions to Evaluate and Improve Change Prediction Approaches},
	Booktitle = {7th IEEE Working Conference on Mining Software Repositories (MSR)},
	Publisher = {IEEE Computer Society},
	Month = may,
	Year = {2010},
	keywords = {lse-pub},
	annote       = {internationalconference},
	misc = {Acceptance rate: 16/51 = 31.4\%}
}

@inproceedings{Seng05,
 author = {Seng, Olaf and Bauer, Markus and Biehl, Matthias and Pache, Gert},
 title = {Search-based improvement of subsystem decompositions},
 booktitle = {GECCO ''05: Proceedings of the 2005 conference on Genetic and evolutionary computation},
 year = {2005},
 isbn = {1-59593-010-8},
 pages = {1045--1051},
 location = {Washington DC, USA},
 doi = {10.1145/1068009.1068186},
 publisher = {ACM},
 address = {New York, NY, USA}
 }

'.
	
