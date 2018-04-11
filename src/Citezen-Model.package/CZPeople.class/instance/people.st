accessing
people 
	^ people ifNil: [ people := CZAuthorParser parse: value ].
	