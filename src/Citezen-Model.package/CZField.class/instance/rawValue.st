accessing
rawValue
	self flag: #design. 
	"why value and raw value neither of them return what is actually stored inside the value field.
	I was forced to introduce rawValueObject"
	^ value notExpanded