accessing
subPhraseFor: anEntry 
	^ (rules
		detect: [:assoc | assoc key value: anEntry]
		ifNone: [nil -> nil])
		value