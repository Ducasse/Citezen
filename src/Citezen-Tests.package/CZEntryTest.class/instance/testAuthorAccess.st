tests
testAuthorAccess
	"self debug: #testAuthorAccess"

	self assert: dirty author class = CZField.
	self assert: dirty author valueClass = CZPeople.
	self assert: dirty author rawValueObject class = CZPeople.
	self assert: dirty author rawValue class = ByteString