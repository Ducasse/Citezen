visit
visitField: aField
	"this is not good since it shortcuts the visitString: ... we will see later
	in particular for document like section we do not want to generate CZString for now.
	may be we should."
	
	self outputStream nextPutAll: aField value asString
	