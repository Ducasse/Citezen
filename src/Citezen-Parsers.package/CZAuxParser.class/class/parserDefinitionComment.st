generated-comments
parserDefinitionComment

	"%id <bracedString> <citation> <bibcite> <bibstyle> <bibdata> <any>;
%start AuxFile;

AuxFile :
	#nothing
	| AuxFile Line
	| AuxFile (<newline>|<junk>|<name>) ;
	
Line :
	ReferenceCitation
	| ReferenceDefinition
	| StyleDeclaration
	| DatabaseDeclaration ;

ReferenceCitation :
	<citation> ""{"" <name> 'key' ""}"" { self addCitation: key value };

ReferenceDefinition : # not sure we care about this one
	<bibcite> ""{"" <name> ""}"" <bracedString> ;

StyleDeclaration :
	<bibstyle> ""{"" <name> 'style' ""}"" { self style: style value };

DatabaseDeclaration :
	<bibdata> ""{"" <name> 'name' ( "","" <name> )* 'names' ""}""
		{ self addDatabase: name value;
			addDatabases: (names collect: [:each | each second]) };
"