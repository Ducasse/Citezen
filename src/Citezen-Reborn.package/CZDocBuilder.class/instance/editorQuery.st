queries
editorQuery
	"We redefine the query to have a clear scope"

	^ (CZFieldQuery
		named: #editor
		checks: [ :value | self authorMatchingString match: value ])
		OR: (self annotationWithType: '*workshopproceedings*')
