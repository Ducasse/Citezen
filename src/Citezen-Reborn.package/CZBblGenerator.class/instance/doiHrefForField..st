utils
doiHrefForField: aDoiField
	"Return the \href {https://doi.org/10.1016/j.scico.2014.07.011}
  {\path{[doi:10.1016/j.scico.2014.07.011] }}, "

	^ '\href{https://doi.org/', aDoiField value, '}{\path{[doi:', aDoiField value,']}}'
 
