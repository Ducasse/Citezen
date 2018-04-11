testing
testAuthorSingleNoFirstName
	| authorString authors |
	authorString := ' Nierstrasz'.
	authors := CZAuthorParser parse: authorString.
	self assert: (authors at: 1) lastNames asArray = #('Nierstrasz' )