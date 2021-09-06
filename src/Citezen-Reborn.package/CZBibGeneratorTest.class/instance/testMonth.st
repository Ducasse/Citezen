tests
testMonth
	"self debug: #testMonth"

	| result entry |
	entry := CZBibParser parse: '@article{Abde14a,
	Annote = {internationaljournal},
	Author = {Hani Abdeen and St\''ephane Ducasse and Damien Pollet and Ilham Alloui and Jean-R\''emy Falleri},
	Hal-Id = {hal-00957695},
	Impactfactor = {5-Year ISI impact factor (2010) 4.865},
	Journal = {Science of Computer Programming},
	Keywords = {lse-pub StefPub kzVisualization},
	Month = feb,
	Title = {The Package Blueprint: Visually analyzing and quantifying packages dependencies},
	Url = {http://rmod.inria.fr/archives/papers/Abde14a-Official-PackageBlueprint-SCP.pdf},
	Year = {2014}}'.
	result := (self generatorClass new visit: entry) contents.
 	self assert: result trimBoth withInternalLineEndings equals: 
 '@article{Abde14a,
  author = {Hani Abdeen and St\''ephane Ducasse and Damien Pollet and Ilham Alloui and Jean-R\''emy Falleri},
  title = {The Package Blueprint: Visually analyzing and quantifying packages dependencies},
  journal = {Science of Computer Programming},
  year = {2014},
  impactfactor = {5-Year ISI impact factor (2010) 4.865},
  url = {http://rmod.inria.fr/archives/papers/Abde14a-Official-PackageBlueprint-SCP.pdf},
  annote = {internationaljournal},
  hal-id = {hal-00957695},
  keywords = {lse-pub StefPub kzVisualization},
  month = feb}' withInternalLineEndings