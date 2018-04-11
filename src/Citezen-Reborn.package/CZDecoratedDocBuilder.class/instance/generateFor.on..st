generate
generateFor: aDoc on: aStream
	| visitor |
	visitor := self generatorClass new.
	fieldOrder ifNotNil: [ visitor fieldOrder: fieldOrder ].
	visitor outputStream: aStream.
	visitor visit: aDoc