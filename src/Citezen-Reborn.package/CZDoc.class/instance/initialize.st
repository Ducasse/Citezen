initialization
initialize

	super initialize.
	elements := OrderedCollection new.
	self title: self defaultTitle.
	
	"not cool to define a footer for nothing but like that the visitor can walk 
	without tests"
	footer := CZFooter new.
	header := CZHeader new
	