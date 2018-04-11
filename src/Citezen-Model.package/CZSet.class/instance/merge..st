arranging - combining
merge: aCZSet
	"Merge aCZSet into the receiver, replacing macros or entries."
	aCZSet macros do: [:each | self macroAt: each key put: each].
	aCZSet entries do: [:each | self entryAt: each key put: each]