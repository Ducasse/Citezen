accessing
macroReferences
	"returns all fields of this entry that have a macro as value"
	^ fields select: [:each | each rawValue isSymbol]