initialization
testConvertTechReport

| techreport |

techreport := (CZEntryConverter new convert: techreportEntry).
	self assert: techreport class equals: CZTechReport.
	self assert: techreport author equals: techreportEntry author.
	self assert: techreport annote equals: techreportEntry annote.
	self assert: techreport inria equals: techreportEntry inria.
	self assert: techreport institution equals: techreportEntry institution.
	self assert: techreport title equals: techreportEntry title.
	self assert: techreport year equals: techreportEntry year.
	self assert: techreport keywords equals: techreportEntry keywords.
	self assert: techreport url equals: techreportEntry url.
	
	

	
	

	
	