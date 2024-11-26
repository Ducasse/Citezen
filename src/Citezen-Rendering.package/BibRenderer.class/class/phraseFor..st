querying
phraseFor: anEntry
	"Return a template phrase, named by the entry type, and built from the matching method in protocol phrases-entries."
	| selector |
	selector := anEntry type.
	^ ((self class allSelectorsInProtocol: 'phrases-entries') includes: selector)
 "BibPhraseLibrary class"		ifTrue: [(self perform: selector) named: selector]
		ifFalse: [self errorPhrase: anEntry]