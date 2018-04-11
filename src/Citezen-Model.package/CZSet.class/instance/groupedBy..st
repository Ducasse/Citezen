arranging - combining
groupedBy: aBlock 
	| result |
	result := Dictionary new.
	self 
		do: [:each | (result at: (aBlock value: each) ifAbsentPut: CZSet new) addEntry: each].
	^ result