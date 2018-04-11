CZDuplicateIdentifier is responsible to find duplicates into either a single bibset or between multiple bibsets (where we can specify which one take precedence).

| dup load |
dup := CZDuplicateIdentifier new.
dup withoutInternalKeyDuplicates: (CZFileLoader bibFromFileNamed: 'rmod.bib') .
(dup keyBasedDuplicates) inspect.
	

| dup load |
dup := CZDuplicateIdentifier new.
dup withoutInternalTitleDuplicates: (CZFileLoader bibFromFileNamed: 'rmod.bib') .
(dup titleBasedDuplicates) inspect.
	
| dup load |
dup := CZDuplicateIdentifier new.
dup keysThatAreIn: (CZFileLoader bibFromFileNamed: '/Users/ducasse/Workspace/SimpleFiles/LSEFiles/lse-bib/bib/rmod.bib') butNotIn:  (CZFileLoader bibFromFileNamed: '/Users/ducasse/Workspace/SimpleFiles/LSEFiles/lse-bib/bib/rmodWithDuplicatesButTag.bib')

