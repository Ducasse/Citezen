instance creation
of: aString
	| log |
	log := self new.
	log message: aString.
	^ log