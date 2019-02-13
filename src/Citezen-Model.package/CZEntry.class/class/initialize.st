class initialization
initialize
	"self initialize"
	self initializeFieldKeysToRemove.
	"we could say that all the keyx not in the extended set should be removed. This would simplify the logic."
	
	self initializeExtendedFieldKeys.
	
	optionalFieldsDictionary := Dictionary new.
	optionalFieldsDictionary 
		at: #article put: #(volume number pages month note key), self extendedFieldKeys;
		at: #book put: #(volume series address edition month note key), self extendedFieldKeys;
		at: #booklet put: #(author howpublished address month year note key), self extendedFieldKeys;
		at: #conference put: #(editor pages organization publisher address month note key), self extendedFieldKeys;
		at: #inbook put: #(volume series address edition month note key), self extendedFieldKeys;
		at: #incollection put: #(editor pages organization publisher address month note key), self extendedFieldKeys;
		at: #inproceedings put: #(editor series pages organization publisher address month note key), self extendedFieldKeys;
		at: #manual put: #(author, organization, address, edition, month, year, note, key), self extendedFieldKeys;
		at: #mastersthesis put: #(address month note key), self extendedFieldKeys;
		at: #misc put: #(author title howpublished month year note key), self extendedFieldKeys;
		at: #phdthesis put: #(aaddress month note key), self extendedFieldKeys;
		at: #proceedings put: #(editor publisher organization address month note key), self extendedFieldKeys;
		at: #techreport put: #(type number address month note key), self extendedFieldKeys;
		at: #unpublished put: #(month year key), self extendedFieldKeys
		
	