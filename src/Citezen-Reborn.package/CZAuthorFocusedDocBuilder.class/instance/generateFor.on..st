generate
generateFor: aDoc on: aStream

	| visitor |
	visitor := self configureGenerator.
	fieldOrder ifNotNil: [ visitor fieldOrder: fieldOrder ].
	visitor outputStream: aStream.
	visitor visit: aDoc