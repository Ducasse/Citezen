CZEntryQuery resolves the query in the value: message.
This message takes a CZEntry as parameter.
The 3 subclasses just change what they send to super value:

Remember the pattern of a BibTeX entry:
@type{key,
field1 = value1,
field2 = value2,
...
}

- If you want to create queries on the type, use: CZTypeQuery
- If you want to create queries on the key, use: CZKeyQuery
- If you want to create queries on a field, use: CZFieldQuery

Take a look at their class comments.