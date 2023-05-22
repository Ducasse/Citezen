conversion
convert: aCZEntry 
	
	| converted |
	
	aCZEntry type = #article
		ifTrue: [ converted := CZArticle2 new ].
	aCZEntry type = #book
		ifTrue: [ converted := CZBook2 new ].
	aCZEntry type = #booklet
		ifTrue: [ converted := CZBooklet2 new ].
	aCZEntry type = #conference
		ifTrue: [ converted := CZConference2 new ].
	aCZEntry type = #editor
		ifTrue: [ converted := CZEditor2 new ].
	aCZEntry type = #inbook
		ifTrue: [ converted := CZInBook2 new ].
	aCZEntry type = #incollection
		ifTrue: [ converted := CZInCollection2 new ].
	aCZEntry type = #inproceedings
		ifTrue: [ converted := CZInProceedings2 new ].
	aCZEntry type = #manual
		ifTrue: [ converted := CZManual2 new ].
	aCZEntry type = #mastersthesis
		ifTrue: [ converted := CZMastersThesis2 new ].
	aCZEntry type = #phdthesis
		ifTrue: [ converted := CZPhDThesis2 new ].
	aCZEntry type = #proceedings
		ifTrue: [ converted := CZProceedings2 new ].
	aCZEntry type = #techreport
		ifTrue: [ converted := CZTechReport2 new ].
	aCZEntry type = #unpublished
		ifTrue: [ converted := CZUnpublished2 new ].
	aCZEntry type = #misc
		ifTrue: [ converted := CZMisc2 new ].
	self convertFieldsOf: aCZEntry to: converted.
	^ converted 