instance creation
default
	"defaultInstance := nil"
	^ defaultInstance ifNil: [defaultInstance := self new]