accessing
do: aBlock for: anEntry
	^ (self subPhraseFor: anEntry) ifNotNil: [ :it | aBlock value: it ]