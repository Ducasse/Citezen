initialization
testConvertInProceedings

| inproceedings |

	inproceedings := (CZEntryConverter new convert: inproceedingsEntry).
	self assert: inproceedings class equals: CZInProceedings .
	self assert: inproceedings author equals: inproceedingsEntry author.
	self assert: inproceedings title equals: inproceedingsEntry title.
	self assert: inproceedings booktitle equals: inproceedingsEntry booktitle.
	self assert: inproceedings publisher equals: inproceedingsEntry publisher.
	self assert: inproceedings month equals: inproceedingsEntry month.
	self assert: inproceedings year equals: inproceedingsEntry year.
	self assert: inproceedings keywords equals: inproceedingsEntry keywords.
	self assert: inproceedings annote equals: inproceedingsEntry annote.


	
	

	
	

	
	