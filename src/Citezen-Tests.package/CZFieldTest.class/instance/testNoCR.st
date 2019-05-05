testsForInstances
testNoCR
	| bibSet withCR |
	bibSet := (CZBibParser parse: '@article{Wuyt05a,
	Abstract = {Software for embedded systems must cope with a
 variety of stringent constraints, such as real-time
 requirements, small memory footprints, and low power
 consumption. It is usually implemented using
 low-level programming languages, and as a result has
 not benefitted from component-based software
 development techniques. This paper describes a
 \emph{data-centric component model} for embedded
 devices that (i) minimizes the number of concurrent
 tasks needed to implement the system, (ii) allows
 one to verify whether components meet their
 deadlines by applying Rate Monotonic Analysis (RMA),
 and (iii) can generate and verify schedules using
 Constraint Logic Programming (CLP). This model forms
 the foundation for a suite of tools for specifying,
 composing, verifying and deploying embedded software
 components developed in the context of the \pecos
 project.},
	Annote = {internationaljournal},
	Author = {Roel Wuyts and St\''ephane Ducasse and Oscar Nierstrasz},
	Doi = {10.1016/j.jss.2003.05.004},
	Journal = {Journal of Systems and Software --- Special Issue on Automated Component-Based Software Engineering},
	Keywords = {scg-pub jb03 pecos stefPub kzComponent kzLanguageDesign},
	Misc = {SCI impact factor 0.744},
	Number = {1},
	Pages = {25--34},
	Publisher = {Elsevier},
	Title = {A Data-centric Approach to Composing Embedded, Real-time Software Components},
	Url = {http://rmod.inria.fr/archives/papers/Wuyt05aPecosElsevier.pdf},
	Volume = {74},
	Year = {2005}}').
	withCR := bibSet entries first.
	self assert: ((withCR at: #abstract) value at: 47) equals: Character cr.
	(withCR at: #abstract) fixCRs.	
	self assert: ((withCR at: #abstract) value at: 47) equals: Character lf.
