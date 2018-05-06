Generate pillar descriptions. Should replaced (and be renamed into CZPillarDocBuilder)

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
		french; 
		setFilteringOn.
builder generate.	
		