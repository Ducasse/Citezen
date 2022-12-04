conversion
convert: aCZEntry 
	
	| converted |
	
	aCZEntry type = #article
		ifTrue: [ converted := CZArticle new ].
	aCZEntry type = #book
		ifTrue: [ converted := CZBook new ].
	aCZEntry type = #booklet
		ifTrue: [ converted := CZBooklet new ].
	aCZEntry type = #conference
		ifTrue: [ converted := CZConference new ].
	aCZEntry type = #editor
		ifTrue: [ converted := CZEditor new ].
	aCZEntry type = #inbook
		ifTrue: [ converted := CZInBook new ].
	aCZEntry type = #incollection
		ifTrue: [ converted := CZInCollection new ].
	aCZEntry type = #inproceedings
		ifTrue: [ converted := CZInProceedings new ].
	aCZEntry type = #manual
		ifTrue: [ converted := CZManual new ].
	aCZEntry type = #mastersthesis
		ifTrue: [ converted := CZMastersThesis new ].
	aCZEntry type = #phdthesis
		ifTrue: [ converted := CZPhDThesis new ].
	aCZEntry type = #proceedings
		ifTrue: [ converted := CZProceedings new ].
	aCZEntry type = #techreport
		ifTrue: [ converted := CZTechReport new ].
	aCZEntry type = #unpublished
		ifTrue: [ converted := CZUnpublished new ].
	aCZEntry type = #misc
		ifTrue: [ converted := CZMisc new ].
	self convertFieldsOf: aCZEntry to: converted.
	^ converted 