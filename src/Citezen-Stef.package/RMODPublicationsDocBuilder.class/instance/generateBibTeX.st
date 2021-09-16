unused
generateBibTeX
	"with this we will be able to do a nocite{*} and get all the references in our lovely report"
	| visitor |
	self halt.
	visitor := CZBibTexGenerator new.
	visitor
		fieldOrder:
			#(#author #title #chapter #journal #booktitle #volume #pages #publisher #school #year #doi).
	visitor outputStream: self bibtexFileName asFileReference writeStream.
	visitor visit: workingBibSet