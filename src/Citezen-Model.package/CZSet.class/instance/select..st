arranging - combining
select: aBlock
	^ self class new
		setEntries: (self entries select: aBlock)