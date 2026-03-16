instance creation
on: aCZEntry

	czEntry := aCZEntry.

	txtAuthors text: (aCZEntry at: #author) value asString.
	txtYear text: (aCZEntry at: #year) value asString.
	txtTitle text: (aCZEntry at: #title) value asString.
	txtKind text: (aCZEntry type) asString.