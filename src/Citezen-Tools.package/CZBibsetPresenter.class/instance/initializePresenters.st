initialization
initializePresenters

	spEntry := self instantiate: CZEntryPresenter.

	lstEntries := self newList.
	lstEntries
		displayIcon: [ :entry | self iconForEntry: entry ];
		whenSelectionChangedDo: [ :selection | selection isEmpty ifFalse: [ self showEntry: selection ] ].
	lblEntries := self newLabel.
	lblEntries label: '0 entry'