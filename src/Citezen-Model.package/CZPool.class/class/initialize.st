initialize
initialize
	"self initialize"
	Address := self address.
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
	Publisher := self publisher.
	School := self school.
	Series := self series.
	Volume := self volume.
	Title := self title.
	ImpactFactor := self impactFactor. 
	DOI := self DOI.
	HALID := self HALID.
	URL := self URL.
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
	