actions
merge: fileName
    |fileSaver withoutDuplications duplicateIdentifier listDoublon affichage  |
    inputFiles do: [:each | self load: each].
	 withoutDuplications := CZSet new.
  	 listDoublon := Set new.  
	 fileSaver := CZFileSaver new.
	 bibset do: [:each | 
				(withoutDuplications anySatisfy: [:ent | (ent at: #title) value = (each at: #title) value])
					ifFalse: [withoutDuplications addEntry: each]
					ifTrue: [ listDoublon add: (each key value)]
					].
	 affichage := 'Vous avez ', (listDoublon size asString), ' doublon(s) qui ont comme clef : ', (listDoublon asString).
	
	 affichage asMorph openInWindow.
    fileSaver bibset: bibset ; saveTo: fileName