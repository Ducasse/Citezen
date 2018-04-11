as yet unclassified
checks
	| newEntries newFields newMacros toBeDeleted toBeInclude error |
	
	keys := Dictionary new.

	macros addAll: (CZSet standardDefinitions macros).
	
	"Don't display that some month macros are defined but not used"
	(CZSet standardDefinitions macros) do: [ :each | macrosUsage at: each key put: true ].
	
	newEntries := OrderedCollection new.
	macroKeys := macros collect: [ :each | each key ].

	entryKeys := entries collect: [ :each | each key ].
	
	index := 0.
	entries do: [ :entry |
		toBeInclude := true.	
		error := false.
		
		index := index + 1.
		
		"checks if the type of the entry is a correct bibtex type"
		(self checkBibtexType: entry)
			ifFalse: [ 
				error := true.
				toBeInclude := false ].
			
		newFields := OrderedCollection new.
		fieldKeys := OrderedCollection new.
		entry fields do: [ :field |
			toBeDeleted := false.
			
			"checks the macros referenced in the entry and removes fields with undefined macros"
			(self checkMacroReferenced: field)
				ifFalse: [ toBeDeleted := true ].
			
			toBeDeleted ifFalse: [	
				"removes empty fields"
				(self checkEmptyField: field)
					ifFalse: [ toBeDeleted := true ] ].

			"removes duplicate fields"
			(self checkDuplicateField: field)
				ifFalse: [ toBeDeleted := true ].
				
			toBeDeleted 
				ifFalse: [ newFields add: field ] 
				ifTrue: [ error := true ]
		].
		entry fields: newFields.
		
		"checks if the entry contains all the fields needed by it's type"
		((typeFieldsMatching at: (entry type)) value: (entry fields collect: [ :each | each key ]))
			ifFalse: [
				errorStream nextPutAll: 'Error: Entry does not contain all needed fields'; cr.
				error := true.
				toBeInclude := false ].
		
		"checks if the key is unique and changes it if it's not"
		"keys at: entry key put: ((keys at: entry key ifAbsent: 0) + 1).
		((keys at: entry key) > 1)
			ifTrue: [ | key |
				key := entry key.
				entry key: '###',(entry key, '_',(keys at: entry key) asString,'###' ).
				errorStream nextPutAll: 'Warning: duplicate key: ', key, ' changed to: ', entry key; cr.
		error := true ]."
		
		"checks if the entry respects all the rules"	
		rules do: [ :rule |
			"(rule value value: entry)"
			(rule check: entry)
				ifFalse: [
					errorStream nextPutAll: 'Error : entry does not respect the rule: ', rule explanation; cr.
					error := true.
					toBeInclude := false ] ].	
		
		"displays the errors and creates the collection with safe entries"
		error ifTrue: [
			((toBeInclude not) | (warnings & toBeInclude))
			ifTrue: [
				errorStream 
					nextPut: Character tab; 
					nextPutAll: 'for :'; 
					cr;
					nextPutAll: "assoc value; "
					
					"(CZBibtexOutputer new entryToBibtexString:" entry	")";
					cr.
			].
			toBeInclude 
				ifTrue: [
					warnings ifTrue: [
						newEntries add: entry.
						errorStream nextPutAll: '(There are only warnings, the entry is not deleted)'; cr; cr ] ]
				ifFalse: [
					errorStream nextPutAll: '(There are errors, the entry is deleted)'; cr; cr ]
		]
	].
	entries := newEntries.

	"removes unused macros"
	newMacros := OrderedCollection new.
	macros do: [ :macro | 
		(macrosUsage at: macro key)
			ifFalse: [ errorStream nextPutAll: 'Unused macro:'; cr; nextPutAll: macro; cr; cr ]
			ifTrue: [  newMacros add: macro ]	
	].
	macros := newMacros.
	
	errorStream close.
	
	Smalltalk at: #Console ifPresent: [ :console | console print: (self errorString copyReplaceAll: String cr with: String crlf) ].
	
	^ self errorString