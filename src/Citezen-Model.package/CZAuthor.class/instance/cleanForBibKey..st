private
cleanForBibKey: aString
	"Return a copy with the first letter capitalized"

	aString isEmpty ifTrue: [ ^ '' ].
	^ String streamContents: [ :str |
		aString do: [ :aChar | 
			aChar isLetter ifTrue: [ str nextPut: aChar asLowercase ]]]
	