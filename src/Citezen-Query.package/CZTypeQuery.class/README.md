CZTypeQuery creates queries on the type of an BibTeX entry.

Use the message checks: aBlock on class side.
You should give it a block which takes a parameter.

Example:

@misc{key,
title = { Title 1 }
}

@article{key2,
title = { Title 2 }
}

If you write this query: CZTypeQuery checks: [ :value | value = 'misc' ]
it will select only the first entry.