string encoding hooks
treatSignsInString: aString
	"we ask the pillar writer to escape all the special pillar characters."
	^ writer escape: aString