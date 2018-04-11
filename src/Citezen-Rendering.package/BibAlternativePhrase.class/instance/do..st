accessing
do: aBlock
	^ rules do: [:each | aBlock value: each value]