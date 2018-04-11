accessing
expanded
	"evaluate recursively and concatenate"
	| aStream |
	aStream := WriteStream on: String new.
	value do: [ :each | aStream nextPutAll: each expanded ].
	^ aStream contents 