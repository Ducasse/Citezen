instance creation
fromDeclarations: declarations
	|instance|
	instance := self new.
	declarations do: [:each | each addToBibSet: instance].
	^ instance