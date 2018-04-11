building
createSubTopic: file title: name text: text bibTag: bibTag
	"I should create a new file so each CZDoc should be mapped to a file"

	| ndoc section |
	ndoc := CZDoc new title: 'Topics based publications'.
	section := CZSection new 
						title: (CZString new setValue: name); 
						text: (CZText new text: text; yourself);
						items: (CZSet new addAll: (self bibEntriesFor: bibTag); yourself); yourself.
	ndoc add: section. 
	^ ndoc