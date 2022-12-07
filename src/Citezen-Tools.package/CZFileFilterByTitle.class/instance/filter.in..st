accessing
filter: author in: aString
      |wrongListFilter fileRef filterSet|
	fileRef := (FileLocator workingDirectory / aString) asFileReference.
	fileRef exists ifFalse: [ 
		Stdio stdout
			nextPutAll: 'The file ';
			nextPutAll: aString;
			nextPutAll: ' is not found.'.
		^ self ].
	bibset := [ CZBibParser bibFromFileReference: fileRef ]
		      on: SmaCCParserError
		      do: [ :ex | 
			      | context |
			      context := ex signalerContext.
			      [ 
			      context sender isNil or: [ 
				      context sender selector = #buildEntry: ] ] whileFalse: [ 
				      context := context sender ].
			      "super ugly isn't!"
			      context sender isNil
				      ifTrue: [ 
					      Stdio stdout nextPutAll: 'Citezen cannot parse the file.'.
					      ^ self ]
				      ifFalse: [ 
					      context := context sender.
					      Stdio stdout
						      nextPutAll: 'Citezen cannot parse:  ';
						      nextPutAll:
							      ((context at: 1) at: 3) value allButFirst allButLast.
					      ^ self ] ].
     wrongListFilter := CZSet new.
	  filterSet := CZSet new.
     (bibset entries) do: [:each |  author = ((each at: #title value) rawValue)
					ifTrue: [ filterSet addEntry: each ]].
        
    ^ CZFileSaver new bibset: filterSet ; saveTo: aString