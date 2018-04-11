generated-reduction actions
reduceActionForTEXSTRING1: nodes
	| str |
	str := WriteStream on: String new.
	nodes first do: [ :string | str nextPutAll: string ].
	^ str contents