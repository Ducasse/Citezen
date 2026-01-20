initialize
initialize
	"self initialize"
	Address := self address.
	Annote := self annote.
	Author := self author. 
	BookTitle := self booktitle.
	Chapter := self chapter.
	Book := self book.
	Editor := self editor.
	Institution := self institution.
	Journal := self journal.
	Note := self note.
	Number := self number. 
	Pages := self pages. 
	PDF := self pdf.
	Publisher := self publisher.
	School := self school.
	Series := self series.
	Volume := self volume.
	Title := self title.
	ImpactFactor := self impactFactor. 
	CZDOI := self DOI.
	HALID := self HALID.
	HALURL := self HALURL.
	"normally we do not need impact factor and HALURL"
	CZURL := self URL.
	Misc := self misc.
	Note := self note. 
	Month := self month.
	Year := self year.
	DefaultFields := {
		self author.
		self title.
		self journal.
		self booktitle.
		self chapter.
		self editor.
		self institution.
		self number.
		self pages.
		self publisher.
		self school.
		self series.
		self volume.
		self month.
		self year.
		self note.
		self URL. 
		self DOI.
		self HALID.
		self misc.
	}
	