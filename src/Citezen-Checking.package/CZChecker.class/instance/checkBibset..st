interface
checkBibset: aCZSet
	macros := OrderedCollection new.
	macrosUsage := Dictionary new.
	entries := OrderedCollection new.
	errorStream := WriteStream on: String new.

	macros addAll: aCZSet macros.
	entries addAll: aCZSet entries.

	^ self checks
