querying
formatFor: aField
	"Return a phrase representing the value of this field."
	| selector |
	selector := (aField key copyWith: $:) asSymbol.
	^ ((self class allSelectorsInProtocol: 'formats-fields') includes: selector)
		ifTrue: [self perform: selector with: aField]
		ifFalse: [self defaultFormat: aField]