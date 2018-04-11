generated-comments
parserDefinitionComment

	"
TEXSTRING		:	TEXPIECE*		{ | str |		str := WriteStream on: String new.
											nodes first do: [:string | str nextPutAll: string].
											str contents }
;

TEXPIECE		:	accentableCHAR										{ '1' }
				|	other													{ '1' }
				|	special													{ '1' }
				|	<openingBrace> other								{ '2' }
				|	<openingBrace> accentableCHAR					{ '2' }
				|	<dollar>												{ '' } # ignore
;

other			:	<noBackSlash>										{ '1' value }
				|	<closingBrace>										{ '' }
				|	<otherSlashedChar>									{ '1' value }
				|	<underscoredChar> <plainChar>					{ self convert: '2' value as: #underscoredChar }
				|	<nonBreakingSpace>									{ self lookup: #nonBreakingSpace }
;

special			:	specialCHAR											{ '1' }
				|	<openingBrace> specialCHAR <closingBrace>		{ '2' }
;

specialCHAR	:	<acute> accentable									{ self convert: '2' as: #acute }
				|	<grave> accentable									{ self convert: '2' as: #grave }
				|	<circumflex> accentable								{ self convert: '2' as: #circumflex }
				|	<umlaut> accentable									{ self convert: '2' as: #umlaut }
				|	<tilde> accentable									{ self convert: '2' as: #tilde }
				|	<bar> accentable										{ self convert: '2' as: #bar }
				|	<dot> accentable										{ self convert: '2' as: #dot }
				|	<invCircumflex> accentable							{ self convert: '2' as: #invCircumflex }
				|	<arc> accentable										{ self convert: '2' as: #arc }
				|	<doubleQuote> accentable							{ self convert: '2' as: #doubleQuote }
				|	<ccedilla>												{ self lookup: #ccedilla }
				|	<scedilla>												{ self lookup: #scedilla }
				|	<tcedilla>												{ self lookup: #tcedilla }
				|	<inversedQuestionMark>								{ self lookup: #inversedQuestionMark }
				|	<doubleSlash>										{ self lookup: #doubleSlash }
				|	<smallRingedA>										{ self lookup: #smallRingedA }
				|	<capitalRingedA>										{ self lookup: #capitalRingedA }
				|	<optionalHyphen>									{ '' } # ignore
				|	<ampersand>											{ self lookup: #ampersand }
				|	<percent>												{ self lookup: #percent }
				|	<hash>												{ self lookup: #hash }
				|	<circlea>												{ self lookup: #circlea }
				|	<nu>													{ self lookup: #nu }
				|	<pi>													{ self lookup: #pi }
				|	<tau>													{ self lookup: #tau }
				|	<omega>												{ self lookup: #omega }
				|	<neq>													{ self lookup: #neq }
				|	<wedge>												{ self lookup: #wedge }
				|	<endash>												{ self lookup: #endash }
				|	<emdash>											{ self lookup: #emdash }
;

# Treat a char in curly braces like a regular char
accentable		:	accentableCHAR										{ '1' }
				|	<openingBrace> accentableCHAR <closingBrace>	{ '2' }
;

accentableCHAR	 :	<plainChar>										{ '1' value }
				|	<oe>													{ self lookup: #oe }
				|	<ae>													{ self lookup: #ae }
				|	<ss>													{ self lookup: #ss }
				|	<smallSlashedO>										{ self lookup: #smallSlashedO }
				|	<capitalSlashedO>									{ self lookup: #capitalSlashedO }
				|	<iForm>												{ self lookup: #iForm }
				|	<jForm>												{ self lookup: #jForm }
				|	<barredL>												{ self lookup: #barredL }
				|	<capitalBarredL>										{ self lookup: #capitalBarredL }
;
"