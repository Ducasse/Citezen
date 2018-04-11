utils
halHrefForEntry: anEntry
	"Return the http://hal.inria.fr/hal-00957695 in
	\bibitem[11]{abdeen:hal-00957695}\RAsc{H.~Abdeen, S.~Ducasse, D.~Pollet,
  I.~Alloui, J.-R. Falleri},
"
	|halid|
	halid := (anEntry at: HALID) value.
	^ '\href{http://hal.inria.fr/', halid, '}{\path{[hal:',halid,']}]'
 