displaying
displayCompactLastNamesOn: aStream
	"Uquillas Gomez -> UquillasGomez"
	self lastNames
		do: [:lastName | aStream nextPutAll: lastName]
