public api
onStream: aStream

	| bibset2 |
	bibset2 := CZBibParser parse: aStream contents.
	bibset2 scope: CZSet standardDefinitions.
	self bibset: bibset2
	