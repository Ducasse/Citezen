instance creation
initializeValueClasses
	valueClasses := Dictionary new.
	CZValue withAllSubclassesDo:
		[:each | each fieldsOfThisFormat do:
			[:field | valueClasses at: field put: each ]].
	^ valueClasses