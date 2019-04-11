visiting
determineFieldsOf: anEntry
	"We only return allowed fields"
	^ anEntry fieldsFilteredAndSortedAccordingTo: fieldOrder