building
addSectionFromQuery: aQuery withTitle: aString
	"Adding a section just add a section and a list of entries following it.
	By default, empty sections are not created and entries are sorted to get more recent on the top. Pay attention that the items of a section are a new group of items. "

	| entries |
	aString = 'Editor' ifTrue: [ self halt. ].
	entries := workingBibSet select: aQuery.	[:each | each key  = 'Lanz02b' ifTrue: [self halt]. aQuery value: each].
	noEmptySection & entries size isZero
		ifTrue: [ ^ self ].
	entries sortByDateReverse.
	self addEntitledSection: aString withBibEntries: entries