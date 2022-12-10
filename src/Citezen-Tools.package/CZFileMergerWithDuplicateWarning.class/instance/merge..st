actions
merge: fileName
   |duplicateIdentifier stream listDoublon|
   inputFiles do: [:each | self load: each].
   listDoublon := CZSet new.
	stream := WriteStream on: ByteString new.
	duplicateIdentifier := CZDuplicateIdentifier new.
   listDoublon := duplicateIdentifier listOfDuplicatesKey: bibset.
	(listDoublon entries) printElementsOn: stream.
    
	('Vous avez ', (listDoublon size asString), ' doublon(s) qui ont comme clef : ', (stream contents)) asMorph openInWindow.
    
	bibset addEntry: ((CZEntry type:'COMMENT')
                key: #Comment;
                at: #comment put: 'Dupplication';
                at: #number_Of_Dupplication put: listDoublon size;
                at: #Key_Of_Dupplication_Item put: stream contents).
    
	 CZFileSaver new bibset: bibset ; saveTo: fileName