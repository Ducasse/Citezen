generated-comments
parserDefinitionComment

	"authorList :
	author ( <and> author )*
		{ (OrderedCollection with: '1')
			addAll: ('2' collect: [:subcoll | subcoll at: 2]);
			yourself };

author :
	<name>+ ("","" <name>+ )? ("","" <name>+ )?
		{ #buildAuthor: };
"