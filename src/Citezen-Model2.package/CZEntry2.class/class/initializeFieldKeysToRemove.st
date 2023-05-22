initialization
initializeFieldKeysToRemove
	"When cleaning an entry, we remove the following fields"
	
	self fieldKeysToRemove: #(#'date-added' #'date-modified' #selectif #aeresstatus #'bdsk-url-1' #'bdsk-url-2' #inria #aeres)