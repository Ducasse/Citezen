visiting
visitEntry: anEntry
	| fields |
	(anEntry hasFieldWithKey: Author)
		ifFalse: [ ^ self ].
	"we do not support non authored entry since the bibitem key is based on author."		
	fields := anEntry fieldsFilteredAndSortedAccordingTo: fieldOrder allButFirst.
	"remove authors because it is for the \bibitem and treated in EntryHeader"
	"default fields do not include "
	self emitEntryHeader: anEntry.
	self newblock.
	fields 
		do: [ :each | each acceptVisitor: self ] 
		separatedBy: [ self emitFieldSeparation ].
	self line.
	((anEntry hasFieldWithKey: DOI) or: [(anEntry hasFieldWithKey: HALID)])
		ifTrue: [  
			self newblock.
			(anEntry fieldsFilteredAndSortedAccordingTo: self doiAndHalFields)
					do: [ :each | each acceptVisitor: self ] 
					separatedBy: [ self emitFieldSeparation ] ].
	self emitEntryFooter: anEntry