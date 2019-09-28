building
addSectionFromQuery: aQuery withTitle: aString
	"Adding a section just add a section and a list of entries following it.
	By default, empty sections are not created and entries are sorted to get more recent on the top. Pay attention that the items of a section are a new group of items. "

	| entries |
	entries := workingBibSet select: aQuery.
	noEmptySection & entries size isZero
		ifTrue: [ ^ self ].
	entries sortByDateReverse.
	self addEntitledSection: aString withBibEntries: entries