conditions
condition: aCZEntry
	^ (aCZEntry hasField: #annote)
		ifFalse: [ false ]
		ifTrue: [ #(master internationalconference nationalconference topconference internationaljournal nationaljournal shortpaper internationalworkshop nationalworkshop lectures book tooldemo notrefereed technicalreport report workshopproceedings tutorial insubmission presentation) includes: (aCZEntry at: #annote) rawValue ]