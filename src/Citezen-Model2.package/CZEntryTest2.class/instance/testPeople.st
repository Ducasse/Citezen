tests
testPeople
	"self debug: #testPeople"

	self assert: dirty author rawValueObject people class equals: OrderedCollection.
	self assert: dirty author rawValueObject people first class equals: CZAuthor.