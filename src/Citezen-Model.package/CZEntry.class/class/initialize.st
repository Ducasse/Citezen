metadata
initialize
	"self initialize"
			
	optionalFieldsDictionary := Dictionary new.
	
	optionalFieldsDictionary 
		at: #article put: #(volume number pages month note key),self inriaFields;
		at: #book put: #(volume series address edition month note key),self inriaFields;
		at: #booklet put: #(author howpublished address month year note key),self inriaFields;
		at: #conference put: #(editor pages organization publisher address month note key),self inriaFields;
		at: #inbook put: #(volume series address edition month note key),self inriaFields;
		at: #incollection put: #(editor pages organization publisher address month note key),self inriaFields;
		at: #inproceedings put: #(editor series pages organization publisher address month note key),self inriaFields;
		at: #manual put: #(author, organization, address, edition, month, year, note, key),self inriaFields;
		at: #mastersthesis put: #(address month note key),self inriaFields;
		at: #misc put: #(author title howpublished month year note key),self inriaFields;
		at: #phdthesis put: #(aaddress month note key),self inriaFields;
		at: #proceedings put: #(editor publisher organization address month note key),self inriaFields;
		at: #techreport put: #(type number address month note key),self inriaFields;
		at: #unpublished put: #(month year key),self inriaFields
		
	