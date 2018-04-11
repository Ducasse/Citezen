instance creation
rules: anAssociationCollection
	|instance|
	instance := self new.
	anAssociationCollection do: [:each |
		instance add: each value condition: each key].
	^ instance