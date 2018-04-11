initialize-release
initialize

	super initialize.
	bibset := CZSet withStandardDefinitions.
	blackListedFields := #()