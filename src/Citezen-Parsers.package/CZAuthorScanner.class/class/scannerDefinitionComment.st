generated-comments
scannerDefinitionComment

	"<whitespace>	:	[\s]*	;
<and>			:	a n d	;
<lump>			:	\{ [^}]* \}	;
<name>		:	(<lump> | [^\s,])+	;
	#[a-zA-Z0-9\!\$\&\*\+\-\.\/\:\;\<\>\?\[\]\^\_\`\|]+ ;
"