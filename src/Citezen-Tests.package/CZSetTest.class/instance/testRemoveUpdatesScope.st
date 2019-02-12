testing
testRemoveUpdatesScope
	| otherSet entry |
	otherSet := CZSet new.
	entry := (CZEntry type: CZEntry article) key: #toBeMovedToOtherSet.
	bibset addEntry: entry.
	entry moveToBibSet: otherSet.
	self deny: (bibset entries includes: entry).
	self assert: (otherSet entries includes: entry).
	self assert: entry scope equals: otherSet