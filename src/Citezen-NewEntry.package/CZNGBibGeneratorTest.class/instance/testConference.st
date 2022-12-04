tests
testConference
	"self debug: #testBibOfDuca10a"
 
	| result  |
	result := self generatorClass new visit: self Conference0;  contents.
 	self assert: result equals: '@conference{Conference0,
  author = {St\''ephane Ducasse and Damien Pollet},
  title = {OOP},
  booktitle = {booktitle of Information System},
  year = {2010}}

'
