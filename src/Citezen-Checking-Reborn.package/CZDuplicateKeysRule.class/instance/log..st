validation
log: key

	| message log |
	message := ('"', key, '"', ' entry key is duplicated').
	log := CZWarning of: message.
	logs add: log.