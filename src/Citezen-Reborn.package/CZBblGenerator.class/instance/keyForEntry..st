utils
keyForEntry: anEntry
	"if there is a hal entry emit as author:hal- as in the raweb. Else put simply the key."
	
	^ (anEntry hasFieldWithKey: HALID)
		ifTrue: [(self halKeyForEntry: anEntry)]
		ifFalse: [ anEntry key asString ]