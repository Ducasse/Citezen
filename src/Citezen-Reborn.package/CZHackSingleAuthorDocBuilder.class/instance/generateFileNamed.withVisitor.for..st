utils
generateFileNamed: aString withVisitor: visitor for: aDoc

 	fieldOrder ifNotNil: [ visitor fieldOrder: fieldOrder ].
 	visitor outputStream: (File named: aString) writeStream.
 	[ visitor visit: aDoc ]
 		ensure: [ visitor outputStream close ]