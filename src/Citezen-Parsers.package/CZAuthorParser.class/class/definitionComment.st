generated
definitionComment
"#Definition extracted from old style definition comments
<whitespace>	:	[\s]*	;
<and>			:	a n d	;
<lump>			:	\{ [^}]* \}	;
<name>		:	(<lump> | [^\s,])+	;
	#[a-zA-Z0-9\!\$\&\*\+\-\.\/\:\;\<\>\?\[\]\^\_\`\|]+ ;

authorList :
	author ( <and> author )*
		{ (OrderedCollection with: '1')
			addAll: ('2' collect: [:subcoll | subcoll at: 2]);
			yourself };

author :
	<name>+ ("","" <name>+  ("","" <name>+ )? )?
		{ #buildAuthor: };"