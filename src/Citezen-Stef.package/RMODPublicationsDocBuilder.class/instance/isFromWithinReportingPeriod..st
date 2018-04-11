testing
isFromWithinReportingPeriod: anIntegerRepresentingAYear
	"we could check also and remove too recent paper - but inria is fuzzy about that"
	^  anIntegerRepresentingAYear between: startingYear and: endingYear  