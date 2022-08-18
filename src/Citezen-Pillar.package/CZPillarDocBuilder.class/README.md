Generate pillar descriptions

!!Supported features

- keysOfBlackListedEntries:
- fileNamed: 'rmod.bib';
- authorMatchingString:
- fieldOrder:

!! Example

| builder |
builder := self new
			fileNamed: 'rmod.bib';
			authorMatchingString: '*Ducasse*';
			french.
builder generate.	
		