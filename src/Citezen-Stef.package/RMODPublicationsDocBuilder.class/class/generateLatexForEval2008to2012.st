generation
generateLatexForEval2008to2012
	"normally this is four years so we should stop in 2011 but there are fuzy so let us go until 2012"

	"self generateLatexForEval2008to2012"

	| builder |
	builder := self new
		toLatex;
		english;
		fileNamed: 'rmod.bib';
		fieldOrder:
			#(#author #title #chapter #journal #booktitle #volume #pages #publisher #school #year #impactfactor #misc #url #doi);
		startingYear: 2008;
		setFilteringOn;
		yourself.
	builder generateLatexFile