querying
phraseFor: anEntry
	^ self class phraseFor: anEntry
	"^ phrases
		at: anEntry type
		ifAbsentPut: [self class phraseFor: anEntry]"