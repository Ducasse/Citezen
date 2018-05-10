public api
bibset: aBibSet
	"We copy the original to be sure that we can always refer to it, even if we destructively change the working set."
	originalBibSet := aBibSet.
	aBibSet scope: CZSet standardDefinitions.
	workingBibSet := aBibSet copy