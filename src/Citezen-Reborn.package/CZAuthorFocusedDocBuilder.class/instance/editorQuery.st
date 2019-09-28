queries
editorQuery
	"We refine it for a single author!: the entrie is flagged as workshopproceeddings or as editor. This way papers written by the author that is also editor will not be mixed in the editor zone."

	"we know that this is in the author entries, so he is an editor since he marked it"
	^ (self annotationWithType: '*workshopproceedings*') OR: (self annotationWithType: '*editor*')
	