running
setUp
	bibset := CZBibParser parse: 
	'
	@article { a1,
		author = {Barreau, Adrien},
		title = {title1}
	}
	
	@article { a3,
		author = {Barreau, Adrien},
		title = {title2},
		year = 2003
	}
	
	@article { a2,
		author = {Toto, Robert},
		title = {title3},
		year = 2005
	}
	
	@unpublished { u1,
		author = {Barreau, Adrien},
		title = {titleUn1},
		year = 2005
	}
	
	@misc { m1,
		author = {Toto, Robert},
		title = {title4},
		year = 2000
	}
	'