visiting
visitEntry: anEntry

	| fields fieldKeys |
	(anEntry hasFieldWithKey: Author) ifFalse: [ ^ self ].
	"we do not support non authored entry since the bibitem key is based on author."
	fields := anEntry fieldsFilteredAndSortedAccordingTo: fieldOrder allButFirst.
	
	fieldKeys := fields collect: [ :each | each key ].

	"remove authors because it is for the \bibitem and treated in EntryHeader"
	"default fields do not include "
	self emitEntryHeader: anEntry.
	self newblock.
	fields
		do: [ :each | each acceptVisitor: self ]
		separatedBy: [ self emitFieldSeparation ].
	self line.

	"if the doi or the hal id was not in the sorted list then add them at the end 
	but only in this case."
	"this logic is too complex."

	"(((anEntry hasFieldWithKey: DOI) or: [ 
		  anEntry hasFieldWithKey: HALID ]) and: [ 
		 (fieldKeys includesAll: { 
				  DOI.
				  HALID }) not ]) ifTrue: [ 
		self newblock.
		(anEntry fieldsFilteredAndSortedAccordingTo: self doiAndHalFields)
			do: [ :each | each acceptVisitor: self ]
			separatedBy: [ self emitFieldSeparation ] ]."
	self emitEntryFooter: anEntry