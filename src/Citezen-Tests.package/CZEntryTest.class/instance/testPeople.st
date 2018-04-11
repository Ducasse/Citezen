tests
testPeople
	"self debug: #testPeople"

	self assert: dirty author rawValueObject people class = OrderedCollection.
	self assert: dirty author rawValueObject people first class = CZAuthor.