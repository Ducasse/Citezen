A CZSet is a set of bibliographic entries and macro definitions, equivalent of a .bib BibTeX file.

Most useful messages: 
- addEntry: aCZEntry and addMacro: aCZField -> add the entry or the macro, and put self as its scope
- entries & entries: aCollection -> getter and setter for the entries collection
- entryAt: aSymbol & entryAt: aSymbol ifAbsent: aBlock -> returns the entry which has aSymbol as key
- entryAt: aSymbol put: anEntry -> put (or replace) the entry at the key aSymbol
- macroAt: aSymbol & macroAt: aSymbol ifAbsent: aBlock & macroAt: aSymbol put: aCZField -> same things than the three previous messages

CZSet has the withStandardDefinition constructor. It returns a CZSet with the definition of 12 macros for all the months (jan = january, ...).