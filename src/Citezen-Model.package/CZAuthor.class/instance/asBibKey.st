displaying
asBibKey
	"in lowercase and without \'{ and \' in the string"
	^ String streamContents: [:stream |
		self displayAsBibKeyOn: stream ]