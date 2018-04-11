CZFieldQuery creates queries on a specified field of a BibTeX entry.

Use the message named: aSymbol checks: aBlock on class side.
You should give it a symbol which is the key of the field, and a block which takes a parameter.

Example:

@misc{key,
title = { Title 1 }
year = 2000
}

@misc{key2,
title = { Title 2 }
}

If you write this query: 
CZFieldQuery named: #title checks: [ :value | '*1*' match: value ]
it will select only the first entry.

You could also check if an entry has a field with: existingFieldNamed: aSymbol (still on class side).

If you write that: 
CZFieldQuery existingFieldNamed: #year
it will select only the first entry too.
