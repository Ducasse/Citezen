utils
halHrefForField: aHalField
	"Return the http://hal.inria.fr/hal-00957695"
	^ '\href{http://hal.inria.fr/', aHalField value, '}{\path{[hal:', aHalField value,']}}'
 