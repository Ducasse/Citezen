generated-comments
parserDefinitionComment

	"## See http://www.gerg.ca/software/btOOL/doc/bt_language.html

%id <bracedString> <parenthesizedString>;
%start Bibfile BodyContents Field;

## outer parser rules
Bibfile :
	(CommentDeclaration | MacroDeclaration | EntryDeclaration)*
		{ CZSet fromDeclarations: ('1' reject: [:it | it isNil]) };

EntryDeclaration :
	""@"" <name> (<parenthesizedString> | <bracedString>)
		{ #buildEntry: };

MacroDeclaration :
	<stringTag> (<parenthesizedString> | <bracedString>)
		{ #buildMacro: };

CommentDeclaration :
	<commentTag> (<parenthesizedString> | <bracedString>)
		{ nil };


## inner parser rules
BodyContents :
	<name> ("","" Field)* { '1' value asSymbol -> ('2' collect: [:each | each at: 2]) };

Field :
	<name> ""="" Value { ('3' isKindOf: CZValue)
		ifTrue: [ CZField key: '1' value asSymbol value: '3' ]
		ifFalse: [ CZField key: '1' value asSymbol rawValue: '3' ]};

Value :
	SimpleValue ( ""#"" SimpleValue )*
		{ '2' isEmpty
			ifTrue: [ ('1' isKindOf: String) ifTrue: [ '1' trimBoth ] ifFalse: [ '1' ]]
			ifFalse: [(CZCompositeValue with: '1')
				addAll: ('2' collect: [:subcoll | subcoll at: 2]);
				yourself] };

SimpleValue :
	<quotedString> { '1' value allButFirst allButLast }
	| <bracedString> { '1' value allButFirst allButLast }
	| <number> { '1' value asNumber }
	| <name> { CZMacroReference with: '1' value asSymbol };
"