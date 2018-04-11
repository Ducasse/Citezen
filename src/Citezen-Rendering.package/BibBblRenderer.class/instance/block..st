rendering
block: aBlock
	firstBlock ifFalse: [self newline; text: '\newblock '].
	aBlock value.
	"firstBlock := false is done in #text: instead of here because phrases have nested blocks"