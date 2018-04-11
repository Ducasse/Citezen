utils
doiHrefForField: aDoiField
	"Return the \href {http://dx.doi.org/10.1016/j.scico.2014.07.011}
  {\path{[doi:10.1016/j.scico.2014.07.011] }}, "
	^ '\href{http://dx.doi.org/', aDoiField value, '}{\path{[doi:', aDoiField value,']}}'
 