utils
halUrlForEntry: anEntry
	"Return the author:halid
	for example: abdeen:hal-00957695 in
	\bibitem[11]{abdeen:hal-00957695}\RAsc{H.~Abdeen, S.~Ducasse, D.~Pollet,
  I.~Alloui, J.-R. Falleri},
"

	^ 'http://hal.inria.fr', (anEntry at: HALID) value
 