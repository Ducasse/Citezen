public api
build
	"Build the current document: i.e., add a document header and footer, filter entities that not desirable and build the document body."
	
	self addHeader.
	super build.
	self addFooter