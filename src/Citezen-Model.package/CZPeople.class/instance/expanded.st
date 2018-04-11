accessing
expanded
	self people.
	(expandOption = self class displayNormalizedName) ifTrue: [ ^ self normalizedName ].
	(expandOption = self class displayFullName) ifTrue: [ ^ self fullName ].
	^ self shortenedName