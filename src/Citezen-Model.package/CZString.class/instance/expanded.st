accessing
expanded
	^ value asString reject: [ :each | each = ${ or: [ each = $} ] ]