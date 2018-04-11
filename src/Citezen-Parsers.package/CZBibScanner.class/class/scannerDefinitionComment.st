generated-comments
scannerDefinitionComment

	"<whitespace>	:	[ \t\r\n]*	;
<comment>	:	\% [^\r\n]*	;
<number>	:	[0-9]+ ;
<name>		:	[A-Za-z0-9\!\$\&\*\+\-\.\/\:\;\<\>\?\[\]\^\_\`\|]+	;
<quotedString>	:	\"" [^\""]* \""	;

<stringTag>	:	\@ ( string | String | STRING )	;
<commentTag>	:	\@ ( comment | Comment | COMMENT )	;

# tokens parsed by code
<bracedString>	:	\{	;
<parenthesizedString>	:	\(	;
"