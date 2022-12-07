accessing
filter: author in: aString
      |fileRef filterSet|
	fileRef := (FileLocator workingDirectory / aString) asFileReference.
	fileRef exists ifFalse: [ 
		Stdio stdout
			nextPutAll: 'The file ';
			nextPutAll: aString;
			nextPutAll: ' is not found.'.
		^ self ].
	  filterSet := CZSet new.
     (bibset entries) do: [:each |  author = ((each at: #author value) rawValue)
					ifTrue: [ filterSet addEntry: each ]].
        
    ^ CZFileSaver new bibset: filterSet ; saveTo: aString