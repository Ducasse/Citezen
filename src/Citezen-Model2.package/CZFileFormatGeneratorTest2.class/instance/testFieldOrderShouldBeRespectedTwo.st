setUp
testFieldOrderShouldBeRespectedTwo
	"self debug: #testFieldOrderShouldBeRespectedTwo"
	
	| visitor |
	visitor := self generatorClass new.
	visitor fieldOrder: #(#title #author #year).
	visitor visit: entry2.
	
	self 
		assert: visitor contents trimBoth equals:
 'Package Reference Fingerprint: a Rich and Compact Visualization to Understand Package Relationships, Abdeen, Hani and Alloui, Ilham and Ducasse, St\''ephane and Pollet, Damien and Suen, Mathieu, 2008, ACT, aeres08, internationalconference stefPub, European Conference on Software Maintenance and Reengineering (CSMR), ADAM, moose-pub, Athens, Greece, Acceptance rate: 24/87 = 27\%, 87, 24, 213--222, IEEE Computer Society Press, 27%, oui, http://scg.unibe.ch/archive/external/Abde08a.pdf, http://scg.unibe.ch/archive/external/Abde08a.pdf.' trimBoth