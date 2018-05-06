public api
build
	"Build the current document: filter entities that not desirable and build the document body."
	
	self filter.
	self buildBody.