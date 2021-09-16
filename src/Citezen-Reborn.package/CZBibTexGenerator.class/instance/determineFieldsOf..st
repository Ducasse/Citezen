configuration
determineFieldsOf: anEntry
	"Return the fields list according to field order. By default the fields are just sorted
	and not filtered but each subclass may want to customize to filter out noise."

	^ anEntry fieldsFilteredAndSortedAccordingTo: fieldOrder