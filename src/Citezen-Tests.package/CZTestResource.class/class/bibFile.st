test data
bibFile
	^ '
@string{ used = {Never Opened Transactions on Boring Stuff} }
@string{ unused = "baz" }

@article(foobar,
	title = "Hello world",
	author = {Théodule du Cellier de Lagrange},
	journal = used,
	year = 2042
)

@article{barfoo,
	title = "Bye world",
	author = {Auth Hörh and Cow O''Torth and Joe Typist},
	journal = used,
	year = 1984
}

@inproceedings{key3,
	title = {Title 3},
	author = {Author, Third and Fourth Writer},
	booktitle = {Title 4},
	year = 2005
}

@misc{meuh,year=2,month=feb}'
