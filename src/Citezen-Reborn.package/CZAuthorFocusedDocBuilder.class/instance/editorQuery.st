queries
editorQuery
	"We refine it for a single author!: either the author is in the editor field or the entrie is flagged as workshopproceeddings."
	^ (CZFieldQuery
		named: #editor
		checks: [ :value | 
			 self authorMatchingString match: value ])
		OR: (self annotationWithType: '*workshopproceedings*')
	