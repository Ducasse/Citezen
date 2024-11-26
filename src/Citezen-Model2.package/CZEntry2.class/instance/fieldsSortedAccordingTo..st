enumerating
fieldsSortedAccordingTo: aCol
	"Returns a collection of fields as specified by the keys given in aCol, if a key in the receiver is not present in the argument, put it at the end. If you want to only get the field as specified by the argument use the companion message fieldsFilteredAndSortedAccordingTo:"
	
	| fieldCol keysCol toPutAtEnd |
	fieldCol := OrderedCollection new: aCol size.
	keysCol := OrderedCollection new.
	aCol do: 
		[ :each | 
		| res |
		res := self at: each ifAbsent: nil.
		res ifNotNil: [
				fieldCol add: res.
				keysCol add: res key]]. 
	toPutAtEnd := self fieldKeys removeAll: keysCol; yourself. 
	toPutAtEnd do: [ :each | fieldCol addLast: (self at: each)].
	^ fieldCol