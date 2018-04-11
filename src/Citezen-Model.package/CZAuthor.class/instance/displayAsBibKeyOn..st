displaying
displayAsBibKeyOn: aStream
	"Uquillas Gomez -> uquillasgomez"
	"B\'era -> bera"
	self lastNames
		do: [:lastName | aStream nextPutAll: (self cleanForBibKey: lastName)]
