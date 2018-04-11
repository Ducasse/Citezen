setUp
isString: str1 equalsTo: str2

	| str11 str21 |
	str11 := str1 copyReplaceAll: String crlf with: String cr.
	str21 := str2 copyReplaceAll: String crlf with: String cr.
	^ str11 trimBoth = str21 trimBoth