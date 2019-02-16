setUp
testFieldOrderShouldBeRespected
	"self debug: #testFieldOrderShouldBeRespected"
	
	| visitor |
	visitor := self generatorClass new.
	visitor fieldOrder: #(author #title).
	visitor visit: entry.
	
	self 
		assert: visitor contents trimBoth 
	equals: 
 'Ducasse, St\''ephane and Pollet, Damien, Fingerprints, Journal of Information System, 2010.' trimBoth