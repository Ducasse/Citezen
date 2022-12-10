as yet unclassified
logField: aField of: anEntry

	| message log |
	message := ('"', aField key, '"', ' of entry "', anEntry key, '" is empty').
	log := CZWarning of: message.
	logs add: log.