building
generateBibTeX
	"with this we will be able to do a nocite{*} and get all the references in our lovely report"
	| visitor |
	visitor := CZBibTexGenerator new.
	visitor
		fieldOrder:
			#(#author #title #chapter #journal #booktitle #volume #pages #publisher #school #year #impactfactor #misc #url #doi).
	visitor outputStream: (FileStream forceNewFileNamed: self bibtexFileName).
	visitor visit: workingBibSet