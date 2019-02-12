tests
testIsWrittenByRModMember
	| entry |
	entry := (CZBibParser parse: '@misc{key, author={Ducasse, Stephane}}') entries at: 1.
	self assert: (CZChecker isWrittenByRModMember: entry).
	entry := (CZBibParser parse: '@misc{key, author={The, Cat}}') entries at: 1.
	self deny: (CZChecker isWrittenByRModMember: entry)