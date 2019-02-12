as yet unclassified
bibtexBlockToCZEntry: aString
	| bibset |
	
	[ bibset := parserClass parse: aString.]
		on: Error do: [
			errorStream nextPutAll: 'Error : Syntax error in:'; cr; nextPutAll: aString; cr; cr ].
	
	bibset ifNotNil: [ 
		(bibset macros notEmpty) 
			ifTrue: [ 
				macros add: ((bibset macros at: 1)).
				macrosUsage at: ((bibset macros at: 1) key) put: false ].
		(bibset entries notEmpty) 
			ifTrue: [ 
				(bibset entries at: 1) scope: CZSet standardDefinitions.
				entries add: ((bibset entries at: 1)) ]	
	]