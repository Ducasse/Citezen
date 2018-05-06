generate
bodySpecification

	^ bodySpecification ifNil: [ bodySpecification := self defaultSpecification ]