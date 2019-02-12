tests
testAuthorAccess
	"self debug: #testAuthorAccess"

	self assert: dirty author class equals: CZField.
	self assert: dirty author valueClass equals: CZPeople.
	self assert: dirty author rawValueObject class equals: CZPeople.
	self assert: dirty author rawValue class equals: ByteString