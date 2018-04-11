scanning
any
	| tokenId |
	self halt.
	outputStream contents = '\' ifTrue: [
		#('citation' 'bibcite' 'bibstyle' 'bibdata') do: [:keyword |
			(stream peekForAll: keyword)
				ifTrue: [
					tokenId := self perform: keyword , 'Id'.
					matchActions := Array with: tokenId.
					self createTokenFor: '\' , keyword.
					^ self]]].
	matchActions := Array with: self anyId.
	self createTokenFor: outputStream contents