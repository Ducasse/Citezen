generated-comments
scannerDefinitionComment

	"<newline>		:	\r \n | \n | \r	;
<name>			:	[A-Za-z0-9\!\$\&\*\+\-\.\/\:\;\<\>\?\[\]\^\_\`\|]+	;

<citation>		:	\\ citation	;
<bibcite>			:	\\ bibcite	;
<bibstyle>		:	\\ bibstyle	;
<bibdata>		:	\\ bibdata	;

# tokens parsed by code
<bracedString>	:	\{	;
<junk>			:	.	;"