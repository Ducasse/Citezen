accessing
value
	"evaluate macros and composite values, and cleanup strings"
	self flag: #design. 
	"why value and raw value neither of them return what is actually stored inside the value field. I was forced to rawValueObject"
	^ value expanded