builder
PhDAndHabilitation
	^ (CZTypeQuery checks: [ :each | each = #phdthesis ])
		OR: (self annotationWithType: '*habilitation*')