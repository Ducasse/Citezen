accessing
size 
	
	| totalSize |
	totalSize := 0.
	logs do: [ :log | totalSize := totalSize + (log size) ].
	^ totalSize