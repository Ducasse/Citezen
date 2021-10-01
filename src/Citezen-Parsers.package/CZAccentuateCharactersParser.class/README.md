I'm parser that handle St\'ephane kind of accents present in LaTeX. 
I convert then such accents to either HTML or accentuated characters.

You can configure me for that sending to my class the following messages: 

```
CZAccentuateCharactersParser toAccentedCharTable
CZAccentuateCharactersParser toHtmlTable
```

Now the configuration is ignored by the parse: method and the right way to get accentuated characters is to use `parseToAccentedChars:`

```
CZAccentuateCharactersParser parseToAccentedChars: 'St\''ephane'
```


Usually this is the responsibility of the document visitor to be configured correctly. 
Check the method `setEncodedCharacterTransformationTable` in the different generators (CZHTMLGenerator and CZPillarGenerator).

This allows one to nicely handle strings representing people name and firstname:

```
visitPeople: aCZPeople

	aCZPeople perform: expandOption.
	self outputStream nextPutAll: (self treatString: aCZPeople notExpanded)

treatString: aString
	"There are two aspects that should be covered: 
		- handling tex encodings ie. \' or \& or \'{o} to be turned into the correct glyph
		- strange characters that are meta characters in different outputs."

	^ self treatSignsInString: (self treatTexEncoding: aString) 
```
