scanning
delimitedTokenId: tokenId from: startChar to: stopChar 
	"Scans stuff between delimiters, taking care of nested delimiters."

	| token |
	self scanUpTo: stopChar ignore: startChar.
	token := SmaCCToken 
				value: outputStream contents
				start: start
				id: (Array with: tokenId).
	matchActions := nil.
	returnMatchBlock value: token