validation
logEntryKey: anEntryKey

	| message log |
	message := ('"', anEntryKey, '"', ' entry key is duplicated').
	log := CZWarning of: message.
	logs add: log.