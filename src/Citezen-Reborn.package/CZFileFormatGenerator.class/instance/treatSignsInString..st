string encoding hooks
treatSignsInString: aString
	"By default do nothing because subclasses may apply way to handle strange characters such as _ \ and others. For example for latex _ is a special character for pillar too."

	^ aString