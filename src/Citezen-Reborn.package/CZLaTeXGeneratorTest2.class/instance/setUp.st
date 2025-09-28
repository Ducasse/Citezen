setup
setUp
	super setUp.
		book := (CZBibParser
		parse:
			'	
@book{Duca24a,
  author = {S{\''e}phane Ducasse},
  title = {Building a minimal reflective kernel},
  pages = {80},
  publisher = {Book on Demand -- Keepers of the lighthouse},
  year = {2024},
  url = {http://books.pharo.org},
  annote = {book},
  isbn = {9782322506187},
  hal-pdf = {https://hal.science/hal-04888214},
  hal-id = {hal-04888214}}
') entries at: 1