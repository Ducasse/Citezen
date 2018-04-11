displaying
fullName
	| stream |
	stream := String new writeStream.
	self displayFullNameOn: stream.
	^ stream contents