file helper
nameOfResultingFile

	^ nameOfResultingFile ifNil: [ nameOfResultingFile := self defaultNameOfResultingFile  ]