instance creation
monthMappings
	"monthMappings := nil"
	^ monthMappings ifNil: [monthMappings := Dictionary newFromPairs: #(jan January feb February mar March apr April may May jun June jul July aug August sep September oct October nov November dec December)]