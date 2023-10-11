tests
testBibOfDuca10a
	"self debug: #testBibOfDuca10a"
 
	| result  |
	result := self generatorClass new visit: self Duca10a;  contents.
 	self assert: result equals: '@article{Duca10a,
  author = {St\''ephane Ducasse and Damien Pollet},
  title = {Fingerprints},
  journal = {Journal of Information System},
  year = {2010}}

'
