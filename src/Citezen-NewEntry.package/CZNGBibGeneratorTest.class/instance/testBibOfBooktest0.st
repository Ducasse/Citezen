tests
testBibOfBooktest0
	"self debug: #testBibOfDuca10a"
 
	| result  |
	result := self generatorClass new visit: self Booktest0;  contents.
 	self assert: result equals: '@book{Booktest0,
  author = {St\''ephane Ducasse and Damien Pollet},
  title = {OOP},
  publisher = {Publisher of Information System},
  year = {2018}}

'
