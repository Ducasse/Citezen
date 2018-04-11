as yet unclassified
errorString
	^ errorStream contents trimRight ifEmpty: [ 'No error' ]