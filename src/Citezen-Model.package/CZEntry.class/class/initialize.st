class initialization
initialize
	"self initialize"
	self initializeFieldKeysToRemove.
	"we could say that all the keyx not in the extended set should be removed. This would simplify the logic."
	
	self initializeExtendedFieldKeys.
	
	optionalFieldsDictionary := Dictionary new.
	optionalFieldsDictionary 
		at: Article put: #(volume number pages month note key), self extendedFieldKeys;
		at: Book put: #(volume series address edition month note key), self extendedFieldKeys;
		at: Booklet put: #(author howpublished address month year note key), self extendedFieldKeys;
		at: Conference put: #(editor pages organization publisher address month note key), self extendedFieldKeys;
		at: InBook put: #(volume series address edition month note key), self extendedFieldKeys;
		at: InCollection put: #(editor pages organization publisher address month note key), self extendedFieldKeys;
		at: InProceedings put: #(editor series pages organization publisher address month note key), self extendedFieldKeys;
		at: Manual put: #(author, organization, address, edition, month, year, note, key), self extendedFieldKeys;
		at: MastersThesis put: #(address month note key), self extendedFieldKeys;
		at: Misc put: #(author title howpublished month year note key), self extendedFieldKeys;
		at: PhDThesis  put: #(aaddress month note key), self extendedFieldKeys;
		at: Proceedings put: #(editor publisher organization address month note key), self extendedFieldKeys;
		at: TechReport put: #(type number address month note key), self extendedFieldKeys;
		at: Unpublished put: #(month year key), self extendedFieldKeys
		
	