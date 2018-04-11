A bibliographic entry representing a single document or unit published work.

A BibTeX entry: 

@misc{barr10a,
	title = {Comment example}
}

3 informations: 
- "misc" is the TYPE of the entry
- "barr10a" is the KEY of the entry
- "title = {Comment example}" is a FIELD

So, a BibTeX entry respects this template:
@type{key,
	key = value,
	key = value,
	...
}

Most useful messages are:
- at: aSymbol -> returns the CZField for the field aSymbol
- at: aSymbol put: aValue  -> creates a CZField containing aValue and puts it at the key aSymbol
- fields and fields: aCollection -> getter & setter for the field collection
- hasField: aSymbol -> returns true/false if the entry has/has not a field with key=aSymbol
- key and key: aSymbol -> getter & setter for the key
- type and type: aSymbol aSymbol -> getter & setter for the key

These entries are stored in CZSet>>entries.