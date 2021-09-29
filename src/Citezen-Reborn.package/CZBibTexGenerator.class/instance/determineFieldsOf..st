configuration
determineFieldsOf: anEntry
	"Return the fields list according to field order. By default the fields are just sorted
	and not filtered but each subclass may want to customize to filter out noise."
	"the setup is garbage in garbage out.... for the moment this is better than removing fields. see the class comments."
	^ anEntry fieldsSortedAccordingTo: fieldOrder