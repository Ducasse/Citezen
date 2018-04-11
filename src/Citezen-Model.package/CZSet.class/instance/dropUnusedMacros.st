cleanup
dropUnusedMacros
	| toKeep |
	toKeep := self referencedMacros.
	macros := macros select: [:each | toKeep includes: each key]