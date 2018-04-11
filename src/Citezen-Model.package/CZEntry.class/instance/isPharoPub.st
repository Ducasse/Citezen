team utils
isPharoPub
	
	| keys |
	keys := (self at: #keywords) value.
	^ '*Pharo*' match: keys